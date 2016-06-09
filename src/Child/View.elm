module Child.View exposing (view)

import Html exposing (..)
import Child.Model exposing (Model)

view : Model -> Html a
view model =
  div [] [ text model.value ]

