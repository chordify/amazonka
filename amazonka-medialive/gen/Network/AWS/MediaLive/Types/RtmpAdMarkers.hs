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
-- Module      : Network.AWS.MediaLive.Types.RtmpAdMarkers
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.RtmpAdMarkers
  ( RtmpAdMarkers
      ( ..,
        RtmpAdMarkers_ON_CUE_POINT_SCTE35
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Rtmp Ad Markers
newtype RtmpAdMarkers = RtmpAdMarkers'
  { fromRtmpAdMarkers ::
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

pattern RtmpAdMarkers_ON_CUE_POINT_SCTE35 :: RtmpAdMarkers
pattern RtmpAdMarkers_ON_CUE_POINT_SCTE35 = RtmpAdMarkers' "ON_CUE_POINT_SCTE35"

{-# COMPLETE
  RtmpAdMarkers_ON_CUE_POINT_SCTE35,
  RtmpAdMarkers'
  #-}
