>module Language.Haskell.Her.FromClutterToLines where

>import Language.Haskell.Her.HaLay
>import Data.List.Split

> -- | When we get the tokss from her-parser's ready, they're a bit cluttered.  I'm not sure what Dr. McBride had in mind when he made that mess.  But this doesn't mater, from this clutter we can create a list of lines which is aware of haskell's brackets.  If a multi-line clause is inside brackets, then we keep the whole section in the same "line".

>fromClutterToLines :: [[Tok]] -> [[Tok]]
>fromClutterToLines tokss =
> split (keepDelimsL $
>        whenElt
>         (\a ->
>          case a of
>           NL _ -> True
>           _ -> False))
>       $ (NL (" ",0)) : concat tokss
