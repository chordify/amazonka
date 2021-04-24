{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeDeploy.Types.ECSTaskSet
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeDeploy.Types.ECSTaskSet where

import Network.AWS.CodeDeploy.Types.TargetGroupInfo
import Network.AWS.CodeDeploy.Types.TargetLabel
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about a set of Amazon ECS tasks in an AWS CodeDeploy deployment. An Amazon ECS task set includes details such as the desired number of tasks, how many tasks are running, and whether the task set serves production traffic. An AWS CodeDeploy application that uses the Amazon ECS compute platform deploys a containerized application in an Amazon ECS service as a task set.
--
--
--
-- /See:/ 'eCSTaskSet' smart constructor.
data ECSTaskSet = ECSTaskSet'
  { _ecstsStatus ::
      !(Maybe Text),
    _ecstsRunningCount :: !(Maybe Integer),
    _ecstsDesiredCount :: !(Maybe Integer),
    _ecstsPendingCount :: !(Maybe Integer),
    _ecstsTaskSetLabel :: !(Maybe TargetLabel),
    _ecstsTargetGroup :: !(Maybe TargetGroupInfo),
    _ecstsTrafficWeight :: !(Maybe Double),
    _ecstsIdentifer :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ECSTaskSet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ecstsStatus' - The status of the task set. There are three valid task set statuses:      * @PRIMARY@ : Indicates the task set is serving production traffic.      * @ACTIVE@ : Indicates the task set is not serving production traffic.      * @DRAINING@ : Indicates the tasks in the task set are being stopped and their corresponding targets are being deregistered from their target group.
--
-- * 'ecstsRunningCount' - The number of tasks in the task set that are in the @RUNNING@ status during an Amazon ECS deployment. A task in the @RUNNING@ state is running and ready for use.
--
-- * 'ecstsDesiredCount' - The number of tasks in a task set. During a deployment that uses the Amazon ECS compute type, CodeDeploy instructs Amazon ECS to create a new task set and uses this value to determine how many tasks to create. After the updated task set is created, CodeDeploy shifts traffic to the new task set.
--
-- * 'ecstsPendingCount' - The number of tasks in the task set that are in the @PENDING@ status during an Amazon ECS deployment. A task in the @PENDING@ state is preparing to enter the @RUNNING@ state. A task set enters the @PENDING@ status when it launches for the first time, or when it is restarted after being in the @STOPPED@ state.
--
-- * 'ecstsTaskSetLabel' - A label that identifies whether the ECS task set is an original target (@BLUE@ ) or a replacement target (@GREEN@ ).
--
-- * 'ecstsTargetGroup' - The target group associated with the task set. The target group is used by AWS CodeDeploy to manage traffic to a task set.
--
-- * 'ecstsTrafficWeight' - The percentage of traffic served by this task set.
--
-- * 'ecstsIdentifer' - A unique ID of an @ECSTaskSet@ .
eCSTaskSet ::
  ECSTaskSet
eCSTaskSet =
  ECSTaskSet'
    { _ecstsStatus = Nothing,
      _ecstsRunningCount = Nothing,
      _ecstsDesiredCount = Nothing,
      _ecstsPendingCount = Nothing,
      _ecstsTaskSetLabel = Nothing,
      _ecstsTargetGroup = Nothing,
      _ecstsTrafficWeight = Nothing,
      _ecstsIdentifer = Nothing
    }

-- | The status of the task set. There are three valid task set statuses:      * @PRIMARY@ : Indicates the task set is serving production traffic.      * @ACTIVE@ : Indicates the task set is not serving production traffic.      * @DRAINING@ : Indicates the tasks in the task set are being stopped and their corresponding targets are being deregistered from their target group.
ecstsStatus :: Lens' ECSTaskSet (Maybe Text)
ecstsStatus = lens _ecstsStatus (\s a -> s {_ecstsStatus = a})

-- | The number of tasks in the task set that are in the @RUNNING@ status during an Amazon ECS deployment. A task in the @RUNNING@ state is running and ready for use.
ecstsRunningCount :: Lens' ECSTaskSet (Maybe Integer)
ecstsRunningCount = lens _ecstsRunningCount (\s a -> s {_ecstsRunningCount = a})

-- | The number of tasks in a task set. During a deployment that uses the Amazon ECS compute type, CodeDeploy instructs Amazon ECS to create a new task set and uses this value to determine how many tasks to create. After the updated task set is created, CodeDeploy shifts traffic to the new task set.
ecstsDesiredCount :: Lens' ECSTaskSet (Maybe Integer)
ecstsDesiredCount = lens _ecstsDesiredCount (\s a -> s {_ecstsDesiredCount = a})

-- | The number of tasks in the task set that are in the @PENDING@ status during an Amazon ECS deployment. A task in the @PENDING@ state is preparing to enter the @RUNNING@ state. A task set enters the @PENDING@ status when it launches for the first time, or when it is restarted after being in the @STOPPED@ state.
ecstsPendingCount :: Lens' ECSTaskSet (Maybe Integer)
ecstsPendingCount = lens _ecstsPendingCount (\s a -> s {_ecstsPendingCount = a})

-- | A label that identifies whether the ECS task set is an original target (@BLUE@ ) or a replacement target (@GREEN@ ).
ecstsTaskSetLabel :: Lens' ECSTaskSet (Maybe TargetLabel)
ecstsTaskSetLabel = lens _ecstsTaskSetLabel (\s a -> s {_ecstsTaskSetLabel = a})

-- | The target group associated with the task set. The target group is used by AWS CodeDeploy to manage traffic to a task set.
ecstsTargetGroup :: Lens' ECSTaskSet (Maybe TargetGroupInfo)
ecstsTargetGroup = lens _ecstsTargetGroup (\s a -> s {_ecstsTargetGroup = a})

-- | The percentage of traffic served by this task set.
ecstsTrafficWeight :: Lens' ECSTaskSet (Maybe Double)
ecstsTrafficWeight = lens _ecstsTrafficWeight (\s a -> s {_ecstsTrafficWeight = a})

-- | A unique ID of an @ECSTaskSet@ .
ecstsIdentifer :: Lens' ECSTaskSet (Maybe Text)
ecstsIdentifer = lens _ecstsIdentifer (\s a -> s {_ecstsIdentifer = a})

instance FromJSON ECSTaskSet where
  parseJSON =
    withObject
      "ECSTaskSet"
      ( \x ->
          ECSTaskSet'
            <$> (x .:? "status")
            <*> (x .:? "runningCount")
            <*> (x .:? "desiredCount")
            <*> (x .:? "pendingCount")
            <*> (x .:? "taskSetLabel")
            <*> (x .:? "targetGroup")
            <*> (x .:? "trafficWeight")
            <*> (x .:? "identifer")
      )

instance Hashable ECSTaskSet

instance NFData ECSTaskSet
