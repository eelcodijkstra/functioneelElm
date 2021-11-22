import Html exposing (text, div, input, Attribute)
import Browser exposing (sandbox)
import Html.Events exposing (on, keyCode, onInput)
import Html.Attributes exposing(..)
import String exposing(split, fromFloat)
import List exposing (..)
import Maybe
import Svg exposing (..)
import Svg.Attributes exposing (..)

stringsToFloats : List String -> List Float
stringsToFloats ls =
    List.map (\s -> Maybe.withDefault 0 (String.toFloat s)) ls

main = Browser.sandbox { init = init, update = update, view = view }

type alias Model = { content : String }

init : Model
init = { content = "" }

type Msg 
  = Change String

update : Msg -> Model -> Model
update msg model =
  case msg of
    Change newContent ->
        { model | content = newContent }

view model =
  let
    coefs = stringsToFloats (split "," model.content)
    tuples = funcTuples (poly coefs) -100 100 1
    funcPoints = tuplesToPoints tuples
  in 
    div []
     [ input [ placeholder "numbers separated by ,", value model.content, onInput Change ] []
     , svg [ viewBox "0 0 200 200", Svg.Attributes.width "400px" ]
       [ g [ transform "translate(100, 100) scale(1,-1)" ]
           [ polyline [ fill "none", stroke "black", points "0,-100 0,100"] []
           , polyline [ fill "none", stroke "black", points "-100,0 100,0"] [] 
           , polyline [ fill "none", stroke "red", points funcPoints ] []
           ]
       ]
     ]
    
-- insert your code here

poly : List Float -> Float -> Float
poly coefs x = 0

funcTuples : (Float -> Float) -> Float -> Float -> Float -> List (Float, Float)
funcTuples f start stop step = []

tuplesToPoints : List (Float, Float) -> String
tuplesToPoints tuples = ""

-- compile-code


