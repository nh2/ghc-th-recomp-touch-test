{-# LANGUAGE TemplateHaskell #-}

module A (a) where

import Data.Aeson
import Data.Aeson.TH

data D = D Int

$(deriveJSON defaultOptions ''D)

a :: Value
a = toJSON (D 2)
