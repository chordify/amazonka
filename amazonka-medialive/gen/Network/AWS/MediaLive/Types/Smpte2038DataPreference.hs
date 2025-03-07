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
-- Module      : Network.AWS.MediaLive.Types.Smpte2038DataPreference
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Smpte2038DataPreference
  ( Smpte2038DataPreference
      ( ..,
        Smpte2038DataPreference_IGNORE,
        Smpte2038DataPreference_PREFER
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Smpte2038 Data Preference
newtype Smpte2038DataPreference = Smpte2038DataPreference'
  { fromSmpte2038DataPreference ::
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

pattern Smpte2038DataPreference_IGNORE :: Smpte2038DataPreference
pattern Smpte2038DataPreference_IGNORE = Smpte2038DataPreference' "IGNORE"

pattern Smpte2038DataPreference_PREFER :: Smpte2038DataPreference
pattern Smpte2038DataPreference_PREFER = Smpte2038DataPreference' "PREFER"

{-# COMPLETE
  Smpte2038DataPreference_IGNORE,
  Smpte2038DataPreference_PREFER,
  Smpte2038DataPreference'
  #-}
