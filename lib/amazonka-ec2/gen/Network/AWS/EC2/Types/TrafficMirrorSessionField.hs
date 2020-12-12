{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.TrafficMirrorSessionField
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.TrafficMirrorSessionField
  ( TrafficMirrorSessionField
      ( TrafficMirrorSessionField',
        TMSFDescription,
        TMSFPacketLength,
        TMSFVirtualNetworkId
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype TrafficMirrorSessionField = TrafficMirrorSessionField' Lude.Text
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving newtype
    ( Lude.Hashable,
      Lude.NFData,
      Lude.ToJSONKey,
      Lude.FromJSONKey,
      Lude.ToJSON,
      Lude.FromJSON,
      Lude.ToXML,
      Lude.FromXML,
      Lude.ToText,
      Lude.FromText,
      Lude.ToByteString,
      Lude.ToQuery,
      Lude.ToHeader
    )

pattern TMSFDescription :: TrafficMirrorSessionField
pattern TMSFDescription = TrafficMirrorSessionField' "description"

pattern TMSFPacketLength :: TrafficMirrorSessionField
pattern TMSFPacketLength = TrafficMirrorSessionField' "packet-length"

pattern TMSFVirtualNetworkId :: TrafficMirrorSessionField
pattern TMSFVirtualNetworkId = TrafficMirrorSessionField' "virtual-network-id"

{-# COMPLETE
  TMSFDescription,
  TMSFPacketLength,
  TMSFVirtualNetworkId,
  TrafficMirrorSessionField'
  #-}
