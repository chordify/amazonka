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
-- Module      : Network.AWS.Route53AutoNaming.Types.HealthStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53AutoNaming.Types.HealthStatus
  ( HealthStatus
      ( ..,
        HealthStatus_HEALTHY,
        HealthStatus_UNHEALTHY,
        HealthStatus_UNKNOWN
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype HealthStatus = HealthStatus'
  { fromHealthStatus ::
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

pattern HealthStatus_HEALTHY :: HealthStatus
pattern HealthStatus_HEALTHY = HealthStatus' "HEALTHY"

pattern HealthStatus_UNHEALTHY :: HealthStatus
pattern HealthStatus_UNHEALTHY = HealthStatus' "UNHEALTHY"

pattern HealthStatus_UNKNOWN :: HealthStatus
pattern HealthStatus_UNKNOWN = HealthStatus' "UNKNOWN"

{-# COMPLETE
  HealthStatus_HEALTHY,
  HealthStatus_UNHEALTHY,
  HealthStatus_UNKNOWN,
  HealthStatus'
  #-}
