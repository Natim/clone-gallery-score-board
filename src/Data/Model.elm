module Data.Model exposing (Model)

import Data.Leader exposing (Leader)
import Request.Kinto exposing (KintoSettings)


type alias Model =
    { kinto_settings : KintoSettings
    , leaders : List Leader
    }
