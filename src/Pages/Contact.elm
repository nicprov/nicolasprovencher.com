module Pages.Contact exposing (view)

import Common.Header exposing (viewHeader)
import Gen.Route as Route
import Html exposing (Html, a, code, div, h1, h2, main_, p, span, text)
import Html.Attributes as Attr exposing (href, id)
import View exposing (View)


view : View msg
view =
    { title = "Contact"
    , body = [ viewHeader "contact"
             , viewMain
             ]
    }

viewMain: Html msg
viewMain =
    main_ []
        [ div [ Attr.class "container" ]
            [ h1 [ id "accounts--contact" ]
                [ text "Accounts & Contact" ]
            , h2 [ id "keys" ]
                [ text "Keys" ]
            , p []
                [ text "OpenPGP "
                , code [ Attr.class "highlighter-rouge" ]
                    [ text "1746F7E3646887DDC323622C9D98FA342C7098D3" ]
                , text "["
                , a [ href "https://cdn.onintime.com/pubkey.asc" ]
                    [ text "Download" ]
                , text "] ["
                , a [ Attr.class "proof", Attr.href "https://keyoxide.org/1746F7E3646887DDC323622C9D98FA342C7098D3", Attr.target "_blank" ]
                    [ text "Social Proofs" ]
                , text "]"
                ]
            , h2 [ id "email" ]
                [ text "Email" ]
            , p []
                [ text "Primary "
                , a [ href "mailto:2209c302-468c-43fc-a93b-1824ccb4042f@unitmoon.com" ]
                    [ text "2209c302-468c-43fc-a93b-1824ccb4042f@unitmoon.com" ]
                ]
            , h2 [ id "other" ]
                [ text "Other" ]
            , p []
                [ text "GitHub "
                , a [ href "https://github.com/nicprov" ]
                    [ text "@nicprov" ]
                , p []
                    [ text "LinkedIn "
                    , a [ href "https://www.linkedin.com/in/nicolas-provencher/" ]
                        [ text "Nicolas Provencher" ]
                    ]
                , h2 [ id "cryptocurrency" ]
                    [ text "Cryptocurrency" ]
                , p []
                    [ text "Bitcoin (BTC) "
                    , code [ Attr.class "highlighter-rouge" ]
                        [ text "39STYBTZ6UCRfNdnXr2oZmYDBbJc88ioKV" ]
                    ]
                , p []
                    [ text "Dogecoint (DOGE) "
                    , code [ Attr.class "highlighter-rouge" ]
                        [ text "A5DPRSfVUTry2rXrrAHAqinSbjew4m68L2" ]
                    ]
                , h2 [ id "domains" ]
                    [ text "Domains" ]
                , p []
                    [ a [ href (Route.toHref Route.Home_) ]
                        [ text "nicolasprovencher.com" ]
                    ]
                , p []
                    [ a [ href "https://justreport.it" ]
                        [ text "justreport.it" ]
                    ]
                , p [] [ a [ href "https://onintime.com" ]
                        [ text "onintime.com" ]
                    ]
                , p [] [ a [ href "https://associationprovencher.com" ]
                        [ text "associationprovencher.com" ]
                    ]
                ]
            ]
        ]