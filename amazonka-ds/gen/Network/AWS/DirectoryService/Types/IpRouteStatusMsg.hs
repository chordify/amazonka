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
-- Module      : Network.AWS.DirectoryService.Types.IpRouteStatusMsg
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectoryService.Types.IpRouteStatusMsg
  ( IpRouteStatusMsg
      ( ..,
        IpRouteStatusMsg_AddFailed,
        IpRouteStatusMsg_Added,
        IpRouteStatusMsg_Adding,
        IpRouteStatusMsg_RemoveFailed,
        IpRouteStatusMsg_Removed,
        IpRouteStatusMsg_Removing
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype IpRouteStatusMsg = IpRouteStatusMsg'
  { fromIpRouteStatusMsg ::
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

pattern IpRouteStatusMsg_AddFailed :: IpRouteStatusMsg
pattern IpRouteStatusMsg_AddFailed = IpRouteStatusMsg' "AddFailed"

pattern IpRouteStatusMsg_Added :: IpRouteStatusMsg
pattern IpRouteStatusMsg_Added = IpRouteStatusMsg' "Added"

pattern IpRouteStatusMsg_Adding :: IpRouteStatusMsg
pattern IpRouteStatusMsg_Adding = IpRouteStatusMsg' "Adding"

pattern IpRouteStatusMsg_RemoveFailed :: IpRouteStatusMsg
pattern IpRouteStatusMsg_RemoveFailed = IpRouteStatusMsg' "RemoveFailed"

pattern IpRouteStatusMsg_Removed :: IpRouteStatusMsg
pattern IpRouteStatusMsg_Removed = IpRouteStatusMsg' "Removed"

pattern IpRouteStatusMsg_Removing :: IpRouteStatusMsg
pattern IpRouteStatusMsg_Removing = IpRouteStatusMsg' "Removing"

{-# COMPLETE
  IpRouteStatusMsg_AddFailed,
  IpRouteStatusMsg_Added,
  IpRouteStatusMsg_Adding,
  IpRouteStatusMsg_RemoveFailed,
  IpRouteStatusMsg_Removed,
  IpRouteStatusMsg_Removing,
  IpRouteStatusMsg'
  #-}
