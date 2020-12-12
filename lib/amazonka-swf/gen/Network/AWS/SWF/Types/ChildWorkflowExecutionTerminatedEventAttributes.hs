{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SWF.Types.ChildWorkflowExecutionTerminatedEventAttributes
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SWF.Types.ChildWorkflowExecutionTerminatedEventAttributes
  ( ChildWorkflowExecutionTerminatedEventAttributes (..),

    -- * Smart constructor
    mkChildWorkflowExecutionTerminatedEventAttributes,

    -- * Lenses
    cweteaWorkflowExecution,
    cweteaWorkflowType,
    cweteaInitiatedEventId,
    cweteaStartedEventId,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import Network.AWS.SWF.Types.WorkflowExecution
import Network.AWS.SWF.Types.WorkflowType

-- | Provides the details of the @ChildWorkflowExecutionTerminated@ event.
--
-- /See:/ 'mkChildWorkflowExecutionTerminatedEventAttributes' smart constructor.
data ChildWorkflowExecutionTerminatedEventAttributes = ChildWorkflowExecutionTerminatedEventAttributes'
  { workflowExecution ::
      WorkflowExecution,
    workflowType ::
      WorkflowType,
    initiatedEventId ::
      Lude.Integer,
    startedEventId ::
      Lude.Integer
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass
    ( Lude.Hashable,
      Lude.NFData
    )

-- | Creates a value of 'ChildWorkflowExecutionTerminatedEventAttributes' with the minimum fields required to make a request.
--
-- * 'initiatedEventId' - The ID of the @StartChildWorkflowExecutionInitiated@ event corresponding to the @StartChildWorkflowExecution@ 'Decision' to start this child workflow execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.
-- * 'startedEventId' - The ID of the @ChildWorkflowExecutionStarted@ event recorded when this child workflow execution was started. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.
-- * 'workflowExecution' - The child workflow execution that was terminated.
-- * 'workflowType' - The type of the child workflow execution.
mkChildWorkflowExecutionTerminatedEventAttributes ::
  -- | 'workflowExecution'
  WorkflowExecution ->
  -- | 'workflowType'
  WorkflowType ->
  -- | 'initiatedEventId'
  Lude.Integer ->
  -- | 'startedEventId'
  Lude.Integer ->
  ChildWorkflowExecutionTerminatedEventAttributes
mkChildWorkflowExecutionTerminatedEventAttributes
  pWorkflowExecution_
  pWorkflowType_
  pInitiatedEventId_
  pStartedEventId_ =
    ChildWorkflowExecutionTerminatedEventAttributes'
      { workflowExecution =
          pWorkflowExecution_,
        workflowType = pWorkflowType_,
        initiatedEventId = pInitiatedEventId_,
        startedEventId = pStartedEventId_
      }

-- | The child workflow execution that was terminated.
--
-- /Note:/ Consider using 'workflowExecution' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cweteaWorkflowExecution :: Lens.Lens' ChildWorkflowExecutionTerminatedEventAttributes WorkflowExecution
cweteaWorkflowExecution = Lens.lens (workflowExecution :: ChildWorkflowExecutionTerminatedEventAttributes -> WorkflowExecution) (\s a -> s {workflowExecution = a} :: ChildWorkflowExecutionTerminatedEventAttributes)
{-# DEPRECATED cweteaWorkflowExecution "Use generic-lens or generic-optics with 'workflowExecution' instead." #-}

-- | The type of the child workflow execution.
--
-- /Note:/ Consider using 'workflowType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cweteaWorkflowType :: Lens.Lens' ChildWorkflowExecutionTerminatedEventAttributes WorkflowType
cweteaWorkflowType = Lens.lens (workflowType :: ChildWorkflowExecutionTerminatedEventAttributes -> WorkflowType) (\s a -> s {workflowType = a} :: ChildWorkflowExecutionTerminatedEventAttributes)
{-# DEPRECATED cweteaWorkflowType "Use generic-lens or generic-optics with 'workflowType' instead." #-}

-- | The ID of the @StartChildWorkflowExecutionInitiated@ event corresponding to the @StartChildWorkflowExecution@ 'Decision' to start this child workflow execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.
--
-- /Note:/ Consider using 'initiatedEventId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cweteaInitiatedEventId :: Lens.Lens' ChildWorkflowExecutionTerminatedEventAttributes Lude.Integer
cweteaInitiatedEventId = Lens.lens (initiatedEventId :: ChildWorkflowExecutionTerminatedEventAttributes -> Lude.Integer) (\s a -> s {initiatedEventId = a} :: ChildWorkflowExecutionTerminatedEventAttributes)
{-# DEPRECATED cweteaInitiatedEventId "Use generic-lens or generic-optics with 'initiatedEventId' instead." #-}

-- | The ID of the @ChildWorkflowExecutionStarted@ event recorded when this child workflow execution was started. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.
--
-- /Note:/ Consider using 'startedEventId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cweteaStartedEventId :: Lens.Lens' ChildWorkflowExecutionTerminatedEventAttributes Lude.Integer
cweteaStartedEventId = Lens.lens (startedEventId :: ChildWorkflowExecutionTerminatedEventAttributes -> Lude.Integer) (\s a -> s {startedEventId = a} :: ChildWorkflowExecutionTerminatedEventAttributes)
{-# DEPRECATED cweteaStartedEventId "Use generic-lens or generic-optics with 'startedEventId' instead." #-}

instance
  Lude.FromJSON
    ChildWorkflowExecutionTerminatedEventAttributes
  where
  parseJSON =
    Lude.withObject
      "ChildWorkflowExecutionTerminatedEventAttributes"
      ( \x ->
          ChildWorkflowExecutionTerminatedEventAttributes'
            Lude.<$> (x Lude..: "workflowExecution")
            Lude.<*> (x Lude..: "workflowType")
            Lude.<*> (x Lude..: "initiatedEventId")
            Lude.<*> (x Lude..: "startedEventId")
      )
