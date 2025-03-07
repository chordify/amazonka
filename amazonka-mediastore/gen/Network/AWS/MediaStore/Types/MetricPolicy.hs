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
-- Module      : Network.AWS.MediaStore.Types.MetricPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaStore.Types.MetricPolicy where

import qualified Network.AWS.Lens as Lens
import Network.AWS.MediaStore.Types.ContainerLevelMetrics
import Network.AWS.MediaStore.Types.MetricPolicyRule
import qualified Network.AWS.Prelude as Prelude

-- | The metric policy that is associated with the container. A metric policy
-- allows AWS Elemental MediaStore to send metrics to Amazon CloudWatch. In
-- the policy, you must indicate whether you want MediaStore to send
-- container-level metrics. You can also include rules to define groups of
-- objects that you want MediaStore to send object-level metrics for.
--
-- To view examples of how to construct a metric policy for your use case,
-- see
-- <https://docs.aws.amazon.com/mediastore/latest/ug/policies-metric-examples.html Example Metric Policies>.
--
-- /See:/ 'newMetricPolicy' smart constructor.
data MetricPolicy = MetricPolicy'
  { -- | A parameter that holds an array of rules that enable metrics at the
    -- object level. This parameter is optional, but if you choose to include
    -- it, you must also include at least one rule. By default, you can include
    -- up to five rules. You can also
    -- <https://console.aws.amazon.com/servicequotas/home?region=us-east-1#!/services/mediastore/quotas request a quota increase>
    -- to allow up to 300 rules per policy.
    metricPolicyRules :: Prelude.Maybe (Prelude.NonEmpty MetricPolicyRule),
    -- | A setting to enable or disable metrics at the container level.
    containerLevelMetrics :: ContainerLevelMetrics
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'MetricPolicy' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'metricPolicyRules', 'metricPolicy_metricPolicyRules' - A parameter that holds an array of rules that enable metrics at the
-- object level. This parameter is optional, but if you choose to include
-- it, you must also include at least one rule. By default, you can include
-- up to five rules. You can also
-- <https://console.aws.amazon.com/servicequotas/home?region=us-east-1#!/services/mediastore/quotas request a quota increase>
-- to allow up to 300 rules per policy.
--
-- 'containerLevelMetrics', 'metricPolicy_containerLevelMetrics' - A setting to enable or disable metrics at the container level.
newMetricPolicy ::
  -- | 'containerLevelMetrics'
  ContainerLevelMetrics ->
  MetricPolicy
newMetricPolicy pContainerLevelMetrics_ =
  MetricPolicy'
    { metricPolicyRules = Prelude.Nothing,
      containerLevelMetrics = pContainerLevelMetrics_
    }

-- | A parameter that holds an array of rules that enable metrics at the
-- object level. This parameter is optional, but if you choose to include
-- it, you must also include at least one rule. By default, you can include
-- up to five rules. You can also
-- <https://console.aws.amazon.com/servicequotas/home?region=us-east-1#!/services/mediastore/quotas request a quota increase>
-- to allow up to 300 rules per policy.
metricPolicy_metricPolicyRules :: Lens.Lens' MetricPolicy (Prelude.Maybe (Prelude.NonEmpty MetricPolicyRule))
metricPolicy_metricPolicyRules = Lens.lens (\MetricPolicy' {metricPolicyRules} -> metricPolicyRules) (\s@MetricPolicy' {} a -> s {metricPolicyRules = a} :: MetricPolicy) Prelude.. Lens.mapping Prelude._Coerce

-- | A setting to enable or disable metrics at the container level.
metricPolicy_containerLevelMetrics :: Lens.Lens' MetricPolicy ContainerLevelMetrics
metricPolicy_containerLevelMetrics = Lens.lens (\MetricPolicy' {containerLevelMetrics} -> containerLevelMetrics) (\s@MetricPolicy' {} a -> s {containerLevelMetrics = a} :: MetricPolicy)

instance Prelude.FromJSON MetricPolicy where
  parseJSON =
    Prelude.withObject
      "MetricPolicy"
      ( \x ->
          MetricPolicy'
            Prelude.<$> (x Prelude..:? "MetricPolicyRules")
            Prelude.<*> (x Prelude..: "ContainerLevelMetrics")
      )

instance Prelude.Hashable MetricPolicy

instance Prelude.NFData MetricPolicy

instance Prelude.ToJSON MetricPolicy where
  toJSON MetricPolicy' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("MetricPolicyRules" Prelude..=)
              Prelude.<$> metricPolicyRules,
            Prelude.Just
              ( "ContainerLevelMetrics"
                  Prelude..= containerLevelMetrics
              )
          ]
      )
