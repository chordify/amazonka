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
-- Module      : Network.AWS.MediaConvert.Types.Eac3SurroundExMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Eac3SurroundExMode
  ( Eac3SurroundExMode
      ( ..,
        Eac3SurroundExMode_DISABLED,
        Eac3SurroundExMode_ENABLED,
        Eac3SurroundExMode_NOT_INDICATED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | When encoding 3\/2 audio, sets whether an extra center back surround
-- channel is matrix encoded into the left and right surround channels.
newtype Eac3SurroundExMode = Eac3SurroundExMode'
  { fromEac3SurroundExMode ::
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

pattern Eac3SurroundExMode_DISABLED :: Eac3SurroundExMode
pattern Eac3SurroundExMode_DISABLED = Eac3SurroundExMode' "DISABLED"

pattern Eac3SurroundExMode_ENABLED :: Eac3SurroundExMode
pattern Eac3SurroundExMode_ENABLED = Eac3SurroundExMode' "ENABLED"

pattern Eac3SurroundExMode_NOT_INDICATED :: Eac3SurroundExMode
pattern Eac3SurroundExMode_NOT_INDICATED = Eac3SurroundExMode' "NOT_INDICATED"

{-# COMPLETE
  Eac3SurroundExMode_DISABLED,
  Eac3SurroundExMode_ENABLED,
  Eac3SurroundExMode_NOT_INDICATED,
  Eac3SurroundExMode'
  #-}
