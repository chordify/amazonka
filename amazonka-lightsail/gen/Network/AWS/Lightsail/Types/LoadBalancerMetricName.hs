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
-- Module      : Network.AWS.Lightsail.Types.LoadBalancerMetricName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.LoadBalancerMetricName
  ( LoadBalancerMetricName
      ( ..,
        LoadBalancerMetricName_ClientTLSNegotiationErrorCount,
        LoadBalancerMetricName_HTTPCode_Instance_2XX_Count,
        LoadBalancerMetricName_HTTPCode_Instance_3XX_Count,
        LoadBalancerMetricName_HTTPCode_Instance_4XX_Count,
        LoadBalancerMetricName_HTTPCode_Instance_5XX_Count,
        LoadBalancerMetricName_HTTPCode_LB_4XX_Count,
        LoadBalancerMetricName_HTTPCode_LB_5XX_Count,
        LoadBalancerMetricName_HealthyHostCount,
        LoadBalancerMetricName_InstanceResponseTime,
        LoadBalancerMetricName_RejectedConnectionCount,
        LoadBalancerMetricName_RequestCount,
        LoadBalancerMetricName_UnhealthyHostCount
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype LoadBalancerMetricName = LoadBalancerMetricName'
  { fromLoadBalancerMetricName ::
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

pattern LoadBalancerMetricName_ClientTLSNegotiationErrorCount :: LoadBalancerMetricName
pattern LoadBalancerMetricName_ClientTLSNegotiationErrorCount = LoadBalancerMetricName' "ClientTLSNegotiationErrorCount"

pattern LoadBalancerMetricName_HTTPCode_Instance_2XX_Count :: LoadBalancerMetricName
pattern LoadBalancerMetricName_HTTPCode_Instance_2XX_Count = LoadBalancerMetricName' "HTTPCode_Instance_2XX_Count"

pattern LoadBalancerMetricName_HTTPCode_Instance_3XX_Count :: LoadBalancerMetricName
pattern LoadBalancerMetricName_HTTPCode_Instance_3XX_Count = LoadBalancerMetricName' "HTTPCode_Instance_3XX_Count"

pattern LoadBalancerMetricName_HTTPCode_Instance_4XX_Count :: LoadBalancerMetricName
pattern LoadBalancerMetricName_HTTPCode_Instance_4XX_Count = LoadBalancerMetricName' "HTTPCode_Instance_4XX_Count"

pattern LoadBalancerMetricName_HTTPCode_Instance_5XX_Count :: LoadBalancerMetricName
pattern LoadBalancerMetricName_HTTPCode_Instance_5XX_Count = LoadBalancerMetricName' "HTTPCode_Instance_5XX_Count"

pattern LoadBalancerMetricName_HTTPCode_LB_4XX_Count :: LoadBalancerMetricName
pattern LoadBalancerMetricName_HTTPCode_LB_4XX_Count = LoadBalancerMetricName' "HTTPCode_LB_4XX_Count"

pattern LoadBalancerMetricName_HTTPCode_LB_5XX_Count :: LoadBalancerMetricName
pattern LoadBalancerMetricName_HTTPCode_LB_5XX_Count = LoadBalancerMetricName' "HTTPCode_LB_5XX_Count"

pattern LoadBalancerMetricName_HealthyHostCount :: LoadBalancerMetricName
pattern LoadBalancerMetricName_HealthyHostCount = LoadBalancerMetricName' "HealthyHostCount"

pattern LoadBalancerMetricName_InstanceResponseTime :: LoadBalancerMetricName
pattern LoadBalancerMetricName_InstanceResponseTime = LoadBalancerMetricName' "InstanceResponseTime"

pattern LoadBalancerMetricName_RejectedConnectionCount :: LoadBalancerMetricName
pattern LoadBalancerMetricName_RejectedConnectionCount = LoadBalancerMetricName' "RejectedConnectionCount"

pattern LoadBalancerMetricName_RequestCount :: LoadBalancerMetricName
pattern LoadBalancerMetricName_RequestCount = LoadBalancerMetricName' "RequestCount"

pattern LoadBalancerMetricName_UnhealthyHostCount :: LoadBalancerMetricName
pattern LoadBalancerMetricName_UnhealthyHostCount = LoadBalancerMetricName' "UnhealthyHostCount"

{-# COMPLETE
  LoadBalancerMetricName_ClientTLSNegotiationErrorCount,
  LoadBalancerMetricName_HTTPCode_Instance_2XX_Count,
  LoadBalancerMetricName_HTTPCode_Instance_3XX_Count,
  LoadBalancerMetricName_HTTPCode_Instance_4XX_Count,
  LoadBalancerMetricName_HTTPCode_Instance_5XX_Count,
  LoadBalancerMetricName_HTTPCode_LB_4XX_Count,
  LoadBalancerMetricName_HTTPCode_LB_5XX_Count,
  LoadBalancerMetricName_HealthyHostCount,
  LoadBalancerMetricName_InstanceResponseTime,
  LoadBalancerMetricName_RejectedConnectionCount,
  LoadBalancerMetricName_RequestCount,
  LoadBalancerMetricName_UnhealthyHostCount,
  LoadBalancerMetricName'
  #-}
