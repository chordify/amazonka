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
-- Module      : Network.AWS.MediaConvert.Types.H265FramerateConversionAlgorithm
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.H265FramerateConversionAlgorithm
  ( H265FramerateConversionAlgorithm
      ( ..,
        H265FramerateConversionAlgorithm_DUPLICATE_DROP,
        H265FramerateConversionAlgorithm_FRAMEFORMER,
        H265FramerateConversionAlgorithm_INTERPOLATE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Choose the method that you want MediaConvert to use when increasing or
-- decreasing the frame rate. We recommend using drop duplicate
-- (DUPLICATE_DROP) for numerically simple conversions, such as 60 fps to
-- 30 fps. For numerically complex conversions, you can use interpolate
-- (INTERPOLATE) to avoid stutter. This results in a smooth picture, but
-- might introduce undesirable video artifacts. For complex frame rate
-- conversions, especially if your source video has already been converted
-- from its original cadence, use FrameFormer (FRAMEFORMER) to do
-- motion-compensated interpolation. FrameFormer chooses the best
-- conversion method frame by frame. Note that using FrameFormer increases
-- the transcoding time and incurs a significant add-on cost.
newtype H265FramerateConversionAlgorithm = H265FramerateConversionAlgorithm'
  { fromH265FramerateConversionAlgorithm ::
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

pattern H265FramerateConversionAlgorithm_DUPLICATE_DROP :: H265FramerateConversionAlgorithm
pattern H265FramerateConversionAlgorithm_DUPLICATE_DROP = H265FramerateConversionAlgorithm' "DUPLICATE_DROP"

pattern H265FramerateConversionAlgorithm_FRAMEFORMER :: H265FramerateConversionAlgorithm
pattern H265FramerateConversionAlgorithm_FRAMEFORMER = H265FramerateConversionAlgorithm' "FRAMEFORMER"

pattern H265FramerateConversionAlgorithm_INTERPOLATE :: H265FramerateConversionAlgorithm
pattern H265FramerateConversionAlgorithm_INTERPOLATE = H265FramerateConversionAlgorithm' "INTERPOLATE"

{-# COMPLETE
  H265FramerateConversionAlgorithm_DUPLICATE_DROP,
  H265FramerateConversionAlgorithm_FRAMEFORMER,
  H265FramerateConversionAlgorithm_INTERPOLATE,
  H265FramerateConversionAlgorithm'
  #-}
