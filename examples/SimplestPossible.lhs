>import HaLay
>import System.IO

Here is some source code.

>source = "import System.IO\nmain :: IO()\nmain = putStrLn \"Hello world!\"\n"

Here we lex our source code, such that we have a [[Tok]].

>tokss :: [[Tok]]
>tokss = ready "" source

And here we make those Tok s back into Haskell source code again.

>unTokss :: String
>unTokss = tokssOut tokss

And here we show you this data for your viewing pleasure.

>main :: IO()
>main = do
> putStrLn "Our origional source was:"
> putStrLn source
> putStrLn "But then we lexed that into a list of a list of Toks:"
> putStrLn $ show tokss
> putStrLn "And then we converted that back to Haskell source code:"
> putStrLn unTokss
