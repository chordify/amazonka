{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.CloudwatchAlarmAction
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.CloudwatchAlarmAction
  ( CloudwatchAlarmAction (..),

    -- * Smart constructor
    mkCloudwatchAlarmAction,

    -- * Lenses
    caaRoleARN,
    caaAlarmName,
    caaStateReason,
    caaStateValue,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | Describes an action that updates a CloudWatch alarm.
--
-- /See:/ 'mkCloudwatchAlarmAction' smart constructor.
data CloudwatchAlarmAction = CloudwatchAlarmAction'
  { roleARN ::
      Lude.Text,
    alarmName :: Lude.Text,
    stateReason :: Lude.Text,
    stateValue :: Lude.Text
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'CloudwatchAlarmAction' with the minimum fields required to make a request.
--
-- * 'alarmName' - The CloudWatch alarm name.
-- * 'roleARN' - The IAM role that allows access to the CloudWatch alarm.
-- * 'stateReason' - The reason for the alarm change.
-- * 'stateValue' - The value of the alarm state. Acceptable values are: OK, ALARM, INSUFFICIENT_DATA.
mkCloudwatchAlarmAction ::
  -- | 'roleARN'
  Lude.Text ->
  -- | 'alarmName'
  Lude.Text ->
  -- | 'stateReason'
  Lude.Text ->
  -- | 'stateValue'
  Lude.Text ->
  CloudwatchAlarmAction
mkCloudwatchAlarmAction
  pRoleARN_
  pAlarmName_
  pStateReason_
  pStateValue_ =
    CloudwatchAlarmAction'
      { roleARN = pRoleARN_,
        alarmName = pAlarmName_,
        stateReason = pStateReason_,
        stateValue = pStateValue_
      }

-- | The IAM role that allows access to the CloudWatch alarm.
--
-- /Note:/ Consider using 'roleARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
caaRoleARN :: Lens.Lens' CloudwatchAlarmAction Lude.Text
caaRoleARN = Lens.lens (roleARN :: CloudwatchAlarmAction -> Lude.Text) (\s a -> s {roleARN = a} :: CloudwatchAlarmAction)
{-# DEPRECATED caaRoleARN "Use generic-lens or generic-optics with 'roleARN' instead." #-}

-- | The CloudWatch alarm name.
--
-- /Note:/ Consider using 'alarmName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
caaAlarmName :: Lens.Lens' CloudwatchAlarmAction Lude.Text
caaAlarmName = Lens.lens (alarmName :: CloudwatchAlarmAction -> Lude.Text) (\s a -> s {alarmName = a} :: CloudwatchAlarmAction)
{-# DEPRECATED caaAlarmName "Use generic-lens or generic-optics with 'alarmName' instead." #-}

-- | The reason for the alarm change.
--
-- /Note:/ Consider using 'stateReason' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
caaStateReason :: Lens.Lens' CloudwatchAlarmAction Lude.Text
caaStateReason = Lens.lens (stateReason :: CloudwatchAlarmAction -> Lude.Text) (\s a -> s {stateReason = a} :: CloudwatchAlarmAction)
{-# DEPRECATED caaStateReason "Use generic-lens or generic-optics with 'stateReason' instead." #-}

-- | The value of the alarm state. Acceptable values are: OK, ALARM, INSUFFICIENT_DATA.
--
-- /Note:/ Consider using 'stateValue' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
caaStateValue :: Lens.Lens' CloudwatchAlarmAction Lude.Text
caaStateValue = Lens.lens (stateValue :: CloudwatchAlarmAction -> Lude.Text) (\s a -> s {stateValue = a} :: CloudwatchAlarmAction)
{-# DEPRECATED caaStateValue "Use generic-lens or generic-optics with 'stateValue' instead." #-}

instance Lude.FromJSON CloudwatchAlarmAction where
  parseJSON =
    Lude.withObject
      "CloudwatchAlarmAction"
      ( \x ->
          CloudwatchAlarmAction'
            Lude.<$> (x Lude..: "roleArn")
            Lude.<*> (x Lude..: "alarmName")
            Lude.<*> (x Lude..: "stateReason")
            Lude.<*> (x Lude..: "stateValue")
      )

instance Lude.ToJSON CloudwatchAlarmAction where
  toJSON CloudwatchAlarmAction' {..} =
    Lude.object
      ( Lude.catMaybes
          [ Lude.Just ("roleArn" Lude..= roleARN),
            Lude.Just ("alarmName" Lude..= alarmName),
            Lude.Just ("stateReason" Lude..= stateReason),
            Lude.Just ("stateValue" Lude..= stateValue)
          ]
      )
