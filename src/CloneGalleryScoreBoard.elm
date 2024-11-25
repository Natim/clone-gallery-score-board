module CloneGalleryScoreBoard exposing (main)

import Browser
import Data.Flags exposing (Flags)
import Data.Model exposing (Model)
import Data.Msg exposing (Msg(..))
import Html exposing (Html, div)
import Html.Attributes as Attr


main : Program Flags Model Msg
main =
    Browser.element
        { init = init
        , update = update
        , view = view
        , subscriptions = always Sub.none
        }


init : Flags -> ( Model, Cmd Msg )
init flags =
    ( { kinto_settings = flags.kinto_settings
      , leaders = []
      }
    , Cmd.none
    )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )


view : Model -> Html Msg
view model =
    div
        [ Attr.id "leaderboard"
        , Attr.class "leaderboard"
        ]
        [ h2 []
            [ img
                [ Attr.src "icons8-edvard-munch-50.png"
                , Attr.alt "Edvard Munch"
                , Attr.class "leaderboard-icon"
                ]
                []
            , text " Classement "
            ]
        , div
            [ Attr.class "leaderboard-entries"
            ]
            [ div
                [ Attr.class "leaderboard-entry"
                ]
                [ span []
                    [ text "Hubschon" ]
                , span []
                    [ text "21" ]
                ]
            , div
                [ Attr.class "leaderboard-entry"
                ]
                [ span []
                    [ text "Hubschon" ]
                , span []
                    [ text "20" ]
                ]
            , div
                [ Attr.class "leaderboard-entry"
                ]
                [ span []
                    [ text "Hubschon" ]
                , span []
                    [ text "18" ]
                ]
            , div
                [ Attr.class "leaderboard-entry"
                ]
                [ span []
                    [ text "Natim" ]
                , span []
                    [ text "8" ]
                ]
            , div
                [ Attr.class "leaderboard-entry"
                ]
                [ span []
                    [ text "Hubschon" ]
                , span []
                    [ text "4" ]
                ]
            ]
        ]
