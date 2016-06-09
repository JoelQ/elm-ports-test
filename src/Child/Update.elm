port module Child.Update exposing (Msg(..), update)

import Child.Model exposing(Model)

type Msg = Noop | Selected String

port cKEditor : String -> Cmd a

update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  case msg of
    Noop -> (model, Cmd.none)
    Selected str -> (model, cKEditor str)
