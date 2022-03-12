module Pages.Verify exposing (view)

import Common.Header exposing (viewHeader)
import Gen.Route as Route
import Html exposing (Html, a, code, div, h1, h2, main_, p, text)
import Html.Attributes as Attr
import View exposing (View)

view : View msg
view =
    { title = "Verify"
    , body = [ viewHeader "verify"
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
                [ Attr.id "third-party-public-keys"
                ]
                [ text "Third Party Public Keys" ]
            , h2
                [ Attr.id "what-is-this"
                ]
                [ text "What is this?" ]
            , p []
                [ text "This page mainly acts as a third party source for information like public keys, key fingerprints, or onion links to various organizations and websites. The information here should always match the information publicly available on these groups’s respective websites. If you receive information about the projects below that differ from what is on this page, please ", a
                    [ Attr.href (Route.toHref Route.Contact)
                    ]
                    [ text "contact me" ]
                , text " immediately." ]
            , h2
                [ Attr.id "onion-links"
                ]
                [ text "Onion Links" ]
            , p []
                [ text "Hidden Wiki", code
                    [ Attr.class "highlighter-rouge"
                    ]
                    [ text "zqktlwiuavvvqqt4ybvgvi7tyo4hjl5xgfuvpdf6otjiycgwqbym2qad.onion" ]
                ]
            , p []
                [ text "Secure Drop", code
                    [ Attr.class "highlighter-rouge"
                    ]
                    [ text "secrdrop5wyphb5x.onion" ]
                ]
            , p []
                [ text "DuckDuckGo", code
                    [ Attr.class "highlighter-rouge"
                    ]
                    [ text "3g2upl4pq6kufc4m.onion" ]
                ]
            , p []
                [ text "Mailpile", code
                    [ Attr.class "highlighter-rouge"
                    ]
                    [ text "clgs64523yi2bkhz.onion" ]
                ]
            , h2
                [ Attr.id "pgp-keys-organizations"
                ]
                [ text "PGP Keys (Organizations)" ]
            , p []
                [ text "CentOS Signing Key", code
                    [ Attr.class "highlighter-rouge"
                    ]
                    [ text "6341 AB27 53D7 8A78 A7C2 7BB1 24C6 A8A7 F4A8 0EB5" ]
                ]
            , p []
                [ text "Qubes Master Signing Key", code
                    [ Attr.class "highlighter-rouge"
                    ]
                    [ text "427F 11FD 0FAA 4B08 0123 F01C DDFA 1A3E 3687 9494" ]
                ]
            ]
        ]