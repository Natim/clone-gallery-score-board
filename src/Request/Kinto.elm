module Request.Kinto exposing (KintoSettings, fetchLeaderBoard)

import Data.Leader as Leader exposing (Leader)
import Data.Msg exposing (Msg(..))
import Kinto


type alias KintoSettings =
    { apiServer : String
    , csrfToken : String
    }


leaderResource : Kinto.Resource Leader
leaderResource =
    Kinto.recordResource "default" "clone-gallery-score-board" Leader.decode


fetchLeaderBoard : Kinto.Client -> KintoSettings -> Cmd Msg
fetchLeaderBoard client settings =
    Kinto.Bearer settings.csrfToken
        |> Kinto.client settings.apiServer
        |> Kinto.getList leaderResource FetchLeadersResponse
        |> Kinto.limit 5
        |> Kinto.send
