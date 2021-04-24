{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EMR.Types.ClusterStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.ClusterStatus where

import Network.AWS.EMR.Types.ClusterState
import Network.AWS.EMR.Types.ClusterStateChangeReason
import Network.AWS.EMR.Types.ClusterTimeline
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The detailed status of the cluster.
--
--
--
-- /See:/ 'clusterStatus' smart constructor.
data ClusterStatus = ClusterStatus'
  { _csStateChangeReason ::
      !(Maybe ClusterStateChangeReason),
    _csState :: !(Maybe ClusterState),
    _csTimeline :: !(Maybe ClusterTimeline)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ClusterStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csStateChangeReason' - The reason for the cluster status change.
--
-- * 'csState' - The current state of the cluster.
--
-- * 'csTimeline' - A timeline that represents the status of a cluster over the lifetime of the cluster.
clusterStatus ::
  ClusterStatus
clusterStatus =
  ClusterStatus'
    { _csStateChangeReason = Nothing,
      _csState = Nothing,
      _csTimeline = Nothing
    }

-- | The reason for the cluster status change.
csStateChangeReason :: Lens' ClusterStatus (Maybe ClusterStateChangeReason)
csStateChangeReason = lens _csStateChangeReason (\s a -> s {_csStateChangeReason = a})

-- | The current state of the cluster.
csState :: Lens' ClusterStatus (Maybe ClusterState)
csState = lens _csState (\s a -> s {_csState = a})

-- | A timeline that represents the status of a cluster over the lifetime of the cluster.
csTimeline :: Lens' ClusterStatus (Maybe ClusterTimeline)
csTimeline = lens _csTimeline (\s a -> s {_csTimeline = a})

instance FromJSON ClusterStatus where
  parseJSON =
    withObject
      "ClusterStatus"
      ( \x ->
          ClusterStatus'
            <$> (x .:? "StateChangeReason")
            <*> (x .:? "State")
            <*> (x .:? "Timeline")
      )

instance Hashable ClusterStatus

instance NFData ClusterStatus
