module Common.NavBar exposing (viewNavBar)

import Gen.Route as Route
import Html exposing (Html, a, div, li, nav, text, ul)
import Html.Attributes as Attr

viewNavBar: String -> Html msg
viewNavBar page =
    nav
        [ Attr.class "navbar"
        ]
        [ div
            [ Attr.class "container"
            ]
            [ ul
                [ Attr.class "navbar-nav no-list-decoration"
                ]
                [ li []
                    [ a
                        [ if page /= "index" then
                            Attr.class "text-decoration-none navbar-brand"
                         else
                            Attr.class "text-decoration-none navbar-brand hidden"
                        , Attr.href (Route.toHref Route.Home_)
                        ]
                        [ text "Nicolas Provencher" ]
                    ]
                , li []
                    [ a
                        [ if page == "index" then
                            Attr.class "text-decoration-none active"
                          else
                            Attr.class "text-decoration-none"
                        , Attr.href (Route.toHref Route.Home_)
                        ]
                        [ text "Home" ]
                    ]
                , li []
                    [ a
                        [ if page == "contact" then
                            Attr.class "text-decoration-none active"
                          else
                            Attr.class "text-decoration-none"
                        , Attr.href (Route.toHref Route.Contact)
                        ]
                        [ text "Contact" ]
                    ]
                , li []
                    [ a
                        [ if page == "sitemap" then
                            Attr.class "text-decoration-none active"
                          else
                            Attr.class "text-decoration-none"
                        , Attr.href (Route.toHref Route.Sitemap)
                        ]
                        [ text "More..." ]
                    ]
                ]
            ]
        ]