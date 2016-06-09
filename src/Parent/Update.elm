module Parent.Update exposing (Msg(..), update)

import Parent.Model exposing (Model)
import Child.Update as Child

type Msg = Noop | ChildMessages Child.Msg

update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  case msg of
    Noop -> (model, Cmd.none)
    ChildMessages childMsg -> delegateToChild childMsg model

delegateToChild : Child.Msg -> Model -> (Model, Cmd Msg)
delegateToChild msg model =
  let (child, cmd) = Child.update msg model.child
      model' = { model | child = child }
      cmd' = Cmd.map ChildMessages cmd
  in
     (model', cmd')
