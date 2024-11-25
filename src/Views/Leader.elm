module Views.Leader exposing (show)

import Data.Leader exposing (Leader)
import Data.Msg exposing (Msg(..))
import Html exposing (..)
import Html.Attributes as Attr


show : Leader -> Html Msg
show leader =
    div
        [ Attr.class "leaderboard-entry"
        ]
        [ span []
            [ text leader.name ]
        , span []
            [ String.fromInt leader.score |> text ]
        ]
