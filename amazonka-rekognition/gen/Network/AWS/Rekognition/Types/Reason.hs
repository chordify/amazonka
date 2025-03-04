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
-- Module      : Network.AWS.Rekognition.Types.Reason
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Rekognition.Types.Reason
  ( Reason
      ( ..,
        Reason_EXCEEDS_MAX_FACES,
        Reason_EXTREME_POSE,
        Reason_LOW_BRIGHTNESS,
        Reason_LOW_CONFIDENCE,
        Reason_LOW_FACE_QUALITY,
        Reason_LOW_SHARPNESS,
        Reason_SMALL_BOUNDING_BOX
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype Reason = Reason' {fromReason :: Prelude.Text}
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

pattern Reason_EXCEEDS_MAX_FACES :: Reason
pattern Reason_EXCEEDS_MAX_FACES = Reason' "EXCEEDS_MAX_FACES"

pattern Reason_EXTREME_POSE :: Reason
pattern Reason_EXTREME_POSE = Reason' "EXTREME_POSE"

pattern Reason_LOW_BRIGHTNESS :: Reason
pattern Reason_LOW_BRIGHTNESS = Reason' "LOW_BRIGHTNESS"

pattern Reason_LOW_CONFIDENCE :: Reason
pattern Reason_LOW_CONFIDENCE = Reason' "LOW_CONFIDENCE"

pattern Reason_LOW_FACE_QUALITY :: Reason
pattern Reason_LOW_FACE_QUALITY = Reason' "LOW_FACE_QUALITY"

pattern Reason_LOW_SHARPNESS :: Reason
pattern Reason_LOW_SHARPNESS = Reason' "LOW_SHARPNESS"

pattern Reason_SMALL_BOUNDING_BOX :: Reason
pattern Reason_SMALL_BOUNDING_BOX = Reason' "SMALL_BOUNDING_BOX"

{-# COMPLETE
  Reason_EXCEEDS_MAX_FACES,
  Reason_EXTREME_POSE,
  Reason_LOW_BRIGHTNESS,
  Reason_LOW_CONFIDENCE,
  Reason_LOW_FACE_QUALITY,
  Reason_LOW_SHARPNESS,
  Reason_SMALL_BOUNDING_BOX,
  Reason'
  #-}
