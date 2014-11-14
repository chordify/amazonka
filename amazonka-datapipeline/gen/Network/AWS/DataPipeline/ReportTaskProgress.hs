{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE FlexibleInstances          #-}
{-# LANGUAGE NoImplicitPrelude          #-}
{-# LANGUAGE OverloadedStrings          #-}
{-# LANGUAGE RecordWildCards            #-}
{-# LANGUAGE TypeFamilies               #-}

{-# OPTIONS_GHC -w                      #-}

-- Module      : Network.AWS.DataPipeline.ReportTaskProgress
-- Copyright   : (c) 2013-2014 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : This Source Code Form is subject to the terms of
--               the Mozilla Public License, v. 2.0.
--               A copy of the MPL can be found in the LICENSE file or
--               you can obtain it at http://mozilla.org/MPL/2.0/.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)

-- | Updates the AWS Data Pipeline service on the progress of the calling task
-- runner. When the task runner is assigned a task, it should call
-- ReportTaskProgress to acknowledge that it has the task within 2 minutes. If
-- the web service does not recieve this acknowledgement within the 2 minute
-- window, it will assign the task in a subsequent PollForTask call. After
-- this initial acknowledgement, the task runner only needs to report progress
-- every 15 minutes to maintain its ownership of the task. You can change this
-- reporting time from 15 minutes by specifying a reportProgressTimeout field
-- in your pipeline. If a task runner does not report its status after 5
-- minutes, AWS Data Pipeline will assume that the task runner is unable to
-- process the task and will reassign the task in a subsequent response to
-- PollForTask. task runners should call ReportTaskProgress every 60 seconds.
module Network.AWS.DataPipeline.ReportTaskProgress
    (
    -- * Request
      ReportTaskProgress
    -- ** Request constructor
    , reportTaskProgress
    -- ** Request lenses
    , rtpTaskId

    -- * Response
    , ReportTaskProgressResponse
    -- ** Response constructor
    , reportTaskProgressResponse
    -- ** Response lenses
    , rtprCanceled
    ) where

import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.DataPipeline.Types

newtype ReportTaskProgress = ReportTaskProgress
    { _rtpTaskId :: Text
    } deriving (Eq, Ord, Show, Generic, Monoid, IsString)

-- | 'ReportTaskProgress' constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'rtpTaskId' @::@ 'Text'
--
reportTaskProgress :: Text -- ^ 'rtpTaskId'
                   -> ReportTaskProgress
reportTaskProgress p1 = ReportTaskProgress
    { _rtpTaskId = p1
    }

-- | Identifier of the task assigned to the task runner. This value is
-- provided in the TaskObject that the service returns with the response for
-- the PollForTask action.
rtpTaskId :: Lens' ReportTaskProgress Text
rtpTaskId = lens _rtpTaskId (\s a -> s { _rtpTaskId = a })

instance ToPath ReportTaskProgress where
    toPath = const "/"

instance ToQuery ReportTaskProgress where
    toQuery = const mempty

instance ToHeaders ReportTaskProgress

instance ToBody ReportTaskProgress where
    toBody = toBody . encode . _rtpTaskId

newtype ReportTaskProgressResponse = ReportTaskProgressResponse
    { _rtprCanceled :: Bool
    } deriving (Eq, Ord, Show, Generic, Enum)

-- | 'ReportTaskProgressResponse' constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'rtprCanceled' @::@ 'Bool'
--
reportTaskProgressResponse :: Bool -- ^ 'rtprCanceled'
                           -> ReportTaskProgressResponse
reportTaskProgressResponse p1 = ReportTaskProgressResponse
    { _rtprCanceled = p1
    }

-- | If True, the calling task runner should cancel processing of the task.
-- The task runner does not need to call SetTaskStatus for canceled tasks.
rtprCanceled :: Lens' ReportTaskProgressResponse Bool
rtprCanceled = lens _rtprCanceled (\s a -> s { _rtprCanceled = a })

instance AWSRequest ReportTaskProgress where
    type Sv ReportTaskProgress = DataPipeline
    type Rs ReportTaskProgress = ReportTaskProgressResponse

    request  = post
    response = jsonResponse $ \h o -> ReportTaskProgressResponse
        <$> o .: "canceled"
