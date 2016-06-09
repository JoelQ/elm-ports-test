module App.View exposing(view)

import Parent.View as Parent
import Parent.Model exposing (Model)
import Parent.Update
import Html exposing(..)

view : Model -> Html Parent.Update.Msg
view model =
  main'
  []
  [ headerView
  , Parent.view model
  , footerView
  ]

headerView : Html a
headerView =
  header [] [ h1 [] [ text "Header" ] ]

footerView : Html a
footerView =
  footer [] [ small []  [text "Footer" ] ]
