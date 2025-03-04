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
-- Module      : Network.AWS.SageMaker.Types.AutoMLJobStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.AutoMLJobStatus
  ( AutoMLJobStatus
      ( ..,
        AutoMLJobStatus_Completed,
        AutoMLJobStatus_Failed,
        AutoMLJobStatus_InProgress,
        AutoMLJobStatus_Stopped,
        AutoMLJobStatus_Stopping
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AutoMLJobStatus = AutoMLJobStatus'
  { fromAutoMLJobStatus ::
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

pattern AutoMLJobStatus_Completed :: AutoMLJobStatus
pattern AutoMLJobStatus_Completed = AutoMLJobStatus' "Completed"

pattern AutoMLJobStatus_Failed :: AutoMLJobStatus
pattern AutoMLJobStatus_Failed = AutoMLJobStatus' "Failed"

pattern AutoMLJobStatus_InProgress :: AutoMLJobStatus
pattern AutoMLJobStatus_InProgress = AutoMLJobStatus' "InProgress"

pattern AutoMLJobStatus_Stopped :: AutoMLJobStatus
pattern AutoMLJobStatus_Stopped = AutoMLJobStatus' "Stopped"

pattern AutoMLJobStatus_Stopping :: AutoMLJobStatus
pattern AutoMLJobStatus_Stopping = AutoMLJobStatus' "Stopping"

{-# COMPLETE
  AutoMLJobStatus_Completed,
  AutoMLJobStatus_Failed,
  AutoMLJobStatus_InProgress,
  AutoMLJobStatus_Stopped,
  AutoMLJobStatus_Stopping,
  AutoMLJobStatus'
  #-}
