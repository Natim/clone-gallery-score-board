module Data.Msg exposing (Msg(..))

import Data.Leader exposing (Leader)
import Kinto


type Msg
    = FetchLeadersResponse (Result Kinto.Error (Kinto.Pager Leader))
