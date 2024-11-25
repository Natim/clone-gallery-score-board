module Data.Leader exposing (Leader, decode, encode)

import Json.Decode as Decode
import Json.Encode as Encode
import Kinto


type alias Leader =
    { name : String
    , score : Int
    }


empty : Leader
empty =
    { name = ""
    , score = 0
    }


decode : Decode.Decoder Leader
decode =
    Decode.map2 Leader
        (Decode.field "name" Decode.string)
        (Decode.field "score" Decode.int)


encode : Leader -> Encode.Value
encode { name, score } =
    Encode.object
        [ ( "name", Encode.string name )
        , ( "score", Encode.int score )
        ]
