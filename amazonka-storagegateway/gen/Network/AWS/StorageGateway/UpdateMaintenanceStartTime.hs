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
-- Module      : Network.AWS.StorageGateway.UpdateMaintenanceStartTime
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a gateway\'s weekly maintenance start time information,
-- including day and time of the week. The maintenance time is the time in
-- your gateway\'s time zone.
module Network.AWS.StorageGateway.UpdateMaintenanceStartTime
  ( -- * Creating a Request
    UpdateMaintenanceStartTime (..),
    newUpdateMaintenanceStartTime,

    -- * Request Lenses
    updateMaintenanceStartTime_dayOfWeek,
    updateMaintenanceStartTime_dayOfMonth,
    updateMaintenanceStartTime_gatewayARN,
    updateMaintenanceStartTime_hourOfDay,
    updateMaintenanceStartTime_minuteOfHour,

    -- * Destructuring the Response
    UpdateMaintenanceStartTimeResponse (..),
    newUpdateMaintenanceStartTimeResponse,

    -- * Response Lenses
    updateMaintenanceStartTimeResponse_gatewayARN,
    updateMaintenanceStartTimeResponse_httpStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.StorageGateway.Types

-- | A JSON object containing the following fields:
--
-- -   UpdateMaintenanceStartTimeInput$DayOfMonth
--
-- -   UpdateMaintenanceStartTimeInput$DayOfWeek
--
-- -   UpdateMaintenanceStartTimeInput$HourOfDay
--
-- -   UpdateMaintenanceStartTimeInput$MinuteOfHour
--
-- /See:/ 'newUpdateMaintenanceStartTime' smart constructor.
data UpdateMaintenanceStartTime = UpdateMaintenanceStartTime'
  { -- | The day of the week component of the maintenance start time week
    -- represented as an ordinal number from 0 to 6, where 0 represents Sunday
    -- and 6 Saturday.
    dayOfWeek :: Prelude.Maybe Prelude.Natural,
    -- | The day of the month component of the maintenance start time represented
    -- as an ordinal number from 1 to 28, where 1 represents the first day of
    -- the month and 28 represents the last day of the month.
    dayOfMonth :: Prelude.Maybe Prelude.Natural,
    gatewayARN :: Prelude.Text,
    -- | The hour component of the maintenance start time represented as /hh/,
    -- where /hh/ is the hour (00 to 23). The hour of the day is in the time
    -- zone of the gateway.
    hourOfDay :: Prelude.Natural,
    -- | The minute component of the maintenance start time represented as /mm/,
    -- where /mm/ is the minute (00 to 59). The minute of the hour is in the
    -- time zone of the gateway.
    minuteOfHour :: Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'UpdateMaintenanceStartTime' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dayOfWeek', 'updateMaintenanceStartTime_dayOfWeek' - The day of the week component of the maintenance start time week
-- represented as an ordinal number from 0 to 6, where 0 represents Sunday
-- and 6 Saturday.
--
-- 'dayOfMonth', 'updateMaintenanceStartTime_dayOfMonth' - The day of the month component of the maintenance start time represented
-- as an ordinal number from 1 to 28, where 1 represents the first day of
-- the month and 28 represents the last day of the month.
--
-- 'gatewayARN', 'updateMaintenanceStartTime_gatewayARN' - Undocumented member.
--
-- 'hourOfDay', 'updateMaintenanceStartTime_hourOfDay' - The hour component of the maintenance start time represented as /hh/,
-- where /hh/ is the hour (00 to 23). The hour of the day is in the time
-- zone of the gateway.
--
-- 'minuteOfHour', 'updateMaintenanceStartTime_minuteOfHour' - The minute component of the maintenance start time represented as /mm/,
-- where /mm/ is the minute (00 to 59). The minute of the hour is in the
-- time zone of the gateway.
newUpdateMaintenanceStartTime ::
  -- | 'gatewayARN'
  Prelude.Text ->
  -- | 'hourOfDay'
  Prelude.Natural ->
  -- | 'minuteOfHour'
  Prelude.Natural ->
  UpdateMaintenanceStartTime
newUpdateMaintenanceStartTime
  pGatewayARN_
  pHourOfDay_
  pMinuteOfHour_ =
    UpdateMaintenanceStartTime'
      { dayOfWeek =
          Prelude.Nothing,
        dayOfMonth = Prelude.Nothing,
        gatewayARN = pGatewayARN_,
        hourOfDay = pHourOfDay_,
        minuteOfHour = pMinuteOfHour_
      }

-- | The day of the week component of the maintenance start time week
-- represented as an ordinal number from 0 to 6, where 0 represents Sunday
-- and 6 Saturday.
updateMaintenanceStartTime_dayOfWeek :: Lens.Lens' UpdateMaintenanceStartTime (Prelude.Maybe Prelude.Natural)
updateMaintenanceStartTime_dayOfWeek = Lens.lens (\UpdateMaintenanceStartTime' {dayOfWeek} -> dayOfWeek) (\s@UpdateMaintenanceStartTime' {} a -> s {dayOfWeek = a} :: UpdateMaintenanceStartTime)

-- | The day of the month component of the maintenance start time represented
-- as an ordinal number from 1 to 28, where 1 represents the first day of
-- the month and 28 represents the last day of the month.
updateMaintenanceStartTime_dayOfMonth :: Lens.Lens' UpdateMaintenanceStartTime (Prelude.Maybe Prelude.Natural)
updateMaintenanceStartTime_dayOfMonth = Lens.lens (\UpdateMaintenanceStartTime' {dayOfMonth} -> dayOfMonth) (\s@UpdateMaintenanceStartTime' {} a -> s {dayOfMonth = a} :: UpdateMaintenanceStartTime)

-- | Undocumented member.
updateMaintenanceStartTime_gatewayARN :: Lens.Lens' UpdateMaintenanceStartTime Prelude.Text
updateMaintenanceStartTime_gatewayARN = Lens.lens (\UpdateMaintenanceStartTime' {gatewayARN} -> gatewayARN) (\s@UpdateMaintenanceStartTime' {} a -> s {gatewayARN = a} :: UpdateMaintenanceStartTime)

-- | The hour component of the maintenance start time represented as /hh/,
-- where /hh/ is the hour (00 to 23). The hour of the day is in the time
-- zone of the gateway.
updateMaintenanceStartTime_hourOfDay :: Lens.Lens' UpdateMaintenanceStartTime Prelude.Natural
updateMaintenanceStartTime_hourOfDay = Lens.lens (\UpdateMaintenanceStartTime' {hourOfDay} -> hourOfDay) (\s@UpdateMaintenanceStartTime' {} a -> s {hourOfDay = a} :: UpdateMaintenanceStartTime)

-- | The minute component of the maintenance start time represented as /mm/,
-- where /mm/ is the minute (00 to 59). The minute of the hour is in the
-- time zone of the gateway.
updateMaintenanceStartTime_minuteOfHour :: Lens.Lens' UpdateMaintenanceStartTime Prelude.Natural
updateMaintenanceStartTime_minuteOfHour = Lens.lens (\UpdateMaintenanceStartTime' {minuteOfHour} -> minuteOfHour) (\s@UpdateMaintenanceStartTime' {} a -> s {minuteOfHour = a} :: UpdateMaintenanceStartTime)

instance
  Prelude.AWSRequest
    UpdateMaintenanceStartTime
  where
  type
    Rs UpdateMaintenanceStartTime =
      UpdateMaintenanceStartTimeResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateMaintenanceStartTimeResponse'
            Prelude.<$> (x Prelude..?> "GatewayARN")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateMaintenanceStartTime

instance Prelude.NFData UpdateMaintenanceStartTime

instance Prelude.ToHeaders UpdateMaintenanceStartTime where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "StorageGateway_20130630.UpdateMaintenanceStartTime" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON UpdateMaintenanceStartTime where
  toJSON UpdateMaintenanceStartTime' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("DayOfWeek" Prelude..=) Prelude.<$> dayOfWeek,
            ("DayOfMonth" Prelude..=) Prelude.<$> dayOfMonth,
            Prelude.Just ("GatewayARN" Prelude..= gatewayARN),
            Prelude.Just ("HourOfDay" Prelude..= hourOfDay),
            Prelude.Just
              ("MinuteOfHour" Prelude..= minuteOfHour)
          ]
      )

