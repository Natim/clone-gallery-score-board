module Request.Kinto exposing (KintoSettings)


type alias KintoSettings =
    { apiServer : String
    , csrfToken : String
    }
