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
-- Module      : Network.AWS.RDS.Types.WriteForwardingStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.WriteForwardingStatus
  ( WriteForwardingStatus
      ( ..,
        WriteForwardingStatus_Disabled,
        WriteForwardingStatus_Disabling,
        WriteForwardingStatus_Enabled,
        WriteForwardingStatus_Enabling,
        WriteForwardingStatus_Unknown
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype WriteForwardingStatus = WriteForwardingStatus'
  { fromWriteForwardingStatus ::
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

pattern WriteForwardingStatus_Disabled :: WriteForwardingStatus
pattern WriteForwardingStatus_Disabled = WriteForwardingStatus' "disabled"

pattern WriteForwardingStatus_Disabling :: WriteForwardingStatus
pattern WriteForwardingStatus_Disabling = WriteForwardingStatus' "disabling"

pattern WriteForwardingStatus_Enabled :: WriteForwardingStatus
pattern WriteForwardingStatus_Enabled = WriteForwardingStatus' "enabled"

pattern WriteForwardingStatus_Enabling :: WriteForwardingStatus
pattern WriteForwardingStatus_Enabling = WriteForwardingStatus' "enabling"

pattern WriteForwardingStatus_Unknown :: WriteForwardingStatus
pattern WriteForwardingStatus_Unknown = WriteForwardingStatus' "unknown"

{-# COMPLETE
  WriteForwardingStatus_Disabled,
  WriteForwardingStatus_Disabling,
  WriteForwardingStatus_Enabled,
  WriteForwardingStatus_Enabling,
  WriteForwardingStatus_Unknown,
  WriteForwardingStatus'
  #-}
