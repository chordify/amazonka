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
-- Module      : Network.AWS.Route53.Types.HealthCheckRegion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53.Types.HealthCheckRegion
  ( HealthCheckRegion
      ( ..,
        HealthCheckRegion_Ap_northeast_1,
        HealthCheckRegion_Ap_southeast_1,
        HealthCheckRegion_Ap_southeast_2,
        HealthCheckRegion_Eu_west_1,
        HealthCheckRegion_Sa_east_1,
        HealthCheckRegion_Us_east_1,
        HealthCheckRegion_Us_west_1,
        HealthCheckRegion_Us_west_2
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Route53.Internal

newtype HealthCheckRegion = HealthCheckRegion'
  { fromHealthCheckRegion ::
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

pattern HealthCheckRegion_Ap_northeast_1 :: HealthCheckRegion
pattern HealthCheckRegion_Ap_northeast_1 = HealthCheckRegion' "ap-northeast-1"

pattern HealthCheckRegion_Ap_southeast_1 :: HealthCheckRegion
pattern HealthCheckRegion_Ap_southeast_1 = HealthCheckRegion' "ap-southeast-1"

pattern HealthCheckRegion_Ap_southeast_2 :: HealthCheckRegion
pattern HealthCheckRegion_Ap_southeast_2 = HealthCheckRegion' "ap-southeast-2"

pattern HealthCheckRegion_Eu_west_1 :: HealthCheckRegion
pattern HealthCheckRegion_Eu_west_1 = HealthCheckRegion' "eu-west-1"

pattern HealthCheckRegion_Sa_east_1 :: HealthCheckRegion
pattern HealthCheckRegion_Sa_east_1 = HealthCheckRegion' "sa-east-1"

pattern HealthCheckRegion_Us_east_1 :: HealthCheckRegion
pattern HealthCheckRegion_Us_east_1 = HealthCheckRegion' "us-east-1"

pattern HealthCheckRegion_Us_west_1 :: HealthCheckRegion
pattern HealthCheckRegion_Us_west_1 = HealthCheckRegion' "us-west-1"

pattern HealthCheckRegion_Us_west_2 :: HealthCheckRegion
pattern HealthCheckRegion_Us_west_2 = HealthCheckRegion' "us-west-2"

{-# COMPLETE
  HealthCheckRegion_Ap_northeast_1,
  HealthCheckRegion_Ap_southeast_1,
  HealthCheckRegion_Ap_southeast_2,
  HealthCheckRegion_Eu_west_1,
  HealthCheckRegion_Sa_east_1,
  HealthCheckRegion_Us_east_1,
  HealthCheckRegion_Us_west_1,
  HealthCheckRegion_Us_west_2,
  HealthCheckRegion'
  #-}
