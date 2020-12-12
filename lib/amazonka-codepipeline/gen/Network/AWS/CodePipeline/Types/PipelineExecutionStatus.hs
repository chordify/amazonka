{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodePipeline.Types.PipelineExecutionStatus
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodePipeline.Types.PipelineExecutionStatus
  ( PipelineExecutionStatus
      ( PipelineExecutionStatus',
        Failed,
        InProgress,
        Stopped,
        Stopping,
        Succeeded,
        Superseded
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype PipelineExecutionStatus = PipelineExecutionStatus' Lude.Text
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving newtype
    ( Lude.Hashable,
      Lude.NFData,
      Lude.ToJSONKey,
      Lude.FromJSONKey,
      Lude.ToJSON,
      Lude.FromJSON,
      Lude.ToXML,
      Lude.FromXML,
      Lude.ToText,
      Lude.FromText,
      Lude.ToByteString,
      Lude.ToQuery,
      Lude.ToHeader
    )

pattern Failed :: PipelineExecutionStatus
pattern Failed = PipelineExecutionStatus' "Failed"

pattern InProgress :: PipelineExecutionStatus
pattern InProgress = PipelineExecutionStatus' "InProgress"

pattern Stopped :: PipelineExecutionStatus
pattern Stopped = PipelineExecutionStatus' "Stopped"

pattern Stopping :: PipelineExecutionStatus
pattern Stopping = PipelineExecutionStatus' "Stopping"

pattern Succeeded :: PipelineExecutionStatus
pattern Succeeded = PipelineExecutionStatus' "Succeeded"

pattern Superseded :: PipelineExecutionStatus
pattern Superseded = PipelineExecutionStatus' "Superseded"

{-# COMPLETE
  Failed,
  InProgress,
  Stopped,
  Stopping,
  Succeeded,
  Superseded,
  PipelineExecutionStatus'
  #-}
