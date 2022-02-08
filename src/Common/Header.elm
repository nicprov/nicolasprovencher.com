module Common.Header exposing (viewHeader)

import Html exposing (Html, a, div, header, li, nav, text, ul)
import Html.Attributes as Attr
import Common.NavBar exposing (viewNavBar)


viewHeader: String -> Html msg
viewHeader page =
    header []
        [ viewNavBar page
        ]