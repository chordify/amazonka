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
-- Module      : Network.AWS.CloudWatch.Types.MetricDataQuery
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatch.Types.MetricDataQuery where

import Network.AWS.CloudWatch.Types.MetricStat
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | This structure is used in both @GetMetricData@ and @PutMetricAlarm@. The
-- supported use of this structure is different for those two operations.
--
-- When used in @GetMetricData@, it indicates the metric data to return,
-- and whether this call is just retrieving a batch set of data for one
-- metric, or is performing a math expression on metric data. A single
-- @GetMetricData@ call can include up to 500 @MetricDataQuery@ structures.
--
-- When used in @PutMetricAlarm@, it enables you to create an alarm based
-- on a metric math expression. Each @MetricDataQuery@ in the array
-- specifies either a metric to retrieve, or a math expression to be
-- performed on retrieved metrics. A single @PutMetricAlarm@ call can
-- include up to 20 @MetricDataQuery@ structures in the array. The 20
-- structures can include as many as 10 structures that contain a
-- @MetricStat@ parameter to retrieve a metric, and as many as 10
-- structures that contain the @Expression@ parameter to perform a math
-- expression. Of those @Expression@ structures, one must have @True@ as
-- the value for @ReturnData@. The result of this expression is the value
-- the alarm watches.
--
-- Any expression used in a @PutMetricAlarm@ operation must return a single
-- time series. For more information, see
-- <https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/using-metric-math.html#metric-math-syntax Metric Math Syntax and Functions>
-- in the /Amazon CloudWatch User Guide/.
--
-- Some of the parameters of this structure also have different uses
-- whether you are using this structure in a @GetMetricData@ operation or a
-- @PutMetricAlarm@ operation. These differences are explained in the
-- following parameter list.
--
-- /See:/ 'newMetricDataQuery' smart constructor.
data MetricDataQuery = MetricDataQuery'
  { -- | The metric to be returned, along with statistics, period, and units. Use
    -- this parameter only if this object is retrieving a metric and not
    -- performing a math expression on returned data.
    --
    -- Within one MetricDataQuery object, you must specify either @Expression@
    -- or @MetricStat@ but not both.
    metricStat :: Prelude.Maybe MetricStat,
    -- | When used in @GetMetricData@, this option indicates whether to return
    -- the timestamps and raw data values of this metric. If you are performing
    -- this call just to do math expressions and do not also need the raw data
    -- returned, you can specify @False@. If you omit this, the default of
    -- @True@ is used.
    --
    -- When used in @PutMetricAlarm@, specify @True@ for the one expression
    -- result to use as the alarm. For all other metrics and expressions in the
    -- same @PutMetricAlarm@ operation, specify @ReturnData@ as False.
    returnData :: Prelude.Maybe Prelude.Bool,
    -- | A human-readable label for this metric or expression. This is especially
    -- useful if this is an expression, so that you know what the value
    -- represents. If the metric or expression is shown in a CloudWatch
    -- dashboard widget, the label is shown. If Label is omitted, CloudWatch
    -- generates a default.
    --
    -- You can put dynamic expressions into a label, so that it is more
    -- descriptive. For more information, see
    -- <https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/graph-dynamic-labels.html Using Dynamic Labels>.
    label :: Prelude.Maybe Prelude.Text,
    -- | The granularity, in seconds, of the returned data points. For metrics
    -- with regular resolution, a period can be as short as one minute (60
    -- seconds) and must be a multiple of 60. For high-resolution metrics that
    -- are collected at intervals of less than one minute, the period can be 1,
    -- 5, 10, 30, 60, or any multiple of 60. High-resolution metrics are those
    -- metrics stored by a @PutMetricData@ operation that includes a
    -- @StorageResolution of 1 second@.
    period :: Prelude.Maybe Prelude.Natural,
    -- | The math expression to be performed on the returned data, if this object
    -- is performing a math expression. This expression can use the @Id@ of the
    -- other metrics to refer to those metrics, and can also use the @Id@ of
    -- other expressions to use the result of those expressions. For more
    -- information about metric math expressions, see
    -- <https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/using-metric-math.html#metric-math-syntax Metric Math Syntax and Functions>
    -- in the /Amazon CloudWatch User Guide/.
    --
    -- Within each MetricDataQuery object, you must specify either @Expression@
    -- or @MetricStat@ but not both.
    expression :: Prelude.Maybe Prelude.Text,
    -- | A short name used to tie this object to the results in the response.
    -- This name must be unique within a single call to @GetMetricData@. If you
    -- are performing math expressions on this set of data, this name
    -- represents that data and can serve as a variable in the mathematical
    -- expression. The valid characters are letters, numbers, and underscore.
    -- The first character must be a lowercase letter.
    id :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'MetricDataQuery' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'metricStat', 'metricDataQuery_metricStat' - The metric to be returned, along with statistics, period, and units. Use
-- this parameter only if this object is retrieving a metric and not
-- performing a math expression on returned data.
--
-- Within one MetricDataQuery object, you must specify either @Expression@
-- or @MetricStat@ but not both.
--
-- 'returnData', 'metricDataQuery_returnData' - When used in @GetMetricData@, this option indicates whether to return
-- the timestamps and raw data values of this metric. If you are performing
-- this call just to do math expressions and do not also need the raw data
-- returned, you can specify @False@. If you omit this, the default of
-- @True@ is used.
--
-- When used in @PutMetricAlarm@, specify @True@ for the one expression
-- result to use as the alarm. For all other metrics and expressions in the
-- same @PutMetricAlarm@ operation, specify @ReturnData@ as False.
--
-- 'label', 'metricDataQuery_label' - A human-readable label for this metric or expression. This is especially
-- useful if this is an expression, so that you know what the value
-- represents. If the metric or expression is shown in a CloudWatch
-- dashboard widget, the label is shown. If Label is omitted, CloudWatch
-- generates a default.
--
-- You can put dynamic expressions into a label, so that it is more
-- descriptive. For more information, see
-- <https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/graph-dynamic-labels.html Using Dynamic Labels>.
--
-- 'period', 'metricDataQuery_period' - The granularity, in seconds, of the returned data points. For metrics
-- with regular resolution, a period can be as short as one minute (60
-- seconds) and must be a multiple of 60. For high-resolution metrics that
-- are collected at intervals of less than one minute, the period can be 1,
-- 5, 10, 30, 60, or any multiple of 60. High-resolution metrics are those
-- metrics stored by a @PutMetricData@ operation that includes a
-- @StorageResolution of 1 second@.
--
-- 'expression', 'metricDataQuery_expression' - The math expression to be performed on the returned data, if this object
-- is performing a math expression. This expression can use the @Id@ of the
-- other metrics to refer to those metrics, and can also use the @Id@ of
-- other expressions to use the result of those expressions. For more
-- information about metric math expressions, see
-- <https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/using-metric-math.html#metric-math-syntax Metric Math Syntax and Functions>
-- in the /Amazon CloudWatch User Guide/.
--
-- Within each MetricDataQuery object, you must specify either @Expression@
-- or @MetricStat@ but not both.
--
-- 'id', 'metricDataQuery_id' - A short name used to tie this object to the results in the response.
-- This name must be unique within a single call to @GetMetricData@. If you
-- are performing math expressions on this set of data, this name
-- represents that data and can serve as a variable in the mathematical
-- expression. The valid characters are letters, numbers, and underscore.
-- The first character must be a lowercase letter.
newMetricDataQuery ::
  -- | 'id'
  Prelude.Text ->
  MetricDataQuery
newMetricDataQuery pId_ =
  MetricDataQuery'
    { metricStat = Prelude.Nothing,
      returnData = Prelude.Nothing,
      label = Prelude.Nothing,
      period = Prelude.Nothing,
      expression = Prelude.Nothing,
      id = pId_
    }

-- | The metric to be returned, along with statistics, period, and units. Use
-- this parameter only if this object is retrieving a metric and not
-- performing a math expression on returned data.
--
-- Within one MetricDataQuery object, you must specify either @Expression@
-- or @MetricStat@ but not both.
metricDataQuery_metricStat :: Lens.Lens' MetricDataQuery (Prelude.Maybe MetricStat)
metricDataQuery_metricStat = Lens.lens (\MetricDataQuery' {metricStat} -> metricStat) (\s@MetricDataQuery' {} a -> s {metricStat = a} :: MetricDataQuery)

-- | When used in @GetMetricData@, this option indicates whether to return
-- the timestamps and raw data values of this metric. If you are performing
-- this call just to do math expressions and do not also need the raw data
-- returned, you can specify @False@. If you omit this, the default of
-- @True@ is used.
--
-- When used in @PutMetricAlarm@, specify @True@ for the one expression
-- result to use as the alarm. For all other metrics and expressions in the
-- same @PutMetricAlarm@ operation, specify @ReturnData@ as False.
metricDataQuery_returnData :: Lens.Lens' MetricDataQuery (Prelude.Maybe Prelude.Bool)
metricDataQuery_returnData = Lens.lens (\MetricDataQuery' {returnData} -> returnData) (\s@MetricDataQuery' {} a -> s {returnData = a} :: MetricDataQuery)

-- | A human-readable label for this metric or expression. This is especially
-- useful if this is an expression, so that you know what the value
-- represents. If the metric or expression is shown in a CloudWatch
-- dashboard widget, the label is shown. If Label is omitted, CloudWatch
-- generates a default.
--
-- You can put dynamic expressions into a label, so that it is more
-- descriptive. For more information, see
-- <https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/graph-dynamic-labels.html Using Dynamic Labels>.
metricDataQuery_label :: Lens.Lens' MetricDataQuery (Prelude.Maybe Prelude.Text)
metricDataQuery_label = Lens.lens (\MetricDataQuery' {label} -> label) (\s@MetricDataQuery' {} a -> s {label = a} :: MetricDataQuery)

-- | The granularity, in seconds, of the returned data points. For metrics
-- with regular resolution, a period can be as short as one minute (60
-- seconds) and must be a multiple of 60. For high-resolution metrics that
-- are collected at intervals of less than one minute, the period can be 1,
-- 5, 10, 30, 60, or any multiple of 60. High-resolution metrics are those
-- metrics stored by a @PutMetricData@ operation that includes a
-- @StorageResolution of 1 second@.
metricDataQuery_period :: Lens.Lens' MetricDataQuery (Prelude.Maybe Prelude.Natural)
metricDataQuery_period = Lens.lens (\MetricDataQuery' {period} -> period) (\s@MetricDataQuery' {} a -> s {period = a} :: MetricDataQuery)

-- | The math expression to be performed on the returned data, if this object
-- is performing a math expression. This expression can use the @Id@ of the
-- other metrics to refer to those metrics, and can also use the @Id@ of
-- other expressions to use the result of those expressions. For more
-- information about metric math expressions, see
-- <https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/using-metric-math.html#metric-math-syntax Metric Math Syntax and Functions>
-- in the /Amazon CloudWatch User Guide/.
--
-- Within each MetricDataQuery object, you must specify either @Expression@
-- or @MetricStat@ but not both.
metricDataQuery_expression :: Lens.Lens' MetricDataQuery (Prelude.Maybe Prelude.Text)
metricDataQuery_expression = Lens.lens (\MetricDataQuery' {expression} -> expression) (\s@MetricDataQuery' {} a -> s {expression = a} :: MetricDataQuery)

-- | A short name used to tie this object to the results in the response.
-- This name must be unique within a single call to @GetMetricData@. If you
-- are performing math expressions on this set of data, this name
-- represents that data and can serve as a variable in the mathematical
-- expression. The valid characters are letters, numbers, and underscore.
-- The first character must be a lowercase letter.
metricDataQuery_id :: Lens.Lens' MetricDataQuery Prelude.Text
metricDataQuery_id = Lens.lens (\MetricDataQuery' {id} -> id) (\s@MetricDataQuery' {} a -> s {id = a} :: MetricDataQuery)

instance Prelude.FromXML MetricDataQuery where
  parseXML x =
    MetricDataQuery'
      Prelude.<$> (x Prelude..@? "MetricStat")
      Prelude.<*> (x Prelude..@? "ReturnData")
      Prelude.<*> (x Prelude..@? "Label")
      Prelude.<*> (x Prelude..@? "Period")
      Prelude.<*> (x Prelude..@? "Expression")
      Prelude.<*> (x Prelude..@ "Id")

instance Prelude.Hashable MetricDataQuery

instance Prelude.NFData MetricDataQuery

instance Prelude.ToQuery MetricDataQuery where
  toQuery MetricDataQuery' {..} =
    Prelude.mconcat
      [ "MetricStat" Prelude.=: metricStat,
        "ReturnData" Prelude.=: returnData,
        "Label" Prelude.=: label,
        "Period" Prelude.=: period,
        "Expression" Prelude.=: expression,
        "Id" Prelude.=: id
      ]
