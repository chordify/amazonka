{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE FlexibleInstances          #-}
{-# LANGUAGE NoImplicitPrelude          #-}
{-# LANGUAGE OverloadedStrings          #-}
{-# LANGUAGE RecordWildCards            #-}
{-# LANGUAGE TypeFamilies               #-}

{-# OPTIONS_GHC -w                      #-}

-- Module      : Network.AWS.SWF.CountPendingDecisionTasks
-- Copyright   : (c) 2013-2014 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : This Source Code Form is subject to the terms of
--               the Mozilla Public License, v. 2.0.
--               A copy of the MPL can be found in the LICENSE file or
--               you can obtain it at http://mozilla.org/MPL/2.0/.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)

-- | Returns the estimated number of decision tasks in the specified task list.
-- The count returned is an approximation and is not guaranteed to be exact.
-- If you specify a task list that no decision task was ever scheduled in then
-- 0 will be returned. Access Control You can use IAM policies to control this
-- action's access to Amazon SWF resources as follows: Use a Resource element
-- with the domain name to limit the action to only specified domains. Use an
-- Action element to allow or deny permission to call this action. Constrain
-- the taskList.name parameter by using a Condition element with the
-- swf:taskList.name key to allow the action to access only certain task
-- lists. If the caller does not have sufficient permissions to invoke the
-- action, or the parameter values fall outside the specified constraints, the
-- action fails by throwing OperationNotPermitted. For details and example IAM
-- policies, see Using IAM to Manage Access to Amazon SWF Workflows.
module Network.AWS.SWF.CountPendingDecisionTasks
    (
    -- * Request
      CountPendingDecisionTasks
    -- ** Request constructor
    , countPendingDecisionTasks
    -- ** Request lenses
    , cpdtDomain
    , cpdtTaskList

    -- * Response
    , CountPendingDecisionTasksResponse
    -- ** Response constructor
    , countPendingDecisionTasksResponse
    -- ** Response lenses
    , cpdtrCount
    , cpdtrTruncated
    ) where

import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.SWF.Types

data CountPendingDecisionTasks = CountPendingDecisionTasks
    { _cpdtDomain   :: Text
    , _cpdtTaskList :: TaskList
    } deriving (Eq, Show, Generic)

-- | 'CountPendingDecisionTasks' constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'cpdtDomain' @::@ 'Text'
--
-- * 'cpdtTaskList' @::@ 'TaskList'
--
countPendingDecisionTasks :: Text -- ^ 'cpdtDomain'
                          -> TaskList -- ^ 'cpdtTaskList'
                          -> CountPendingDecisionTasks
countPendingDecisionTasks p1 p2 = CountPendingDecisionTasks
    { _cpdtDomain   = p1
    , _cpdtTaskList = p2
    }

-- | The name of the domain that contains the task list.
cpdtDomain :: Lens' CountPendingDecisionTasks Text
cpdtDomain = lens _cpdtDomain (\s a -> s { _cpdtDomain = a })

-- | The name of the task list.
cpdtTaskList :: Lens' CountPendingDecisionTasks TaskList
cpdtTaskList = lens _cpdtTaskList (\s a -> s { _cpdtTaskList = a })

instance ToPath CountPendingDecisionTasks where
    toPath = const "/"

instance ToQuery CountPendingDecisionTasks where
    toQuery = const mempty

instance ToHeaders CountPendingDecisionTasks

instance ToBody CountPendingDecisionTasks where
    toBody = toBody . encode . _cpdtDomain

data CountPendingDecisionTasksResponse = CountPendingDecisionTasksResponse
    { _cpdtrCount     :: Natural
    , _cpdtrTruncated :: Maybe Bool
    } deriving (Eq, Ord, Show, Generic)

-- | 'CountPendingDecisionTasksResponse' constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'cpdtrCount' @::@ 'Natural'
--
-- * 'cpdtrTruncated' @::@ 'Maybe' 'Bool'
--
countPendingDecisionTasksResponse :: Natural -- ^ 'cpdtrCount'
                                  -> CountPendingDecisionTasksResponse
countPendingDecisionTasksResponse p1 = CountPendingDecisionTasksResponse
    { _cpdtrCount     = p1
    , _cpdtrTruncated = Nothing
    }

-- | The number of tasks in the task list.
cpdtrCount :: Lens' CountPendingDecisionTasksResponse Natural
cpdtrCount = lens _cpdtrCount (\s a -> s { _cpdtrCount = a })

-- | If set to true, indicates that the actual count was more than the maximum
-- supported by this API and the count returned is the truncated value.
cpdtrTruncated :: Lens' CountPendingDecisionTasksResponse (Maybe Bool)
cpdtrTruncated = lens _cpdtrTruncated (\s a -> s { _cpdtrTruncated = a })

instance AWSRequest CountPendingDecisionTasks where
    type Sv CountPendingDecisionTasks = SWF
    type Rs CountPendingDecisionTasks = CountPendingDecisionTasksResponse

    request  = post
    response = jsonResponse $ \h o -> CountPendingDecisionTasksResponse
        <$> o .: "count"
        <*> o .: "truncated"
