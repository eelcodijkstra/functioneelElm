import List exposing (take, drop, length, reverse, minimum, maximum, sort, map, head, tail)
import Maybe exposing (withDefault)

data = [7,3,8,6,8,5,4,5,3,6,2,6,9,1,2,7,5,8,7,6]

sortData = List.sort data

first : List Float -> Float
first lst = 0

first [1,2,3,4,5]

kleinste = first sortData

last : List Float -> Float
last lst = 0

last [1,2]

grootste = last sortData

take 2 [1,2,3,4]

drop 2 [1,2,3,4]

((last (take 2 [1,2,3,4])) + (first (drop 2 [1,2,3,4]))) / 2

4 // 2

5 // 2

modBy 2 4

modBy 2 5

median : List Float -> Float
median lst = 0

median [1,2,3,4]

median [1,2,3,4,5]

median []

median [1]

mediaan = median sortData

q1 : List Float -> Float
q1 lst = 0

q1 [1,2,3,4,5]

kwartiel1 = q1 sortData

q3 : List Float -> Float
q3 lst = 0

q3 [1,2,3,4]

kwartiel3 = q3 sortData

[kleinste, kwartiel1, mediaan, kwartiel3, grootste]

boxplotdata lst =
  let sortlst = sort lst
  in
    [first sortlst, q1 sortlst, median sortlst, q3 sortlst, last sortlst]

boxplotdata [1,2,3,4,5]

boxplotdata [7,3,8,6,8,5,4,5,3,6,2,6,9,1,2,7,5,8,7,6]
