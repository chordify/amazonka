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
-- Module      : Network.AWS.MediaLive.Types.Eac3PassthroughControl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Eac3PassthroughControl
  ( Eac3PassthroughControl
      ( ..,
        Eac3PassthroughControl_NO_PASSTHROUGH,
        Eac3PassthroughControl_WHEN_POSSIBLE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Eac3 Passthrough Control
newtype Eac3PassthroughControl = Eac3PassthroughControl'
  { fromEac3PassthroughControl ::
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

pattern Eac3PassthroughControl_NO_PASSTHROUGH :: Eac3PassthroughControl
pattern Eac3PassthroughControl_NO_PASSTHROUGH = Eac3PassthroughControl' "NO_PASSTHROUGH"

pattern Eac3PassthroughControl_WHEN_POSSIBLE :: Eac3PassthroughControl
pattern Eac3PassthroughControl_WHEN_POSSIBLE = Eac3PassthroughControl' "WHEN_POSSIBLE"

{-# COMPLETE
  Eac3PassthroughControl_NO_PASSTHROUGH,
  Eac3PassthroughControl_WHEN_POSSIBLE,
  Eac3PassthroughControl'
  #-}
