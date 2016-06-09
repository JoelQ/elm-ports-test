module App.Update exposing (init, update)

import Parent.Update
import Parent.Model as Parent
import Child.Model as Child

update = Parent.Update.update

init : (Parent.Model, Cmd Parent.Update.Msg)
init =
  let child = Child.Model "hello world"
      parent = Parent.Model child
  in
     (parent, Cmd.none)
