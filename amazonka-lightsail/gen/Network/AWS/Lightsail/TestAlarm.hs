{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.TestAlarm
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Tests an alarm by displaying a banner on the Amazon Lightsail console.
-- If a notification trigger is configured for the specified alarm, the
-- test also sends a notification to the notification protocol (@Email@
-- and\/or @SMS@) configured for the alarm.
--
-- An alarm is used to monitor a single metric for one of your resources.
-- When a metric condition is met, the alarm can notify you by email, SMS
-- text message, and a banner displayed on the Amazon Lightsail console.
-- For more information, see
-- <https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-alarms Alarms in Amazon Lightsail>.
module Network.AWS.Lightsail.TestAlarm
  ( -- * Creating a Request
    TestAlarm (..),
    newTestAlarm,

    -- * Request Lenses
    testAlarm_alarmName,
    testAlarm_state,

    -- * Destructuring the Response
    TestAlarmResponse (..),
    newTestAlarmResponse,

    -- * Response Lenses
    testAlarmResponse_operations,
    testAlarmResponse_httpStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import Network.AWS.Lightsail.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newTestAlarm' smart constructor.
data TestAlarm = TestAlarm'
  { -- | The name of the alarm to test.
    alarmName :: Prelude.Text,
    -- | The alarm state to test.
    --
    -- An alarm has the following possible states that can be tested:
    --
    -- -   @ALARM@ - The metric is outside of the defined threshold.
    --
    -- -   @INSUFFICIENT_DATA@ - The alarm has just started, the metric is not
    --     available, or not enough data is available for the metric to
    --     determine the alarm state.
    --
    -- -   @OK@ - The metric is within the defined threshold.
    state :: AlarmState
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'TestAlarm' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'alarmName', 'testAlarm_alarmName' - The name of the alarm to test.
--
-- 'state', 'testAlarm_state' - The alarm state to test.
--
-- An alarm has the following possible states that can be tested:
--
-- -   @ALARM@ - The metric is outside of the defined threshold.
--
-- -   @INSUFFICIENT_DATA@ - The alarm has just started, the metric is not
--     available, or not enough data is available for the metric to
--     determine the alarm state.
--
-- -   @OK@ - The metric is within the defined threshold.
newTestAlarm ::
  -- | 'alarmName'
  Prelude.Text ->
  -- | 'state'
  AlarmState ->
  TestAlarm
newTestAlarm pAlarmName_ pState_ =
  TestAlarm'
    { alarmName = pAlarmName_,
      state = pState_
    }

-- | The name of the alarm to test.
testAlarm_alarmName :: Lens.Lens' TestAlarm Prelude.Text
testAlarm_alarmName = Lens.lens (\TestAlarm' {alarmName} -> alarmName) (\s@TestAlarm' {} a -> s {alarmName = a} :: TestAlarm)

-- | The alarm state to test.
--
-- An alarm has the following possible states that can be tested:
--
-- -   @ALARM@ - The metric is outside of the defined threshold.
--
-- -   @INSUFFICIENT_DATA@ - The alarm has just started, the metric is not
--     available, or not enough data is available for the metric to
--     determine the alarm state.
--
-- -   @OK@ - The metric is within the defined threshold.
testAlarm_state :: Lens.Lens' TestAlarm AlarmState
testAlarm_state = Lens.lens (\TestAlarm' {state} -> state) (\s@TestAlarm' {} a -> s {state = a} :: TestAlarm)

instance Prelude.AWSRequest TestAlarm where
  type Rs TestAlarm = TestAlarmResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          TestAlarmResponse'
            Prelude.<$> ( x Prelude..?> "operations"
                            Prelude..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable TestAlarm

instance Prelude.NFData TestAlarm

instance Prelude.ToHeaders TestAlarm where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "Lightsail_20161128.TestAlarm" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON TestAlarm where
  toJSON TestAlarm' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ Prelude.Just ("alarmName" Prelude..= alarmName),
            Prelude.Just ("state" Prelude..= state)
          ]
      )

instance Prelude.ToPath TestAlarm where
  toPath = Prelude.const "/"

instance Prelude.ToQuery TestAlarm where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newTestAlarmResponse' smart constructor.
data TestAlarmResponse = TestAlarmResponse'
  { -- | An array of objects that describe the result of the action, such as the
    -- status of the request, the timestamp of the request, and the resources
    -- affected by the request.
    operations :: Prelude.Maybe [Operation],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'TestAlarmResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'operations', 'testAlarmResponse_operations' - An array of objects that describe the result of the action, such as the
-- status of the request, the timestamp of the request, and the resources
-- affected by the request.
--
-- 'httpStatus', 'testAlarmResponse_httpStatus' - The response's http status code.
newTestAlarmResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  TestAlarmResponse
newTestAlarmResponse pHttpStatus_ =
  TestAlarmResponse'
    { operations = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | An array of objects that describe the result of the action, such as the
-- status of the request, the timestamp of the request, and the resources
-- affected by the request.
testAlarmResponse_operations :: Lens.Lens' TestAlarmResponse (Prelude.Maybe [Operation])
testAlarmResponse_operations = Lens.lens (\TestAlarmResponse' {operations} -> operations) (\s@TestAlarmResponse' {} a -> s {operations = a} :: TestAlarmResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | The response's http status code.
testAlarmResponse_httpStatus :: Lens.Lens' TestAlarmResponse Prelude.Int
testAlarmResponse_httpStatus = Lens.lens (\TestAlarmResponse' {httpStatus} -> httpStatus) (\s@TestAlarmResponse' {} a -> s {httpStatus = a} :: TestAlarmResponse)

instance Prelude.NFData TestAlarmResponse
