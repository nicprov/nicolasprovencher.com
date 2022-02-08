module Pages.Home_ exposing (view)

import Common.Header exposing (viewHeader)
import Gen.Route as Route
import Html exposing (Html, a, br, div, h1, li, main_, p, span, text, ul)
import Html.Attributes as Attr
import View exposing (View)


view : View msg
view =
    { title = "Index"
    , body = [ viewHeader "index"
             , viewMain
             ]
    }

viewMain: Html msg
viewMain =
    main_ []
        [ div
            [ Attr.class "container"
            ]
            [ div
                [ Attr.class "vertical-center"
                ]
                [ div
                    [ Attr.attribute "itemscope" ""
                    , Attr.attribute "itemtype" "http://schema.org/Person"
                    , Attr.class "h-card vcard"
                    ]
                    [ h1 []
                        [ span
                            [ Attr.id "name"
                            ]
                            [ a
                                [ Attr.itemprop "url"
                                , Attr.class "u-url u-uid name text-decoration-none"
                                , Attr.rel "me"
                                , Attr.href "https://nicolasprovencher.com/"
                                ]
                                [ span
                                    [ Attr.itemprop "name"
                                    , Attr.class "p-name fn"
                                    ]
                                    [ text "Nicolas Provencher" ]
                                ]
                            ]
                        ]
                    , ul
                        [ Attr.class "contact-list no-list-decoration"
                        ]
                        [ li []
                            [ a
                                [ Attr.id "email"
                                , Attr.itemprop "email"
                                , Attr.class "private u-email email text-decoration-none"
                                , Attr.href "/cdn-cgi/l/email-protection#84eaede7efc4ebeaedeaf0ede9e1aae7ebe9"
                                ]
                                [ span
                                    [ Attr.class "__cf_email__"
                                    , Attr.attribute "data-cfemail" "a5cbccc6cee5cacbcccbd1ccc8c08bc6cac8"
                                    ]
                                    [ text "[email protected]" ]
                                ]
                            ]
                        , li []
                            [ a
                                [ Attr.id "pgp"
                                , Attr.class "private u-key key text-decoration-none"
                                , Attr.href (Route.toHref Route.Contact)
                                ]
                                [ text "1746 F7E3 6468 87DD C323 622C 9D98 FA34 2C70 98D3" ]
                            ]
                        ]
                    , p
                        [ Attr.class "p-note"
                        , Attr.itemprop "description"
                        ]
                        [ text "I am an ", span
                            [ Attr.itemprop "jobTitle"
                            , Attr.class "private"
                            ]
                            [ text "IT professional" ]
                        , text ",", span
                            [ Attr.itemprop "knowsAbout"
                            ]
                            [ text " privacy advocate" ]
                        , text ", ", span
                            [ Attr.itemprop "jobTitle"
                            , Attr.class "private"
                            ]
                            [ text "software developer" ]
                        , text ", and ", span
                            [ Attr.itemprop "jobTitle"
                            , Attr.class "private"
                            ]
                            [ text "server administrator" ]
                        , text ".", br []
                            []
                        , text "I work on ", span
                            [ Attr.class "private p-org h-card"
                            , Attr.itemprop "memberOf"
                            , Attr.attribute "itemscope" ""
                            , Attr.attribute "itemtype" "http://schema.org/Organization"
                            ]
                            [ a
                                [ Attr.class "u-url"
                                , Attr.itemprop "url"
                                , Attr.href "https://www.onintime.com"
                                ]
                                [ span
                                    [ Attr.class "p-name org"
                                    , Attr.itemprop "name"
                                    ]
                                    [ text "On In Time" ]
                                ]
                            ]
                        , text " and ", span
                            [ Attr.class "private p-org h-card"
                            , Attr.itemprop "memberOf"
                            , Attr.attribute "itemscope" ""
                            , Attr.attribute "itemtype" "http://schema.org/Organization"
                            ]
                            [ a
                                [ Attr.class "u-url"
                                , Attr.itemprop "url"
                                , Attr.href "https://associationprovencher.com/"
                                ]
                                [ span
                                    [ Attr.class "p-name org"
                                    , Attr.itemprop "name"
                                    ]
                                    [ text "Association Provencher" ]
                                ]
                            ]
                        , text "." ]
                    , p []
                        [ a
                            [ Attr.itemprop "sameAs"
                            , Attr.rel "me"
                            , Attr.href "https://github.com/nicprov"
                            ]
                            [ text "GitHub" ]
                        , text " "
                        , a
                            [ Attr.href (Route.toHref Route.Contact)
                            ]
                            [ text "More..." ]
                        ]
                    ]
                ]
            ]
        ]