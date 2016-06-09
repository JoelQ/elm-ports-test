module Parent.Model exposing (Model)

import Child.Model as Child

type alias Model = {
  child: Child.Model
}
