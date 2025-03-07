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
-- Module      : Network.AWS.EC2.Types.LaunchTemplatesMonitoringRequest
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.LaunchTemplatesMonitoringRequest where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Describes the monitoring for the instance.
--
-- /See:/ 'newLaunchTemplatesMonitoringRequest' smart constructor.
data LaunchTemplatesMonitoringRequest = LaunchTemplatesMonitoringRequest'
  { -- | Specify @true@ to enable detailed monitoring. Otherwise, basic
    -- monitoring is enabled.
    enabled :: Prelude.Maybe Prelude.Bool
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'LaunchTemplatesMonitoringRequest' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'enabled', 'launchTemplatesMonitoringRequest_enabled' - Specify @true@ to enable detailed monitoring. Otherwise, basic
-- monitoring is enabled.
newLaunchTemplatesMonitoringRequest ::
  LaunchTemplatesMonitoringRequest
newLaunchTemplatesMonitoringRequest =
  LaunchTemplatesMonitoringRequest'
    { enabled =
        Prelude.Nothing
    }

-- | Specify @true@ to enable detailed monitoring. Otherwise, basic
-- monitoring is enabled.
launchTemplatesMonitoringRequest_enabled :: Lens.Lens' LaunchTemplatesMonitoringRequest (Prelude.Maybe Prelude.Bool)
launchTemplatesMonitoringRequest_enabled = Lens.lens (\LaunchTemplatesMonitoringRequest' {enabled} -> enabled) (\s@LaunchTemplatesMonitoringRequest' {} a -> s {enabled = a} :: LaunchTemplatesMonitoringRequest)

instance
  Prelude.Hashable
    LaunchTemplatesMonitoringRequest

instance
  Prelude.NFData
    LaunchTemplatesMonitoringRequest

instance
  Prelude.ToQuery
    LaunchTemplatesMonitoringRequest
  where
  toQuery LaunchTemplatesMonitoringRequest' {..} =
    Prelude.mconcat ["Enabled" Prelude.=: enabled]
