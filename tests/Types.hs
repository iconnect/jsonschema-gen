{-# LANGUAGE DeriveGeneric #-}

module Types where

import GHC.Generics

data RecordType1 =
      RecordData11
        { recordField11 :: String
        , recordField12 :: Int
        , recordField13 :: Double
        , recordField14 :: Maybe String
        , recordField15 :: RecordType2
        }
    deriving (Show, Generic)

data RecordType2 =
      RecordData21
        { recordField21 :: String
        , recordField22 :: Maybe String
        }
    | RecordData22
        { recordField21 :: String
        , recordField22 :: Maybe String
        , recordField23 :: Int
        }
    deriving (Show, Generic)

data ProductType1 = ProductData11 String Int Double (Maybe String) ProductType2
    deriving (Show, Generic)

data ProductType2 = ProductData21 String (Maybe String)
                  | ProductData22 String (Maybe String) Int
    deriving (Show, Generic)

data UnitType1 = UnitData1 | UnitData2 | UnitData3
    deriving (Show, Generic)

data MixType1 =
      MixData11
    | MixData12 String (Maybe String)
    | MixData13
        { recordField31 :: String
        , recordField32 :: Maybe String
        , recordField33 :: Int
        }
    deriving (Show, Generic)
