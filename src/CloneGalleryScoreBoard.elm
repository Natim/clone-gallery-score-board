module CloneGalleryScoreBoard exposing (main)

import Browser
import Data.Flags exposing (Flags)
import Data.Leader exposing (Leader)
import Data.Model exposing (Model)
import Data.Msg exposing (Msg(..))
import Html exposing (..)
import Html.Attributes as Attr
import Views.Leader as Leader


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
      , leaders = [ Leader "Séverine" 21, Leader "Rémy" 20, Leader "Robin" 12, Leader "Florian" 10, Leader "François" 4 ]
      }
    , Cmd.none
    )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )


view : Model -> Html Msg
view { leaders } =
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
        , List.map Leader.show leaders
            |> div
                [ Attr.class "leaderboard-entries" ]
        ]
