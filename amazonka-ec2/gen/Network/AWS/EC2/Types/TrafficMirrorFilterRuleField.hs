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
-- Module      : Network.AWS.EC2.Types.TrafficMirrorFilterRuleField
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.TrafficMirrorFilterRuleField
  ( TrafficMirrorFilterRuleField
      ( ..,
        TrafficMirrorFilterRuleField_Description,
        TrafficMirrorFilterRuleField_Destination_port_range,
        TrafficMirrorFilterRuleField_Protocol,
        TrafficMirrorFilterRuleField_Source_port_range
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype TrafficMirrorFilterRuleField = TrafficMirrorFilterRuleField'
  { fromTrafficMirrorFilterRuleField ::
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

pattern TrafficMirrorFilterRuleField_Description :: TrafficMirrorFilterRuleField
pattern TrafficMirrorFilterRuleField_Description = TrafficMirrorFilterRuleField' "description"

pattern TrafficMirrorFilterRuleField_Destination_port_range :: TrafficMirrorFilterRuleField
pattern TrafficMirrorFilterRuleField_Destination_port_range = TrafficMirrorFilterRuleField' "destination-port-range"

pattern TrafficMirrorFilterRuleField_Protocol :: TrafficMirrorFilterRuleField
pattern TrafficMirrorFilterRuleField_Protocol = TrafficMirrorFilterRuleField' "protocol"

pattern TrafficMirrorFilterRuleField_Source_port_range :: TrafficMirrorFilterRuleField
pattern TrafficMirrorFilterRuleField_Source_port_range = TrafficMirrorFilterRuleField' "source-port-range"

{-# COMPLETE
  TrafficMirrorFilterRuleField_Description,
  TrafficMirrorFilterRuleField_Destination_port_range,
  TrafficMirrorFilterRuleField_Protocol,
  TrafficMirrorFilterRuleField_Source_port_range,
  TrafficMirrorFilterRuleField'
  #-}
