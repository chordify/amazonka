{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SWF.Types.CancelTimerFailedEventAttributes
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SWF.Types.CancelTimerFailedEventAttributes
  ( CancelTimerFailedEventAttributes (..),

    -- * Smart constructor
    mkCancelTimerFailedEventAttributes,

    -- * Lenses
    ctfeaTimerId,
    ctfeaCause,
    ctfeaDecisionTaskCompletedEventId,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import Network.AWS.SWF.Types.CancelTimerFailedCause

-- | Provides the details of the @CancelTimerFailed@ event.
--
-- /See:/ 'mkCancelTimerFailedEventAttributes' smart constructor.
data CancelTimerFailedEventAttributes = CancelTimerFailedEventAttributes'
  { timerId ::
      Lude.Text,
    cause ::
      CancelTimerFailedCause,
    decisionTaskCompletedEventId ::
      Lude.Integer
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'CancelTimerFailedEventAttributes' with the minimum fields required to make a request.
--
-- * 'cause' - The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.
-- * 'decisionTaskCompletedEventId' - The ID of the @DecisionTaskCompleted@ event corresponding to the decision task that resulted in the @CancelTimer@ decision to cancel this timer. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.
-- * 'timerId' - The timerId provided in the @CancelTimer@ decision that failed.
mkCancelTimerFailedEventAttributes ::
  -- | 'timerId'
  Lude.Text ->
  -- | 'cause'
  CancelTimerFailedCause ->
  -- | 'decisionTaskCompletedEventId'
  Lude.Integer ->
  CancelTimerFailedEventAttributes
mkCancelTimerFailedEventAttributes
  pTimerId_
  pCause_
  pDecisionTaskCompletedEventId_ =
    CancelTimerFailedEventAttributes'
      { timerId = pTimerId_,
        cause = pCause_,
        decisionTaskCompletedEventId = pDecisionTaskCompletedEventId_
      }

-- | The timerId provided in the @CancelTimer@ decision that failed.
--
-- /Note:/ Consider using 'timerId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ctfeaTimerId :: Lens.Lens' CancelTimerFailedEventAttributes Lude.Text
ctfeaTimerId = Lens.lens (timerId :: CancelTimerFailedEventAttributes -> Lude.Text) (\s a -> s {timerId = a} :: CancelTimerFailedEventAttributes)
{-# DEPRECATED ctfeaTimerId "Use generic-lens or generic-optics with 'timerId' instead." #-}

-- | The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.
--
-- /Note:/ Consider using 'cause' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ctfeaCause :: Lens.Lens' CancelTimerFailedEventAttributes CancelTimerFailedCause
ctfeaCause = Lens.lens (cause :: CancelTimerFailedEventAttributes -> CancelTimerFailedCause) (\s a -> s {cause = a} :: CancelTimerFailedEventAttributes)
{-# DEPRECATED ctfeaCause "Use generic-lens or generic-optics with 'cause' instead." #-}

-- | The ID of the @DecisionTaskCompleted@ event corresponding to the decision task that resulted in the @CancelTimer@ decision to cancel this timer. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.
--
-- /Note:/ Consider using 'decisionTaskCompletedEventId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ctfeaDecisionTaskCompletedEventId :: Lens.Lens' CancelTimerFailedEventAttributes Lude.Integer
ctfeaDecisionTaskCompletedEventId = Lens.lens (decisionTaskCompletedEventId :: CancelTimerFailedEventAttributes -> Lude.Integer) (\s a -> s {decisionTaskCompletedEventId = a} :: CancelTimerFailedEventAttributes)
{-# DEPRECATED ctfeaDecisionTaskCompletedEventId "Use generic-lens or generic-optics with 'decisionTaskCompletedEventId' instead." #-}

instance Lude.FromJSON CancelTimerFailedEventAttributes where
  parseJSON =
    Lude.withObject
      "CancelTimerFailedEventAttributes"
      ( \x ->
          CancelTimerFailedEventAttributes'
            Lude.<$> (x Lude..: "timerId")
            Lude.<*> (x Lude..: "cause")
            Lude.<*> (x Lude..: "decisionTaskCompletedEventId")
      )
