import List exposing (length, map, range)

expect : a -> a -> String
expect tst res =
  if tst == res then "OK" else "Fail"

pow : Float -> Int -> Float
pow x m = 0    -- vervang door je eigen definitie

expect (pow 2 3) 8

expect (pow 2 0) 1

expect (pow -1 2) 1

poly : List Float -> Float -> Float
poly coefs x = 0 -- vervang door je eigen definitie

poly [1,1,1] 3

expect (poly [1,1,1] 2) 7

expect (poly [1,0,-2] 3) 7

expect (poly [1,2,3,4] 3) 58

poly111 = poly [1,1,1]

poly111 2

numbers = map toFloat (range 0 10)

map poly111 numbers

(+)

succ = (+) 1

succ 3

poly111map = map poly111

poly111map numbers
