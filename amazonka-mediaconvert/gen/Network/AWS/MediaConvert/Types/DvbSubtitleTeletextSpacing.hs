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
-- Module      : Network.AWS.MediaConvert.Types.DvbSubtitleTeletextSpacing
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.DvbSubtitleTeletextSpacing
  ( DvbSubtitleTeletextSpacing
      ( ..,
        DvbSubtitleTeletextSpacing_FIXED_GRID,
        DvbSubtitleTeletextSpacing_PROPORTIONAL
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Only applies to jobs with input captions in Teletext or STL formats.
-- Specify whether the spacing between letters in your captions is set by
-- the captions grid or varies depending on letter width. Choose fixed grid
-- to conform to the spacing specified in the captions file more
-- accurately. Choose proportional to make the text easier to read if the
-- captions are closed caption.
newtype DvbSubtitleTeletextSpacing = DvbSubtitleTeletextSpacing'
  { fromDvbSubtitleTeletextSpacing ::
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

pattern DvbSubtitleTeletextSpacing_FIXED_GRID :: DvbSubtitleTeletextSpacing
pattern DvbSubtitleTeletextSpacing_FIXED_GRID = DvbSubtitleTeletextSpacing' "FIXED_GRID"

pattern DvbSubtitleTeletextSpacing_PROPORTIONAL :: DvbSubtitleTeletextSpacing
pattern DvbSubtitleTeletextSpacing_PROPORTIONAL = DvbSubtitleTeletextSpacing' "PROPORTIONAL"

{-# COMPLETE
  DvbSubtitleTeletextSpacing_FIXED_GRID,
  DvbSubtitleTeletextSpacing_PROPORTIONAL,
  DvbSubtitleTeletextSpacing'
  #-}
