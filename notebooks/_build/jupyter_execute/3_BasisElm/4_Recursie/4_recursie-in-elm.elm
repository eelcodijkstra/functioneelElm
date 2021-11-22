repeat n = if n > 0 then "I" ++ repeat (n-1) else ""

repeat 3

repeat 8

repeat 0

repeat -2

lengte list = 
  case list of
  []  ->  0 
  elt :: restOfList  -> ( 1 + (lengte restOfList) )

String.toList "abc"

import Dict

Dict.fromList [ ('a' , ".-") , ('b',"-...") , ('c', "-.-.") , ('e',".") , ('l',".-.."), ('m', "--")]

morseAlfabet = Dict.fromList [ ('a' , ".-") , ('b',"-...") , ('c', "-.-.") , ('e',".") , ('l',".-.."), ('m', "--")]

Dict.keys morseAlfabet

Dict.values morseAlfabet

Dict.get 'a' morseAlfabet

somEnProduct x y = ( x + y , x * y ) 

somEnProduct 3 4

fibo n = if n <= 2 then n - 1 else fibo(n-1) + fibo(n-2) 

fiboHelper (prev,next,n) = if n < 1 then prev else if n == 1 then next else fiboHelper(next,next+prev,n-1)

fibo n = fiboHelper(0,1,n) 
