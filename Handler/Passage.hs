module Handler.Passage where

import Import

getPassageR :: PassageId -> Handler TypedContent
getPassageR passageId = selectRep $ do
  provideRep $ do
    passage <- runDB $ get404 passageId
    return $ toJSON passage

putPassageR :: PassageId -> Handler TypedContent
putPassageR passageId = error "Not yet implemented: putPassagesR"

postPassageR :: PassageId -> Handler TypedContent
postPassageR = putPassageR
