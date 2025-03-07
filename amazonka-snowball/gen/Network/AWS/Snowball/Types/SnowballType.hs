{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Snowball.Types.SnowballType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Snowball.Types.SnowballType
  ( SnowballType
      ( ..,
        SnowballType_EDGE,
        SnowballType_EDGE_C,
        SnowballType_EDGE_CG,
        SnowballType_EDGE_S,
        SnowballType_SNC1_HDD,
        SnowballType_STANDARD
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SnowballType = SnowballType'
  { fromSnowballType ::
      Prelude.Text
  }
  deriving
    ( Prelude.Show,
      Prelude.Read,
      Prelude.Eq,
      Prelude.Ord,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic,
      Prelude.Hashable,
      Prelude.NFData,
      Prelude.FromText,
      Prelude.ToText,
      Prelude.ToByteString,
      Prelude.ToLog,
      Prelude.ToHeader,
      Prelude.ToQuery,
      Prelude.FromJSON,
      Prelude.FromJSONKey,
      Prelude.ToJSON,
      Prelude.ToJSONKey,
      Prelude.FromXML,
      Prelude.ToXML
    )

pattern SnowballType_EDGE :: SnowballType
pattern SnowballType_EDGE = SnowballType' "EDGE"

pattern SnowballType_EDGE_C :: SnowballType
pattern SnowballType_EDGE_C = SnowballType' "EDGE_C"

pattern SnowballType_EDGE_CG :: SnowballType
pattern SnowballType_EDGE_CG = SnowballType' "EDGE_CG"

pattern SnowballType_EDGE_S :: SnowballType
pattern SnowballType_EDGE_S = SnowballType' "EDGE_S"

pattern SnowballType_SNC1_HDD :: SnowballType
pattern SnowballType_SNC1_HDD = SnowballType' "SNC1_HDD"

pattern SnowballType_STANDARD :: SnowballType
pattern SnowballType_STANDARD = SnowballType' "STANDARD"

{-# COMPLETE
  SnowballType_EDGE,
  SnowballType_EDGE_C,
  SnowballType_EDGE_CG,
  SnowballType_EDGE_S,
  SnowballType_SNC1_HDD,
  SnowballType_STANDARD,
  SnowballType'
  #-}
