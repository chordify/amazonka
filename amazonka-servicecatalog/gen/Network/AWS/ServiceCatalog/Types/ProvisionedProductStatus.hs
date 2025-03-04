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
-- Module      : Network.AWS.ServiceCatalog.Types.ProvisionedProductStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types.ProvisionedProductStatus
  ( ProvisionedProductStatus
      ( ..,
        ProvisionedProductStatus_AVAILABLE,
        ProvisionedProductStatus_ERROR,
        ProvisionedProductStatus_PLAN_IN_PROGRESS,
        ProvisionedProductStatus_TAINTED,
        ProvisionedProductStatus_UNDER_CHANGE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ProvisionedProductStatus = ProvisionedProductStatus'
  { fromProvisionedProductStatus ::
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

pattern ProvisionedProductStatus_AVAILABLE :: ProvisionedProductStatus
pattern ProvisionedProductStatus_AVAILABLE = ProvisionedProductStatus' "AVAILABLE"

pattern ProvisionedProductStatus_ERROR :: ProvisionedProductStatus
pattern ProvisionedProductStatus_ERROR = ProvisionedProductStatus' "ERROR"

pattern ProvisionedProductStatus_PLAN_IN_PROGRESS :: ProvisionedProductStatus
pattern ProvisionedProductStatus_PLAN_IN_PROGRESS = ProvisionedProductStatus' "PLAN_IN_PROGRESS"

pattern ProvisionedProductStatus_TAINTED :: ProvisionedProductStatus
pattern ProvisionedProductStatus_TAINTED = ProvisionedProductStatus' "TAINTED"

pattern ProvisionedProductStatus_UNDER_CHANGE :: ProvisionedProductStatus
pattern ProvisionedProductStatus_UNDER_CHANGE = ProvisionedProductStatus' "UNDER_CHANGE"

{-# COMPLETE
  ProvisionedProductStatus_AVAILABLE,
  ProvisionedProductStatus_ERROR,
  ProvisionedProductStatus_PLAN_IN_PROGRESS,
  ProvisionedProductStatus_TAINTED,
  ProvisionedProductStatus_UNDER_CHANGE,
  ProvisionedProductStatus'
  #-}