instance Prelude.ToPath UpdateMaintenanceStartTime where
  toPath = Prelude.const "/"

instance Prelude.ToQuery UpdateMaintenanceStartTime where
  toQuery = Prelude.const Prelude.mempty

-- | A JSON object containing the Amazon Resource Name (ARN) of the gateway
-- whose maintenance start time is updated.
--
-- /See:/ 'newUpdateMaintenanceStartTimeResponse' smart constructor.
data UpdateMaintenanceStartTimeResponse = UpdateMaintenanceStartTimeResponse'
  { gatewayARN :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'UpdateMaintenanceStartTimeResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'gatewayARN', 'updateMaintenanceStartTimeResponse_gatewayARN' - Undocumented member.
--
-- 'httpStatus', 'updateMaintenanceStartTimeResponse_httpStatus' - The response's http status code.
newUpdateMaintenanceStartTimeResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateMaintenanceStartTimeResponse
newUpdateMaintenanceStartTimeResponse pHttpStatus_ =
  UpdateMaintenanceStartTimeResponse'
    { gatewayARN =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
updateMaintenanceStartTimeResponse_gatewayARN :: Lens.Lens' UpdateMaintenanceStartTimeResponse (Prelude.Maybe Prelude.Text)
updateMaintenanceStartTimeResponse_gatewayARN = Lens.lens (\UpdateMaintenanceStartTimeResponse' {gatewayARN} -> gatewayARN) (\s@UpdateMaintenanceStartTimeResponse' {} a -> s {gatewayARN = a} :: UpdateMaintenanceStartTimeResponse)

-- | The response's http status code.
updateMaintenanceStartTimeResponse_httpStatus :: Lens.Lens' UpdateMaintenanceStartTimeResponse Prelude.Int
updateMaintenanceStartTimeResponse_httpStatus = Lens.lens (\UpdateMaintenanceStartTimeResponse' {httpStatus} -> httpStatus) (\s@UpdateMaintenanceStartTimeResponse' {} a -> s {httpStatus = a} :: UpdateMaintenanceStartTimeResponse)

instance
  Prelude.NFData
    UpdateMaintenanceStartTimeResponse
