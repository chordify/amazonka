{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeDeploy.Types.DeploymentOverview
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeDeploy.Types.DeploymentOverview where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about the deployment status of the instances in the deployment.
--
--
--
-- /See:/ 'deploymentOverview' smart constructor.
data DeploymentOverview = DeploymentOverview'
  { _doSucceeded ::
      !(Maybe Integer),
    _doReady :: !(Maybe Integer),
    _doPending :: !(Maybe Integer),
    _doFailed :: !(Maybe Integer),
    _doSkipped :: !(Maybe Integer),
    _doInProgress :: !(Maybe Integer)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeploymentOverview' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'doSucceeded' - The number of instances in the deployment to which revisions have been successfully deployed.
--
-- * 'doReady' - The number of instances in a replacement environment ready to receive traffic in a blue/green deployment.
--
-- * 'doPending' - The number of instances in the deployment in a pending state.
--
-- * 'doFailed' - The number of instances in the deployment in a failed state.
--
-- * 'doSkipped' - The number of instances in the deployment in a skipped state.
--
-- * 'doInProgress' - The number of instances in which the deployment is in progress.
deploymentOverview ::
  DeploymentOverview
deploymentOverview =
  DeploymentOverview'
    { _doSucceeded = Nothing,
      _doReady = Nothing,
      _doPending = Nothing,
      _doFailed = Nothing,
      _doSkipped = Nothing,
      _doInProgress = Nothing
    }

-- | The number of instances in the deployment to which revisions have been successfully deployed.
doSucceeded :: Lens' DeploymentOverview (Maybe Integer)
doSucceeded = lens _doSucceeded (\s a -> s {_doSucceeded = a})

-- | The number of instances in a replacement environment ready to receive traffic in a blue/green deployment.
doReady :: Lens' DeploymentOverview (Maybe Integer)
doReady = lens _doReady (\s a -> s {_doReady = a})

-- | The number of instances in the deployment in a pending state.
doPending :: Lens' DeploymentOverview (Maybe Integer)
doPending = lens _doPending (\s a -> s {_doPending = a})

-- | The number of instances in the deployment in a failed state.
doFailed :: Lens' DeploymentOverview (Maybe Integer)
doFailed = lens _doFailed (\s a -> s {_doFailed = a})

-- | The number of instances in the deployment in a skipped state.
doSkipped :: Lens' DeploymentOverview (Maybe Integer)
doSkipped = lens _doSkipped (\s a -> s {_doSkipped = a})

-- | The number of instances in which the deployment is in progress.
doInProgress :: Lens' DeploymentOverview (Maybe Integer)
doInProgress = lens _doInProgress (\s a -> s {_doInProgress = a})

instance FromJSON DeploymentOverview where
  parseJSON =
    withObject
      "DeploymentOverview"
      ( \x ->
          DeploymentOverview'
            <$> (x .:? "Succeeded")
            <*> (x .:? "Ready")
            <*> (x .:? "Pending")
            <*> (x .:? "Failed")
            <*> (x .:? "Skipped")
            <*> (x .:? "InProgress")
      )

instance Hashable DeploymentOverview

instance NFData DeploymentOverview
