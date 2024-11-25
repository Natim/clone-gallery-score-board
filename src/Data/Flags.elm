module Data.Flags exposing (Flags)

import Request.Kinto exposing (KintoSettings)


type alias Flags =
    { kinto_settings : KintoSettings
    }
