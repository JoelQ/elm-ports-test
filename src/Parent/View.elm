module Parent.View exposing (view)

import Html exposing (..)
import Html.App
import Child.View as Child
import Parent.Model exposing (Model)
import Parent.Update exposing (Msg(..))

view : Model -> Html Msg
view model =
  div [] [ Html.App.map ChildMessages (Child.view model.child) ]

