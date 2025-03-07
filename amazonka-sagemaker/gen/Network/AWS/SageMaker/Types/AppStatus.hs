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
-- Module      : Network.AWS.SageMaker.Types.AppStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.AppStatus
  ( AppStatus
      ( ..,
        AppStatus_Deleted,
        AppStatus_Deleting,
        AppStatus_Failed,
        AppStatus_InService,
        AppStatus_Pending
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AppStatus = AppStatus'
  { fromAppStatus ::
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

pattern AppStatus_Deleted :: AppStatus
pattern AppStatus_Deleted = AppStatus' "Deleted"

pattern AppStatus_Deleting :: AppStatus
pattern AppStatus_Deleting = AppStatus' "Deleting"

pattern AppStatus_Failed :: AppStatus
pattern AppStatus_Failed = AppStatus' "Failed"

pattern AppStatus_InService :: AppStatus
pattern AppStatus_InService = AppStatus' "InService"

pattern AppStatus_Pending :: AppStatus
pattern AppStatus_Pending = AppStatus' "Pending"

{-# COMPLETE
  AppStatus_Deleted,
  AppStatus_Deleting,
  AppStatus_Failed,
  AppStatus_InService,
  AppStatus_Pending,
  AppStatus'
  #-}
