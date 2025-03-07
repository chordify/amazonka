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
-- Module      : Network.AWS.CloudWatch.GetMetricData
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- You can use the @GetMetricData@ API to retrieve as many as 500 different
-- metrics in a single request, with a total of as many as 100,800 data
-- points. You can also optionally perform math expressions on the values
-- of the returned statistics, to create new time series that represent new
-- insights into your data. For example, using Lambda metrics, you could
-- divide the Errors metric by the Invocations metric to get an error rate
-- time series. For more information about metric math expressions, see
-- <https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/using-metric-math.html#metric-math-syntax Metric Math Syntax and Functions>
-- in the /Amazon CloudWatch User Guide/.
--
-- Calls to the @GetMetricData@ API have a different pricing structure than
-- calls to @GetMetricStatistics@. For more information about pricing, see
-- <https://aws.amazon.com/cloudwatch/pricing/ Amazon CloudWatch Pricing>.
--
-- Amazon CloudWatch retains metric data as follows:
--
-- -   Data points with a period of less than 60 seconds are available for
--     3 hours. These data points are high-resolution metrics and are
--     available only for custom metrics that have been defined with a
--     @StorageResolution@ of 1.
--
-- -   Data points with a period of 60 seconds (1-minute) are available for
--     15 days.
--
-- -   Data points with a period of 300 seconds (5-minute) are available
--     for 63 days.
--
-- -   Data points with a period of 3600 seconds (1 hour) are available for
--     455 days (15 months).
--
-- Data points that are initially published with a shorter period are
-- aggregated together for long-term storage. For example, if you collect
-- data using a period of 1 minute, the data remains available for 15 days
-- with 1-minute resolution. After 15 days, this data is still available,
-- but is aggregated and retrievable only with a resolution of 5 minutes.
-- After 63 days, the data is further aggregated and is available with a
-- resolution of 1 hour.
--
-- If you omit @Unit@ in your request, all data that was collected with any
-- unit is returned, along with the corresponding units that were specified
-- when the data was reported to CloudWatch. If you specify a unit, the
-- operation returns only data that was collected with that unit specified.
-- If you specify a unit that does not match the data collected, the
-- results of the operation are null. CloudWatch does not perform unit
-- conversions.
--
-- This operation returns paginated results.
module Network.AWS.CloudWatch.GetMetricData
  ( -- * Creating a Request
    GetMetricData (..),
    newGetMetricData,

    -- * Request Lenses
    getMetricData_nextToken,
    getMetricData_scanBy,
    getMetricData_labelOptions,
    getMetricData_maxDatapoints,
    getMetricData_metricDataQueries,
    getMetricData_startTime,
    getMetricData_endTime,

    -- * Destructuring the Response
    GetMetricDataResponse (..),
    newGetMetricDataResponse,

    -- * Response Lenses
    getMetricDataResponse_nextToken,
    getMetricDataResponse_metricDataResults,
    getMetricDataResponse_messages,
    getMetricDataResponse_httpStatus,
  )
where

