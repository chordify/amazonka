{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.AudioCodec
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.AudioCodec
  ( AudioCodec
      ( AudioCodec',
        ACAC3,
        ACAac,
        ACAiff,
        ACEAC3,
        ACEAC3Atmos,
        ACMP2,
        ACMP3,
        ACOpus,
        ACPassthrough,
        ACVorbis,
        ACWav
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

-- | Type of Audio codec.
newtype AudioCodec = AudioCodec' Lude.Text
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

pattern ACAC3 :: AudioCodec
pattern ACAC3 = AudioCodec' "AC3"

pattern ACAac :: AudioCodec
pattern ACAac = AudioCodec' "AAC"

pattern ACAiff :: AudioCodec
pattern ACAiff = AudioCodec' "AIFF"

pattern ACEAC3 :: AudioCodec
pattern ACEAC3 = AudioCodec' "EAC3"

pattern ACEAC3Atmos :: AudioCodec
pattern ACEAC3Atmos = AudioCodec' "EAC3_ATMOS"

pattern ACMP2 :: AudioCodec
pattern ACMP2 = AudioCodec' "MP2"

pattern ACMP3 :: AudioCodec
pattern ACMP3 = AudioCodec' "MP3"

pattern ACOpus :: AudioCodec
pattern ACOpus = AudioCodec' "OPUS"

pattern ACPassthrough :: AudioCodec
pattern ACPassthrough = AudioCodec' "PASSTHROUGH"

pattern ACVorbis :: AudioCodec
pattern ACVorbis = AudioCodec' "VORBIS"

pattern ACWav :: AudioCodec
pattern ACWav = AudioCodec' "WAV"

{-# COMPLETE
  ACAC3,
  ACAac,
  ACAiff,
  ACEAC3,
  ACEAC3Atmos,
  ACMP2,
  ACMP3,
  ACOpus,
  ACPassthrough,
  ACVorbis,
  ACWav,
  AudioCodec'
  #-}
