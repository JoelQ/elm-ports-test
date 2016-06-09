module Child.View exposing (view)

import Html exposing (..)
import Html.Events exposing (onClick)
import Child.Model exposing (Model)
import Child.Update exposing(Msg(..))

view : Model -> Html Msg
view model =
  div [ onClick (Selected model.value) ] [ text model.value ]

