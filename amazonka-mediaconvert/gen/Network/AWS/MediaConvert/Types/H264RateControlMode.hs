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
-- Module      : Network.AWS.MediaConvert.Types.H264RateControlMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.H264RateControlMode
  ( H264RateControlMode
      ( ..,
        H264RateControlMode_CBR,
        H264RateControlMode_QVBR,
        H264RateControlMode_VBR
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Use this setting to specify whether this output has a variable bitrate
-- (VBR), constant bitrate (CBR) or quality-defined variable bitrate
-- (QVBR).
newtype H264RateControlMode = H264RateControlMode'
  { fromH264RateControlMode ::
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

pattern H264RateControlMode_CBR :: H264RateControlMode
pattern H264RateControlMode_CBR = H264RateControlMode' "CBR"

pattern H264RateControlMode_QVBR :: H264RateControlMode
pattern H264RateControlMode_QVBR = H264RateControlMode' "QVBR"

pattern H264RateControlMode_VBR :: H264RateControlMode
pattern H264RateControlMode_VBR = H264RateControlMode' "VBR"

{-# COMPLETE
  H264RateControlMode_CBR,
  H264RateControlMode_QVBR,
  H264RateControlMode_VBR,
  H264RateControlMode'
  #-}
