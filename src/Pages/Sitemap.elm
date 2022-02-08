module Pages.Sitemap exposing (view)

import Common.Header exposing (viewHeader)
import Gen.Route as Route
import Html exposing (Html, a, div, h1, li, main_, text, ul)
import Html.Attributes as Attr
import View exposing (View)


view : View msg
view =
    { title = "Sitemap"
    , body = [ viewHeader "sitemap"
             , viewMain
             ]
    }

viewMain: Html msg
viewMain =
    main_ []
        [ div
            [ Attr.class "container"
            ]
            [ h1
                [ Attr.id "sitemap"
                ]
                [ text "Sitemap" ]
            , ul []
                [ li []
                    [ a
                        [ Attr.href (Route.toHref Route.Home_)
                        ]
                        [ text "Home" ]
                    ]
                , li []
                    [ a
                        [ Attr.href (Route.toHref Route.Contact)
                        ]
                        [ text "Contact & Accounts" ]
                    , text "- A list of my accounts across the internet and where to contact me" ]
                , li []
                    [ a
                        [ Attr.href (Route.toHref Route.Verify)
                        ]
                        [ text "Verify" ]
                    , text "- A collection of third-party onion links, public keys and signatures" ]
                ]
            ]
        ]