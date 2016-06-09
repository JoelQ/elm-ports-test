module App.Update exposing (update, init)

import Parent.Model as Parent
import Child.Model as Child

type Msg = Noop

update : Msg -> Parent.Model -> (Parent.Model, Cmd Msg)
update msg model =
  case msg of
    Noop -> (model, Cmd.none)

init : (Parent.Model, Cmd Msg)
init =
  (Parent.Model [Child.Model "hello world"], Cmd.none)
