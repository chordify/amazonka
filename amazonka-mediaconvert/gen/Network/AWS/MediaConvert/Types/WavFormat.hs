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
-- Module      : Network.AWS.MediaConvert.Types.WavFormat
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.WavFormat
  ( WavFormat
      ( ..,
        WavFormat_RF64,
        WavFormat_RIFF
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | The service defaults to using RIFF for WAV outputs. If your output audio
-- is likely to exceed 4 GB in file size, or if you otherwise need the
-- extended support of the RF64 format, set your output WAV file format to
-- RF64.
newtype WavFormat = WavFormat'
  { fromWavFormat ::
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

pattern WavFormat_RF64 :: WavFormat
pattern WavFormat_RF64 = WavFormat' "RF64"

pattern WavFormat_RIFF :: WavFormat
pattern WavFormat_RIFF = WavFormat' "RIFF"

{-# COMPLETE
  WavFormat_RF64,
  WavFormat_RIFF,
  WavFormat'
  #-}
