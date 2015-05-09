import           Data.Functor
import           Data.Monoid
import           Text.Pandoc.Builder
import           Text.Pandoc.JSON

main :: IO ()
main = toJSONFilter include

include :: Block -> IO Block
include cb@(CodeBlock (identity, classes, namevals) _) =
    case lookup "include" namevals of
     Just f  -> CodeBlock (identity, classes, [("caption", escape f)]) <$> readFile f
     Nothing -> return cb
  where escape name = foldr (\s a -> (if elem s special then ['\\', s] else [s]) <> a) "" name
        special = "_"
include x = return x
