module FingerLord where

import ClassyPrelude.Yesod

data FingerLordState = FingerLordState { }

data Arena = Arena { arenaName :: Text
                   , attendees :: [Attendee]
                   }

data Attendee = Attendee { attendeeName :: Text
                         }