import Network.AWS.CloudWatch.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetMetricData' smart constructor.
data GetMetricData = GetMetricData'
  { -- | Include this value, if it was returned by the previous @GetMetricData@
    -- operation, to get the next set of data points.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The order in which data points should be returned. @TimestampDescending@
    -- returns the newest data first and paginates when the @MaxDatapoints@
    -- limit is reached. @TimestampAscending@ returns the oldest data first and
    -- paginates when the @MaxDatapoints@ limit is reached.
    scanBy :: Prelude.Maybe ScanBy,
    -- | This structure includes the @Timezone@ parameter, which you can use to
    -- specify your time zone so that the labels of returned data display the
    -- correct time for your time zone.
    labelOptions :: Prelude.Maybe LabelOptions,
    -- | The maximum number of data points the request should return before
    -- paginating. If you omit this, the default of 100,800 is used.
    maxDatapoints :: Prelude.Maybe Prelude.Int,
    -- | The metric queries to be returned. A single @GetMetricData@ call can
    -- include as many as 500 @MetricDataQuery@ structures. Each of these
    -- structures can specify either a metric to retrieve, or a math expression
    -- to perform on retrieved data.
    metricDataQueries :: [MetricDataQuery],
    -- | The time stamp indicating the earliest data to be returned.
    --
    -- The value specified is inclusive; results include data points with the
    -- specified time stamp.
    --
    -- CloudWatch rounds the specified time stamp as follows:
    --
    -- -   Start time less than 15 days ago - Round down to the nearest whole
    --     minute. For example, 12:32:34 is rounded down to 12:32:00.
    --
    -- -   Start time between 15 and 63 days ago - Round down to the nearest
    --     5-minute clock interval. For example, 12:32:34 is rounded down to
    --     12:30:00.
    --
    -- -   Start time greater than 63 days ago - Round down to the nearest
    --     1-hour clock interval. For example, 12:32:34 is rounded down to
    --     12:00:00.
    --
    -- If you set @Period@ to 5, 10, or 30, the start time of your request is
    -- rounded down to the nearest time that corresponds to even 5-, 10-, or
    -- 30-second divisions of a minute. For example, if you make a query at
    -- (HH:mm:ss) 01:05:23 for the previous 10-second period, the start time of
    -- your request is rounded down and you receive data from 01:05:10 to
    -- 01:05:20. If you make a query at 15:07:17 for the previous 5 minutes of
    -- data, using a period of 5 seconds, you receive data timestamped between
    -- 15:02:15 and 15:07:15.
    --
    -- For better performance, specify @StartTime@ and @EndTime@ values that
    -- align with the value of the metric\'s @Period@ and sync up with the
    -- beginning and end of an hour. For example, if the @Period@ of a metric
    -- is 5 minutes, specifying 12:05 or 12:30 as @StartTime@ can get a faster
    -- response from CloudWatch than setting 12:07 or 12:29 as the @StartTime@.
    startTime :: Prelude.ISO8601,
    -- | The time stamp indicating the latest data to be returned.
    --
    -- The value specified is exclusive; results include data points up to the
    -- specified time stamp.
    --
    -- For better performance, specify @StartTime@ and @EndTime@ values that
    -- align with the value of the metric\'s @Period@ and sync up with the
    -- beginning and end of an hour. For example, if the @Period@ of a metric
    -- is 5 minutes, specifying 12:05 or 12:30 as @EndTime@ can get a faster
    -- response from CloudWatch than setting 12:07 or 12:29 as the @EndTime@.
    endTime :: Prelude.ISO8601
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'GetMetricData' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'getMetricData_nextToken' - Include this value, if it was returned by the previous @GetMetricData@
-- operation, to get the next set of data points.
--
-- 'scanBy', 'getMetricData_scanBy' - The order in which data points should be returned. @TimestampDescending@
-- returns the newest data first and paginates when the @MaxDatapoints@
-- limit is reached. @TimestampAscending@ returns the oldest data first and
-- paginates when the @MaxDatapoints@ limit is reached.
--
-- 'labelOptions', 'getMetricData_labelOptions' - This structure includes the @Timezone@ parameter, which you can use to
-- specify your time zone so that the labels of returned data display the
-- correct time for your time zone.
--
-- 'maxDatapoints', 'getMetricData_maxDatapoints' - The maximum number of data points the request should return before
-- paginating. If you omit this, the default of 100,800 is used.
--
-- 'metricDataQueries', 'getMetricData_metricDataQueries' - The metric queries to be returned. A single @GetMetricData@ call can
-- include as many as 500 @MetricDataQuery@ structures. Each of these
-- structures can specify either a metric to retrieve, or a math expression
-- to perform on retrieved data.
--
-- 'startTime', 'getMetricData_startTime' - The time stamp indicating the earliest data to be returned.
--
-- The value specified is inclusive; results include data points with the
-- specified time stamp.
--
-- CloudWatch rounds the specified time stamp as follows:
--
-- -   Start time less than 15 days ago - Round down to the nearest whole
--     minute. For example, 12:32:34 is rounded down to 12:32:00.
--
-- -   Start time between 15 and 63 days ago - Round down to the nearest
--     5-minute clock interval. For example, 12:32:34 is rounded down to
--     12:30:00.
--
-- -   Start time greater than 63 days ago - Round down to the nearest
--     1-hour clock interval. For example, 12:32:34 is rounded down to
--     12:00:00.
--
-- If you set @Period@ to 5, 10, or 30, the start time of your request is
-- rounded down to the nearest time that corresponds to even 5-, 10-, or
-- 30-second divisions of a minute. For example, if you make a query at
-- (HH:mm:ss) 01:05:23 for the previous 10-second period, the start time of
-- your request is rounded down and you receive data from 01:05:10 to
-- 01:05:20. If you make a query at 15:07:17 for the previous 5 minutes of
-- data, using a period of 5 seconds, you receive data timestamped between
-- 15:02:15 and 15:07:15.
--
-- For better performance, specify @StartTime@ and @EndTime@ values that
-- align with the value of the metric\'s @Period@ and sync up with the
-- beginning and end of an hour. For example, if the @Period@ of a metric
-- is 5 minutes, specifying 12:05 or 12:30 as @StartTime@ can get a faster
-- response from CloudWatch than setting 12:07 or 12:29 as the @StartTime@.
--
-- 'endTime', 'getMetricData_endTime' - The time stamp indicating the latest data to be returned.
--
-- The value specified is exclusive; results include data points up to the
-- specified time stamp.
--
-- For better performance, specify @StartTime@ and @EndTime@ values that
-- align with the value of the metric\'s @Period@ and sync up with the
-- beginning and end of an hour. For example, if the @Period@ of a metric
-- is 5 minutes, specifying 12:05 or 12:30 as @EndTime@ can get a faster
-- response from CloudWatch than setting 12:07 or 12:29 as the @EndTime@.
newGetMetricData ::
  -- | 'startTime'
  Prelude.UTCTime ->
  -- | 'endTime'
  Prelude.UTCTime ->
  GetMetricData
newGetMetricData pStartTime_ pEndTime_ =
  GetMetricData'
    { nextToken = Prelude.Nothing,
      scanBy = Prelude.Nothing,
      labelOptions = Prelude.Nothing,
      maxDatapoints = Prelude.Nothing,
      metricDataQueries = Prelude.mempty,
      startTime = Prelude._Time Lens.# pStartTime_,
      endTime = Prelude._Time Lens.# pEndTime_
    }

-- | Include this value, if it was returned by the previous @GetMetricData@
-- operation, to get the next set of data points.
getMetricData_nextToken :: Lens.Lens' GetMetricData (Prelude.Maybe Prelude.Text)
getMetricData_nextToken = Lens.lens (\GetMetricData' {nextToken} -> nextToken) (\s@GetMetricData' {} a -> s {nextToken = a} :: GetMetricData)

-- | The order in which data points should be returned. @TimestampDescending@
-- returns the newest data first and paginates when the @MaxDatapoints@
-- limit is reached. @TimestampAscending@ returns the oldest data first and
-- paginates when the @MaxDatapoints@ limit is reached.
getMetricData_scanBy :: Lens.Lens' GetMetricData (Prelude.Maybe ScanBy)
getMetricData_scanBy = Lens.lens (\GetMetricData' {scanBy} -> scanBy) (\s@GetMetricData' {} a -> s {scanBy = a} :: GetMetricData)

-- | This structure includes the @Timezone@ parameter, which you can use to
-- specify your time zone so that the labels of returned data display the
-- correct time for your time zone.
getMetricData_labelOptions :: Lens.Lens' GetMetricData (Prelude.Maybe LabelOptions)
getMetricData_labelOptions = Lens.lens (\GetMetricData' {labelOptions} -> labelOptions) (\s@GetMetricData' {} a -> s {labelOptions = a} :: GetMetricData)

-- | The maximum number of data points the request should return before
-- paginating. If you omit this, the default of 100,800 is used.
getMetricData_maxDatapoints :: Lens.Lens' GetMetricData (Prelude.Maybe Prelude.Int)
getMetricData_maxDatapoints = Lens.lens (\GetMetricData' {maxDatapoints} -> maxDatapoints) (\s@GetMetricData' {} a -> s {maxDatapoints = a} :: GetMetricData)

-- | The metric queries to be returned. A single @GetMetricData@ call can
-- include as many as 500 @MetricDataQuery@ structures. Each of these
-- structures can specify either a metric to retrieve, or a math expression
-- to perform on retrieved data.
getMetricData_metricDataQueries :: Lens.Lens' GetMetricData [MetricDataQuery]
getMetricData_metricDataQueries = Lens.lens (\GetMetricData' {metricDataQueries} -> metricDataQueries) (\s@GetMetricData' {} a -> s {metricDataQueries = a} :: GetMetricData) Prelude.. Prelude._Coerce

-- | The time stamp indicating the earliest data to be returned.
--
-- The value specified is inclusive; results include data points with the
-- specified time stamp.
--
-- CloudWatch rounds the specified time stamp as follows:
--
-- -   Start time less than 15 days ago - Round down to the nearest whole
--     minute. For example, 12:32:34 is rounded down to 12:32:00.
--
-- -   Start time between 15 and 63 days ago - Round down to the nearest
--     5-minute clock interval. For example, 12:32:34 is rounded down to
--     12:30:00.
--
-- -   Start time greater than 63 days ago - Round down to the nearest
--     1-hour clock interval. For example, 12:32:34 is rounded down to
--     12:00:00.
--
-- If you set @Period@ to 5, 10, or 30, the start time of your request is
-- rounded down to the nearest time that corresponds to even 5-, 10-, or
-- 30-second divisions of a minute. For example, if you make a query at
-- (HH:mm:ss) 01:05:23 for the previous 10-second period, the start time of
-- your request is rounded down and you receive data from 01:05:10 to
-- 01:05:20. If you make a query at 15:07:17 for the previous 5 minutes of
-- data, using a period of 5 seconds, you receive data timestamped between
-- 15:02:15 and 15:07:15.
--
-- For better performance, specify @StartTime@ and @EndTime@ values that
-- align with the value of the metric\'s @Period@ and sync up with the
-- beginning and end of an hour. For example, if the @Period@ of a metric
-- is 5 minutes, specifying 12:05 or 12:30 as @StartTime@ can get a faster
-- response from CloudWatch than setting 12:07 or 12:29 as the @StartTime@.
getMetricData_startTime :: Lens.Lens' GetMetricData Prelude.UTCTime
getMetricData_startTime = Lens.lens (\GetMetricData' {startTime} -> startTime) (\s@GetMetricData' {} a -> s {startTime = a} :: GetMetricData) Prelude.. Prelude._Time

-- | The time stamp indicating the latest data to be returned.
--
-- The value specified is exclusive; results include data points up to the
-- specified time stamp.
--
-- For better performance, specify @StartTime@ and @EndTime@ values that
-- align with the value of the metric\'s @Period@ and sync up with the
-- beginning and end of an hour. For example, if the @Period@ of a metric
-- is 5 minutes, specifying 12:05 or 12:30 as @EndTime@ can get a faster
-- response from CloudWatch than setting 12:07 or 12:29 as the @EndTime@.
getMetricData_endTime :: Lens.Lens' GetMetricData Prelude.UTCTime
getMetricData_endTime = Lens.lens (\GetMetricData' {endTime} -> endTime) (\s@GetMetricData' {} a -> s {endTime = a} :: GetMetricData) Prelude.. Prelude._Time

instance Pager.AWSPager GetMetricData where
  page rq rs
    | Pager.stop
        ( rs
            Lens.^? getMetricDataResponse_nextToken Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Pager.stop
        ( rs
            Lens.^? getMetricDataResponse_metricDataResults
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Pager.stop
        ( rs
            Lens.^? getMetricDataResponse_messages Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Lens.& getMetricData_nextToken
          Lens..~ rs
          Lens.^? getMetricDataResponse_nextToken Prelude.. Lens._Just

instance Prelude.AWSRequest GetMetricData where
  type Rs GetMetricData = GetMetricDataResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "GetMetricDataResult"
      ( \s h x ->
          GetMetricDataResponse'
            Prelude.<$> (x Prelude..@? "NextToken")
            Prelude.<*> ( x Prelude..@? "MetricDataResults"
                            Prelude..!@ Prelude.mempty
                            Prelude.>>= Prelude.may (Prelude.parseXMLList "member")
                        )
            Prelude.<*> ( x Prelude..@? "Messages" Prelude..!@ Prelude.mempty
                            Prelude.>>= Prelude.may (Prelude.parseXMLList "member")
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetMetricData

instance Prelude.NFData GetMetricData

instance Prelude.ToHeaders GetMetricData where
  toHeaders = Prelude.const Prelude.mempty

instance Prelude.ToPath GetMetricData where
  toPath = Prelude.const "/"

instance Prelude.ToQuery GetMetricData where
  toQuery GetMetricData' {..} =
    Prelude.mconcat
      [ "Action"
          Prelude.=: ("GetMetricData" :: Prelude.ByteString),
        "Version"
          Prelude.=: ("2010-08-01" :: Prelude.ByteString),
        "NextToken" Prelude.=: nextToken,
        "ScanBy" Prelude.=: scanBy,
        "LabelOptions" Prelude.=: labelOptions,
        "MaxDatapoints" Prelude.=: maxDatapoints,
        "MetricDataQueries"
          Prelude.=: Prelude.toQueryList "member" metricDataQueries,
        "StartTime" Prelude.=: startTime,
        "EndTime" Prelude.=: endTime
      ]

-- | /See:/ 'newGetMetricDataResponse' smart constructor.
data GetMetricDataResponse = GetMetricDataResponse'
  { -- | A token that marks the next batch of returned results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The metrics that are returned, including the metric name, namespace, and
    -- dimensions.
    metricDataResults :: Prelude.Maybe [MetricDataResult],
    -- | Contains a message about this @GetMetricData@ operation, if the
    -- operation results in such a message. An example of a message that might
    -- be returned is @Maximum number of allowed metrics exceeded@. If there is
    -- a message, as much of the operation as possible is still executed.
    --
    -- A message appears here only if it is related to the global
    -- @GetMetricData@ operation. Any message about a specific metric returned
    -- by the operation appears in the @MetricDataResult@ object returned for
    -- that metric.
    messages :: Prelude.Maybe [MessageData],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'GetMetricDataResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'getMetricDataResponse_nextToken' - A token that marks the next batch of returned results.
--
-- 'metricDataResults', 'getMetricDataResponse_metricDataResults' - The metrics that are returned, including the metric name, namespace, and
-- dimensions.
--
-- 'messages', 'getMetricDataResponse_messages' - Contains a message about this @GetMetricData@ operation, if the
-- operation results in such a message. An example of a message that might
-- be returned is @Maximum number of allowed metrics exceeded@. If there is
-- a message, as much of the operation as possible is still executed.
--
-- A message appears here only if it is related to the global
-- @GetMetricData@ operation. Any message about a specific metric returned
-- by the operation appears in the @MetricDataResult@ object returned for
-- that metric.
--
-- 'httpStatus', 'getMetricDataResponse_httpStatus' - The response's http status code.
newGetMetricDataResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetMetricDataResponse
newGetMetricDataResponse pHttpStatus_ =
  GetMetricDataResponse'
    { nextToken = Prelude.Nothing,
      metricDataResults = Prelude.Nothing,
      messages = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A token that marks the next batch of returned results.
getMetricDataResponse_nextToken :: Lens.Lens' GetMetricDataResponse (Prelude.Maybe Prelude.Text)
getMetricDataResponse_nextToken = Lens.lens (\GetMetricDataResponse' {nextToken} -> nextToken) (\s@GetMetricDataResponse' {} a -> s {nextToken = a} :: GetMetricDataResponse)

-- | The metrics that are returned, including the metric name, namespace, and
-- dimensions.
getMetricDataResponse_metricDataResults :: Lens.Lens' GetMetricDataResponse (Prelude.Maybe [MetricDataResult])
getMetricDataResponse_metricDataResults = Lens.lens (\GetMetricDataResponse' {metricDataResults} -> metricDataResults) (\s@GetMetricDataResponse' {} a -> s {metricDataResults = a} :: GetMetricDataResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | Contains a message about this @GetMetricData@ operation, if the
-- operation results in such a message. An example of a message that might
-- be returned is @Maximum number of allowed metrics exceeded@. If there is
-- a message, as much of the operation as possible is still executed.
--
-- A message appears here only if it is related to the global
-- @GetMetricData@ operation. Any message about a specific metric returned
-- by the operation appears in the @MetricDataResult@ object returned for
-- that metric.
getMetricDataResponse_messages :: Lens.Lens' GetMetricDataResponse (Prelude.Maybe [MessageData])
getMetricDataResponse_messages = Lens.lens (\GetMetricDataResponse' {messages} -> messages) (\s@GetMetricDataResponse' {} a -> s {messages = a} :: GetMetricDataResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | The response's http status code.
getMetricDataResponse_httpStatus :: Lens.Lens' GetMetricDataResponse Prelude.Int
getMetricDataResponse_httpStatus = Lens.lens (\GetMetricDataResponse' {httpStatus} -> httpStatus) (\s@GetMetricDataResponse' {} a -> s {httpStatus = a} :: GetMetricDataResponse)

instance Prelude.NFData GetMetricDataResponse
