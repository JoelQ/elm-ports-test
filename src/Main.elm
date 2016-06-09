import Html.App

import App.View exposing (view)
import App.Update exposing (init, update)


main =
  Html.App.program
  { init = init
  , update = update
  , view = view
  , subscriptions = (\model -> Sub.none)
  }
