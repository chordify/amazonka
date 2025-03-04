{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SWF.Types.RequestCancelExternalWorkflowExecutionFailedEventAttributes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SWF.Types.RequestCancelExternalWorkflowExecutionFailedEventAttributes where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.SWF.Types.RequestCancelExternalWorkflowExecutionFailedCause

-- | Provides the details of the
-- @RequestCancelExternalWorkflowExecutionFailed@ event.
--
-- /See:/ 'newRequestCancelExternalWorkflowExecutionFailedEventAttributes' smart constructor.
data RequestCancelExternalWorkflowExecutionFailedEventAttributes = RequestCancelExternalWorkflowExecutionFailedEventAttributes'
  { -- | The @runId@ of the external workflow execution.
    runId :: Prelude.Maybe Prelude.Text,
    -- | The data attached to the event that the decider can use in subsequent
    -- workflow tasks. This data isn\'t sent to the workflow execution.
    control :: Prelude.Maybe Prelude.Text,
    -- | The @workflowId@ of the external workflow to which the cancel request
    -- was to be delivered.
    workflowId :: Prelude.Text,
    -- | The cause of the failure. This information is generated by the system
    -- and can be useful for diagnostic purposes.
    --
    -- If @cause@ is set to @OPERATION_NOT_PERMITTED@, the decision failed
    -- because it lacked sufficient permissions. For details and example IAM
    -- policies, see
    -- <https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html Using IAM to Manage Access to Amazon SWF Workflows>
    -- in the /Amazon SWF Developer Guide/.
    cause :: RequestCancelExternalWorkflowExecutionFailedCause,
    -- | The ID of the @RequestCancelExternalWorkflowExecutionInitiated@ event
    -- corresponding to the @RequestCancelExternalWorkflowExecution@ decision
    -- to cancel this external workflow execution. This information can be
    -- useful for diagnosing problems by tracing back the chain of events
    -- leading up to this event.
    initiatedEventId :: Prelude.Integer,
    -- | The ID of the @DecisionTaskCompleted@ event corresponding to the
    -- decision task that resulted in the
    -- @RequestCancelExternalWorkflowExecution@ decision for this cancellation
    -- request. This information can be useful for diagnosing problems by
    -- tracing back the chain of events leading up to this event.
    decisionTaskCompletedEventId :: Prelude.Integer
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'RequestCancelExternalWorkflowExecutionFailedEventAttributes' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'runId', 'requestCancelExternalWorkflowExecutionFailedEventAttributes_runId' - The @runId@ of the external workflow execution.
--
-- 'control', 'requestCancelExternalWorkflowExecutionFailedEventAttributes_control' - The data attached to the event that the decider can use in subsequent
-- workflow tasks. This data isn\'t sent to the workflow execution.
--
-- 'workflowId', 'requestCancelExternalWorkflowExecutionFailedEventAttributes_workflowId' - The @workflowId@ of the external workflow to which the cancel request
-- was to be delivered.
--
-- 'cause', 'requestCancelExternalWorkflowExecutionFailedEventAttributes_cause' - The cause of the failure. This information is generated by the system
-- and can be useful for diagnostic purposes.
--
-- If @cause@ is set to @OPERATION_NOT_PERMITTED@, the decision failed
-- because it lacked sufficient permissions. For details and example IAM
-- policies, see
-- <https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html Using IAM to Manage Access to Amazon SWF Workflows>
-- in the /Amazon SWF Developer Guide/.
--
-- 'initiatedEventId', 'requestCancelExternalWorkflowExecutionFailedEventAttributes_initiatedEventId' - The ID of the @RequestCancelExternalWorkflowExecutionInitiated@ event
-- corresponding to the @RequestCancelExternalWorkflowExecution@ decision
-- to cancel this external workflow execution. This information can be
-- useful for diagnosing problems by tracing back the chain of events
-- leading up to this event.
--
-- 'decisionTaskCompletedEventId', 'requestCancelExternalWorkflowExecutionFailedEventAttributes_decisionTaskCompletedEventId' - The ID of the @DecisionTaskCompleted@ event corresponding to the
-- decision task that resulted in the
-- @RequestCancelExternalWorkflowExecution@ decision for this cancellation
-- request. This information can be useful for diagnosing problems by
-- tracing back the chain of events leading up to this event.
newRequestCancelExternalWorkflowExecutionFailedEventAttributes ::
  -- | 'workflowId'
  Prelude.Text ->
  -- | 'cause'
  RequestCancelExternalWorkflowExecutionFailedCause ->
  -- | 'initiatedEventId'
  Prelude.Integer ->
  -- | 'decisionTaskCompletedEventId'
  Prelude.Integer ->
  RequestCancelExternalWorkflowExecutionFailedEventAttributes
newRequestCancelExternalWorkflowExecutionFailedEventAttributes
  pWorkflowId_
  pCause_
  pInitiatedEventId_
  pDecisionTaskCompletedEventId_ =
    RequestCancelExternalWorkflowExecutionFailedEventAttributes'
      { runId =
          Prelude.Nothing,
        control =
          Prelude.Nothing,
        workflowId =
          pWorkflowId_,
        cause =
          pCause_,
        initiatedEventId =
          pInitiatedEventId_,
        decisionTaskCompletedEventId =
          pDecisionTaskCompletedEventId_
      }

-- | The @runId@ of the external workflow execution.
requestCancelExternalWorkflowExecutionFailedEventAttributes_runId :: Lens.Lens' RequestCancelExternalWorkflowExecutionFailedEventAttributes (Prelude.Maybe Prelude.Text)
requestCancelExternalWorkflowExecutionFailedEventAttributes_runId = Lens.lens (\RequestCancelExternalWorkflowExecutionFailedEventAttributes' {runId} -> runId) (\s@RequestCancelExternalWorkflowExecutionFailedEventAttributes' {} a -> s {runId = a} :: RequestCancelExternalWorkflowExecutionFailedEventAttributes)

-- | The data attached to the event that the decider can use in subsequent
-- workflow tasks. This data isn\'t sent to the workflow execution.
requestCancelExternalWorkflowExecutionFailedEventAttributes_control :: Lens.Lens' RequestCancelExternalWorkflowExecutionFailedEventAttributes (Prelude.Maybe Prelude.Text)
requestCancelExternalWorkflowExecutionFailedEventAttributes_control = Lens.lens (\RequestCancelExternalWorkflowExecutionFailedEventAttributes' {control} -> control) (\s@RequestCancelExternalWorkflowExecutionFailedEventAttributes' {} a -> s {control = a} :: RequestCancelExternalWorkflowExecutionFailedEventAttributes)

-- | The @workflowId@ of the external workflow to which the cancel request
-- was to be delivered.
requestCancelExternalWorkflowExecutionFailedEventAttributes_workflowId :: Lens.Lens' RequestCancelExternalWorkflowExecutionFailedEventAttributes Prelude.Text
requestCancelExternalWorkflowExecutionFailedEventAttributes_workflowId = Lens.lens (\RequestCancelExternalWorkflowExecutionFailedEventAttributes' {workflowId} -> workflowId) (\s@RequestCancelExternalWorkflowExecutionFailedEventAttributes' {} a -> s {workflowId = a} :: RequestCancelExternalWorkflowExecutionFailedEventAttributes)

-- | The cause of the failure. This information is generated by the system
-- and can be useful for diagnostic purposes.
--
-- If @cause@ is set to @OPERATION_NOT_PERMITTED@, the decision failed
-- because it lacked sufficient permissions. For details and example IAM
-- policies, see
-- <https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html Using IAM to Manage Access to Amazon SWF Workflows>
-- in the /Amazon SWF Developer Guide/.
requestCancelExternalWorkflowExecutionFailedEventAttributes_cause :: Lens.Lens' RequestCancelExternalWorkflowExecutionFailedEventAttributes RequestCancelExternalWorkflowExecutionFailedCause
requestCancelExternalWorkflowExecutionFailedEventAttributes_cause = Lens.lens (\RequestCancelExternalWorkflowExecutionFailedEventAttributes' {cause} -> cause) (\s@RequestCancelExternalWorkflowExecutionFailedEventAttributes' {} a -> s {cause = a} :: RequestCancelExternalWorkflowExecutionFailedEventAttributes)

-- | The ID of the @RequestCancelExternalWorkflowExecutionInitiated@ event
-- corresponding to the @RequestCancelExternalWorkflowExecution@ decision
-- to cancel this external workflow execution. This information can be
-- useful for diagnosing problems by tracing back the chain of events
-- leading up to this event.
requestCancelExternalWorkflowExecutionFailedEventAttributes_initiatedEventId :: Lens.Lens' RequestCancelExternalWorkflowExecutionFailedEventAttributes Prelude.Integer
requestCancelExternalWorkflowExecutionFailedEventAttributes_initiatedEventId = Lens.lens (\RequestCancelExternalWorkflowExecutionFailedEventAttributes' {initiatedEventId} -> initiatedEventId) (\s@RequestCancelExternalWorkflowExecutionFailedEventAttributes' {} a -> s {initiatedEventId = a} :: RequestCancelExternalWorkflowExecutionFailedEventAttributes)

-- | The ID of the @DecisionTaskCompleted@ event corresponding to the
-- decision task that resulted in the
-- @RequestCancelExternalWorkflowExecution@ decision for this cancellation
-- request. This information can be useful for diagnosing problems by
-- tracing back the chain of events leading up to this event.
requestCancelExternalWorkflowExecutionFailedEventAttributes_decisionTaskCompletedEventId :: Lens.Lens' RequestCancelExternalWorkflowExecutionFailedEventAttributes Prelude.Integer
requestCancelExternalWorkflowExecutionFailedEventAttributes_decisionTaskCompletedEventId = Lens.lens (\RequestCancelExternalWorkflowExecutionFailedEventAttributes' {decisionTaskCompletedEventId} -> decisionTaskCompletedEventId) (\s@RequestCancelExternalWorkflowExecutionFailedEventAttributes' {} a -> s {decisionTaskCompletedEventId = a} :: RequestCancelExternalWorkflowExecutionFailedEventAttributes)

instance
  Prelude.FromJSON
    RequestCancelExternalWorkflowExecutionFailedEventAttributes
  where
  parseJSON =
    Prelude.withObject
      "RequestCancelExternalWorkflowExecutionFailedEventAttributes"
      ( \x ->
          RequestCancelExternalWorkflowExecutionFailedEventAttributes'
            Prelude.<$> (x Prelude..:? "runId")
              Prelude.<*> (x Prelude..:? "control")
              Prelude.<*> (x Prelude..: "workflowId")
              Prelude.<*> (x Prelude..: "cause")
              Prelude.<*> (x Prelude..: "initiatedEventId")
              Prelude.<*> (x Prelude..: "decisionTaskCompletedEventId")
      )

instance
  Prelude.Hashable
    RequestCancelExternalWorkflowExecutionFailedEventAttributes

instance
  Prelude.NFData
    RequestCancelExternalWorkflowExecutionFailedEventAttributes
