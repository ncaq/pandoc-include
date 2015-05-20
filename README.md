# pandoc-include

It is pandoc filter script.

It include source code from external file for CodeBlock.

# How to use

Build by cabal.

~~~
pandoc --filter=pandoc-include
~~~

```md
~~~ {include="example.hs"}
~~~
```

# Authors

pandoc-include
Copyright (C) 2015 ncaq
This program is GPLv2 or any later version.
See COPYRIGHT for full copyright.
