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
-- Module      : Network.AWS.Rekognition.Types.StreamProcessorStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Rekognition.Types.StreamProcessorStatus
  ( StreamProcessorStatus
      ( ..,
        StreamProcessorStatus_FAILED,
        StreamProcessorStatus_RUNNING,
        StreamProcessorStatus_STARTING,
        StreamProcessorStatus_STOPPED,
        StreamProcessorStatus_STOPPING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype StreamProcessorStatus = StreamProcessorStatus'
  { fromStreamProcessorStatus ::
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

pattern StreamProcessorStatus_FAILED :: StreamProcessorStatus
pattern StreamProcessorStatus_FAILED = StreamProcessorStatus' "FAILED"

pattern StreamProcessorStatus_RUNNING :: StreamProcessorStatus
pattern StreamProcessorStatus_RUNNING = StreamProcessorStatus' "RUNNING"

pattern StreamProcessorStatus_STARTING :: StreamProcessorStatus
pattern StreamProcessorStatus_STARTING = StreamProcessorStatus' "STARTING"

pattern StreamProcessorStatus_STOPPED :: StreamProcessorStatus
pattern StreamProcessorStatus_STOPPED = StreamProcessorStatus' "STOPPED"

pattern StreamProcessorStatus_STOPPING :: StreamProcessorStatus
pattern StreamProcessorStatus_STOPPING = StreamProcessorStatus' "STOPPING"

{-# COMPLETE
  StreamProcessorStatus_FAILED,
  StreamProcessorStatus_RUNNING,
  StreamProcessorStatus_STARTING,
  StreamProcessorStatus_STOPPED,
  StreamProcessorStatus_STOPPING,
  StreamProcessorStatus'
  #-}
