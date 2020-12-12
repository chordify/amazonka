{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.FlowDefinitionSummary
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.FlowDefinitionSummary
  ( FlowDefinitionSummary (..),

    -- * Smart constructor
    mkFlowDefinitionSummary,

    -- * Lenses
    fdsFailureReason,
    fdsFlowDefinitionName,
    fdsFlowDefinitionARN,
    fdsFlowDefinitionStatus,
    fdsCreationTime,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import Network.AWS.SageMaker.Types.FlowDefinitionStatus

-- | Contains summary information about the flow definition.
--
-- /See:/ 'mkFlowDefinitionSummary' smart constructor.
data FlowDefinitionSummary = FlowDefinitionSummary'
  { failureReason ::
      Lude.Maybe Lude.Text,
    flowDefinitionName :: Lude.Text,
    flowDefinitionARN :: Lude.Text,
    flowDefinitionStatus :: FlowDefinitionStatus,
    creationTime :: Lude.Timestamp
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'FlowDefinitionSummary' with the minimum fields required to make a request.
--
-- * 'creationTime' - The timestamp when SageMaker created the flow definition.
-- * 'failureReason' - The reason why the flow definition creation failed. A failure reason is returned only when the flow definition status is @Failed@ .
-- * 'flowDefinitionARN' - The Amazon Resource Name (ARN) of the flow definition.
-- * 'flowDefinitionName' - The name of the flow definition.
-- * 'flowDefinitionStatus' - The status of the flow definition. Valid values:
mkFlowDefinitionSummary ::
  -- | 'flowDefinitionName'
  Lude.Text ->
  -- | 'flowDefinitionARN'
  Lude.Text ->
  -- | 'flowDefinitionStatus'
  FlowDefinitionStatus ->
  -- | 'creationTime'
  Lude.Timestamp ->
  FlowDefinitionSummary
mkFlowDefinitionSummary
  pFlowDefinitionName_
  pFlowDefinitionARN_
  pFlowDefinitionStatus_
  pCreationTime_ =
    FlowDefinitionSummary'
      { failureReason = Lude.Nothing,
        flowDefinitionName = pFlowDefinitionName_,
        flowDefinitionARN = pFlowDefinitionARN_,
        flowDefinitionStatus = pFlowDefinitionStatus_,
        creationTime = pCreationTime_
      }

-- | The reason why the flow definition creation failed. A failure reason is returned only when the flow definition status is @Failed@ .
--
-- /Note:/ Consider using 'failureReason' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
fdsFailureReason :: Lens.Lens' FlowDefinitionSummary (Lude.Maybe Lude.Text)
fdsFailureReason = Lens.lens (failureReason :: FlowDefinitionSummary -> Lude.Maybe Lude.Text) (\s a -> s {failureReason = a} :: FlowDefinitionSummary)
{-# DEPRECATED fdsFailureReason "Use generic-lens or generic-optics with 'failureReason' instead." #-}

-- | The name of the flow definition.
--
-- /Note:/ Consider using 'flowDefinitionName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
fdsFlowDefinitionName :: Lens.Lens' FlowDefinitionSummary Lude.Text
fdsFlowDefinitionName = Lens.lens (flowDefinitionName :: FlowDefinitionSummary -> Lude.Text) (\s a -> s {flowDefinitionName = a} :: FlowDefinitionSummary)
{-# DEPRECATED fdsFlowDefinitionName "Use generic-lens or generic-optics with 'flowDefinitionName' instead." #-}

-- | The Amazon Resource Name (ARN) of the flow definition.
--
-- /Note:/ Consider using 'flowDefinitionARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
fdsFlowDefinitionARN :: Lens.Lens' FlowDefinitionSummary Lude.Text
fdsFlowDefinitionARN = Lens.lens (flowDefinitionARN :: FlowDefinitionSummary -> Lude.Text) (\s a -> s {flowDefinitionARN = a} :: FlowDefinitionSummary)
{-# DEPRECATED fdsFlowDefinitionARN "Use generic-lens or generic-optics with 'flowDefinitionARN' instead." #-}

-- | The status of the flow definition. Valid values:
--
-- /Note:/ Consider using 'flowDefinitionStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
fdsFlowDefinitionStatus :: Lens.Lens' FlowDefinitionSummary FlowDefinitionStatus
fdsFlowDefinitionStatus = Lens.lens (flowDefinitionStatus :: FlowDefinitionSummary -> FlowDefinitionStatus) (\s a -> s {flowDefinitionStatus = a} :: FlowDefinitionSummary)
{-# DEPRECATED fdsFlowDefinitionStatus "Use generic-lens or generic-optics with 'flowDefinitionStatus' instead." #-}

-- | The timestamp when SageMaker created the flow definition.
--
-- /Note:/ Consider using 'creationTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
fdsCreationTime :: Lens.Lens' FlowDefinitionSummary Lude.Timestamp
fdsCreationTime = Lens.lens (creationTime :: FlowDefinitionSummary -> Lude.Timestamp) (\s a -> s {creationTime = a} :: FlowDefinitionSummary)
{-# DEPRECATED fdsCreationTime "Use generic-lens or generic-optics with 'creationTime' instead." #-}

instance Lude.FromJSON FlowDefinitionSummary where
  parseJSON =
    Lude.withObject
      "FlowDefinitionSummary"
      ( \x ->
          FlowDefinitionSummary'
            Lude.<$> (x Lude..:? "FailureReason")
            Lude.<*> (x Lude..: "FlowDefinitionName")
            Lude.<*> (x Lude..: "FlowDefinitionArn")
            Lude.<*> (x Lude..: "FlowDefinitionStatus")
            Lude.<*> (x Lude..: "CreationTime")
      )
