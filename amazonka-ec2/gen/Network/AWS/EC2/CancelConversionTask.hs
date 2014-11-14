{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE FlexibleInstances          #-}
{-# LANGUAGE NoImplicitPrelude          #-}
{-# LANGUAGE OverloadedStrings          #-}
{-# LANGUAGE RecordWildCards            #-}
{-# LANGUAGE TypeFamilies               #-}

{-# OPTIONS_GHC -w                      #-}

-- Module      : Network.AWS.EC2.CancelConversionTask
-- Copyright   : (c) 2013-2014 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : This Source Code Form is subject to the terms of
--               the Mozilla Public License, v. 2.0.
--               A copy of the MPL can be found in the LICENSE file or
--               you can obtain it at http://mozilla.org/MPL/2.0/.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)

-- | Cancels an active conversion task. The task can be the import of an
-- instance or volume. The action removes all artifacts of the conversion,
-- including a partially uploaded volume or instance. If the conversion is
-- complete or is in the process of transferring the final disk image, the
-- command fails and returns an exception. For more information, see Using the
-- Command Line Tools to Import Your Virtual Machine to Amazon EC2 in the
-- Amazon Elastic Compute Cloud User Guide.
module Network.AWS.EC2.CancelConversionTask
    (
    -- * Request
      CancelConversionTask
    -- ** Request constructor
    , cancelConversionTask
    -- ** Request lenses
    , cctConversionTaskId
    , cctDryRun
    , cctReasonMessage

    -- * Response
    , CancelConversionTaskResponse
    -- ** Response constructor
    , cancelConversionTaskResponse
    ) where

import Network.AWS.Prelude
import Network.AWS.Request.Query
import Network.AWS.EC2.Types
import qualified GHC.Exts

data CancelConversionTask = CancelConversionTask
    { _cctConversionTaskId :: Text
    , _cctDryRun           :: Maybe Bool
    , _cctReasonMessage    :: Maybe Text
    } deriving (Eq, Ord, Show, Generic)

-- | 'CancelConversionTask' constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'cctConversionTaskId' @::@ 'Text'
--
-- * 'cctDryRun' @::@ 'Maybe' 'Bool'
--
-- * 'cctReasonMessage' @::@ 'Maybe' 'Text'
--
cancelConversionTask :: Text -- ^ 'cctConversionTaskId'
                     -> CancelConversionTask
cancelConversionTask p1 = CancelConversionTask
    { _cctConversionTaskId = p1
    , _cctDryRun           = Nothing
    , _cctReasonMessage    = Nothing
    }

-- | The ID of the conversion task.
cctConversionTaskId :: Lens' CancelConversionTask Text
cctConversionTaskId =
    lens _cctConversionTaskId (\s a -> s { _cctConversionTaskId = a })

cctDryRun :: Lens' CancelConversionTask (Maybe Bool)
cctDryRun = lens _cctDryRun (\s a -> s { _cctDryRun = a })

cctReasonMessage :: Lens' CancelConversionTask (Maybe Text)
cctReasonMessage = lens _cctReasonMessage (\s a -> s { _cctReasonMessage = a })

instance ToQuery CancelConversionTask

instance ToPath CancelConversionTask where
    toPath = const "/"

data CancelConversionTaskResponse = CancelConversionTaskResponse
    deriving (Eq, Ord, Show, Generic)

-- | 'CancelConversionTaskResponse' constructor.
cancelConversionTaskResponse :: CancelConversionTaskResponse
cancelConversionTaskResponse = CancelConversionTaskResponse

instance AWSRequest CancelConversionTask where
    type Sv CancelConversionTask = EC2
    type Rs CancelConversionTask = CancelConversionTaskResponse

    request  = post "CancelConversionTask"
    response = nullaryResponse CancelConversionTaskResponse
