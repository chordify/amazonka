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
-- Module      : Network.AWS.S3.Types.InventoryIncludedObjectVersions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.InventoryIncludedObjectVersions
  ( InventoryIncludedObjectVersions
      ( ..,
        InventoryIncludedObjectVersions_All,
        InventoryIncludedObjectVersions_Current
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.S3.Internal

newtype InventoryIncludedObjectVersions = InventoryIncludedObjectVersions'
  { fromInventoryIncludedObjectVersions ::
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

pattern InventoryIncludedObjectVersions_All :: InventoryIncludedObjectVersions
pattern InventoryIncludedObjectVersions_All = InventoryIncludedObjectVersions' "All"

pattern InventoryIncludedObjectVersions_Current :: InventoryIncludedObjectVersions
pattern InventoryIncludedObjectVersions_Current = InventoryIncludedObjectVersions' "Current"

{-# COMPLETE
  InventoryIncludedObjectVersions_All,
  InventoryIncludedObjectVersions_Current,
  InventoryIncludedObjectVersions'
  #-}
