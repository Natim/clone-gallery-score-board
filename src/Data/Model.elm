module Data.Model exposing (Model)

import Request.Kinto exposing (KintoSettings)


type alias Model =
    { kinto_settings : KintoSettings
    }
