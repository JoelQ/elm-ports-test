module Parent.View exposing (view)

import Html exposing (..)
import Child.View as Child
import Parent.Model exposing (Model)

view : Model -> Html a
view model =
  div
    []
    (List.map Child.view model.children)

