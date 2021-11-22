List.range 1 9

[ 3 , 5 , 6 , 8 ]

[ "abra" , "ca" , "dabra" ]

[ "abra" , 5 , "dabra" ]

[]

42 :: (List.range 1 9)

83 :: 42 :: (List.range 1 9)

List.head (83 :: 42 :: (List.range 1 9))

List.head ([ "abra" , "ca" , "dabra" ])

List.tail (83 :: 42 :: (List.range 1 9))

List.tail ([ "abra" , "ca" , "dabra" ])

telTweeOpBij x = x + 2

List.map telTweeOpBij (List.range 1 9)

List.map ( \x -> x + 2 ) (List.range 1 9)

(List.range 1 9) |>  List.map ( \x -> x + 2 )

List.map ( \x -> x * x ) ( List.range 1 30 )

List.filter ( \x -> x > 5) (List.range 1 30)

( \x -> ( modBy x 2 == 0 ) ) 15

( \x -> ( modBy x 2 == 0 ) ) 14

isEven x = modBy x 2 == 0

isEven 15

isOdd x = not ( isEven x )

isOdd 15









\x -> (\y -> x+y)

List.foldl ( \x -> (\y -> x + y )) 0 (List.range 1 100)

telAllesOp = List.foldl ( \x -> (\y -> x + y )) 0

telAllesOp [42,512,4096]







List.foldr ( \x -> (\y -> x + y )) 0 (List.range 1 100)

List.foldr ( \x -> (\y -> x ++ y )) "X" [ "a", "b", "c" ]

List.foldl ( \x -> (\y -> x ++ y )) "X" [ "a", "b", "c" ]


