module Handler.Passages where

import Import

getPassagesR :: Handler TypedContent
getPassagesR = selectRep $ do
  provideRep $ do
    passages <- runDB $ selectList [] [Asc PassageId]
    return $ toJSON passages

postPassagesR :: Handler TypedContent
postPassagesR = do
  post <- requireJsonBody :: Handler Passage
  _ <- runDB $ insert post

  sendResponseStatus status201 ("CREATED" :: Text)
