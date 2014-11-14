{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE FlexibleInstances          #-}
{-# LANGUAGE NoImplicitPrelude          #-}
{-# LANGUAGE OverloadedStrings          #-}
{-# LANGUAGE RecordWildCards            #-}
{-# LANGUAGE TypeFamilies               #-}

{-# OPTIONS_GHC -w                      #-}

-- Module      : Network.AWS.OpsWorks.DescribeCommands
-- Copyright   : (c) 2013-2014 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : This Source Code Form is subject to the terms of
--               the Mozilla Public License, v. 2.0.
--               A copy of the MPL can be found in the LICENSE file or
--               you can obtain it at http://mozilla.org/MPL/2.0/.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)

-- | Describes the results of specified commands. Required Permissions: To use
-- this action, an IAM user must have a Show, Deploy, or Manage permissions
-- level for the stack, or an attached policy that explicitly grants
-- permissions. For more information on user permissions, see Managing User
-- Permissions.
module Network.AWS.OpsWorks.DescribeCommands
    (
    -- * Request
      DescribeCommands
    -- ** Request constructor
    , describeCommands
    -- ** Request lenses
    , dcCommandIds
    , dcDeploymentId
    , dcInstanceId

    -- * Response
    , DescribeCommandsResponse
    -- ** Response constructor
    , describeCommandsResponse
    -- ** Response lenses
    , dcrCommands
    ) where

import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.OpsWorks.Types

data DescribeCommands = DescribeCommands
    { _dcCommandIds   :: [Text]
    , _dcDeploymentId :: Maybe Text
    , _dcInstanceId   :: Maybe Text
    } deriving (Eq, Ord, Show, Generic)

-- | 'DescribeCommands' constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'dcCommandIds' @::@ ['Text']
--
-- * 'dcDeploymentId' @::@ 'Maybe' 'Text'
--
-- * 'dcInstanceId' @::@ 'Maybe' 'Text'
--
describeCommands :: DescribeCommands
describeCommands = DescribeCommands
    { _dcDeploymentId = Nothing
    , _dcInstanceId   = Nothing
    , _dcCommandIds   = mempty
    }

-- | An array of command IDs. If you include this parameter, DescribeCommands
-- returns a description of the specified commands. Otherwise, it returns a
-- description of every command.
dcCommandIds :: Lens' DescribeCommands [Text]
dcCommandIds = lens _dcCommandIds (\s a -> s { _dcCommandIds = a })

-- | The deployment ID. If you include this parameter, DescribeCommands
-- returns a description of the commands associated with the specified
-- deployment.
dcDeploymentId :: Lens' DescribeCommands (Maybe Text)
dcDeploymentId = lens _dcDeploymentId (\s a -> s { _dcDeploymentId = a })

-- | The instance ID. If you include this parameter, DescribeCommands returns
-- a description of the commands associated with the specified instance.
dcInstanceId :: Lens' DescribeCommands (Maybe Text)
dcInstanceId = lens _dcInstanceId (\s a -> s { _dcInstanceId = a })

instance ToPath DescribeCommands where
    toPath = const "/"

instance ToQuery DescribeCommands where
    toQuery = const mempty

instance ToHeaders DescribeCommands

instance ToBody DescribeCommands where
    toBody = toBody . encode . _dcDeploymentId

newtype DescribeCommandsResponse = DescribeCommandsResponse
    { _dcrCommands :: [Command]
    } deriving (Eq, Show, Generic, Monoid, Semigroup)

instance GHC.Exts.IsList DescribeCommandsResponse where
    type Item DescribeCommandsResponse = Command

    fromList = DescribeCommandsResponse . GHC.Exts.fromList
    toList   = GHC.Exts.toList . _dcrCommands

-- | 'DescribeCommandsResponse' constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'dcrCommands' @::@ ['Command']
--
describeCommandsResponse :: DescribeCommandsResponse
describeCommandsResponse = DescribeCommandsResponse
    { _dcrCommands = mempty
    }

-- | An array of Command objects that describe each of the specified commands.
dcrCommands :: Lens' DescribeCommandsResponse [Command]
dcrCommands = lens _dcrCommands (\s a -> s { _dcrCommands = a })

instance AWSRequest DescribeCommands where
    type Sv DescribeCommands = OpsWorks
    type Rs DescribeCommands = DescribeCommandsResponse

    request  = post
    response = jsonResponse $ \h o -> DescribeCommandsResponse
        <$> o .: "Commands"
