import Html.App
import Html

main =
  Html.App.program
  { init = ("Hello World", Cmd.none)
  , update = (\_ model -> (model, Cmd.none))
  , view = (\model -> Html.text model)
  , subscriptions = (\model -> Sub.none)
  }
