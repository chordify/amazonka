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
-- Module      : Network.AWS.MediaConvert.Types.AncillaryConvert608To708
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.AncillaryConvert608To708
  ( AncillaryConvert608To708
      ( ..,
        AncillaryConvert608To708_DISABLED,
        AncillaryConvert608To708_UPCONVERT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Specify whether this set of input captions appears in your outputs in
-- both 608 and 708 format. If you choose Upconvert (UPCONVERT),
-- MediaConvert includes the captions data in two ways: it passes the 608
-- data through using the 608 compatibility bytes fields of the 708
-- wrapper, and it also translates the 608 data into 708.
newtype AncillaryConvert608To708 = AncillaryConvert608To708'
  { fromAncillaryConvert608To708 ::
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

pattern AncillaryConvert608To708_DISABLED :: AncillaryConvert608To708
pattern AncillaryConvert608To708_DISABLED = AncillaryConvert608To708' "DISABLED"

pattern AncillaryConvert608To708_UPCONVERT :: AncillaryConvert608To708
pattern AncillaryConvert608To708_UPCONVERT = AncillaryConvert608To708' "UPCONVERT"

{-# COMPLETE
  AncillaryConvert608To708_DISABLED,
  AncillaryConvert608To708_UPCONVERT,
  AncillaryConvert608To708'
  #-}
