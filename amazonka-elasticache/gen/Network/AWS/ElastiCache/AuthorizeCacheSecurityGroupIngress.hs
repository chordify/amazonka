{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE FlexibleInstances          #-}
{-# LANGUAGE NoImplicitPrelude          #-}
{-# LANGUAGE OverloadedStrings          #-}
{-# LANGUAGE RecordWildCards            #-}
{-# LANGUAGE TypeFamilies               #-}

{-# OPTIONS_GHC -w                      #-}

-- Module      : Network.AWS.ElastiCache.AuthorizeCacheSecurityGroupIngress
-- Copyright   : (c) 2013-2014 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : This Source Code Form is subject to the terms of
--               the Mozilla Public License, v. 2.0.
--               A copy of the MPL can be found in the LICENSE file or
--               you can obtain it at http://mozilla.org/MPL/2.0/.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)

-- | The AuthorizeCacheSecurityGroupIngress operation allows network ingress to
-- a cache security group. Applications using ElastiCache must be running on
-- Amazon EC2, and Amazon EC2 security groups are used as the authorization
-- mechanism.
module Network.AWS.ElastiCache.AuthorizeCacheSecurityGroupIngress
    (
    -- * Request
      AuthorizeCacheSecurityGroupIngress
    -- ** Request constructor
    , authorizeCacheSecurityGroupIngress
    -- ** Request lenses
    , acsgiCacheSecurityGroupName
    , acsgiEC2SecurityGroupName
    , acsgiEC2SecurityGroupOwnerId

    -- * Response
    , AuthorizeCacheSecurityGroupIngressResponse
    -- ** Response constructor
    , authorizeCacheSecurityGroupIngressResponse
    -- ** Response lenses
    , acsgirCacheSecurityGroup
    ) where

import Network.AWS.Prelude
import Network.AWS.Request.Query
import Network.AWS.ElastiCache.Types
import qualified GHC.Exts

data AuthorizeCacheSecurityGroupIngress = AuthorizeCacheSecurityGroupIngress
    { _acsgiCacheSecurityGroupName  :: Text
    , _acsgiEC2SecurityGroupName    :: Text
    , _acsgiEC2SecurityGroupOwnerId :: Text
    } deriving (Eq, Ord, Show, Generic)

-- | 'AuthorizeCacheSecurityGroupIngress' constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'acsgiCacheSecurityGroupName' @::@ 'Text'
--
-- * 'acsgiEC2SecurityGroupName' @::@ 'Text'
--
-- * 'acsgiEC2SecurityGroupOwnerId' @::@ 'Text'
--
authorizeCacheSecurityGroupIngress :: Text -- ^ 'acsgiCacheSecurityGroupName'
                                   -> Text -- ^ 'acsgiEC2SecurityGroupName'
                                   -> Text -- ^ 'acsgiEC2SecurityGroupOwnerId'
                                   -> AuthorizeCacheSecurityGroupIngress
authorizeCacheSecurityGroupIngress p1 p2 p3 = AuthorizeCacheSecurityGroupIngress
    { _acsgiCacheSecurityGroupName  = p1
    , _acsgiEC2SecurityGroupName    = p2
    , _acsgiEC2SecurityGroupOwnerId = p3
    }

-- | The cache security group which will allow network ingress.
acsgiCacheSecurityGroupName :: Lens' AuthorizeCacheSecurityGroupIngress Text
acsgiCacheSecurityGroupName =
    lens _acsgiCacheSecurityGroupName
        (\s a -> s { _acsgiCacheSecurityGroupName = a })

-- | The Amazon EC2 security group to be authorized for ingress to the cache
-- security group.
acsgiEC2SecurityGroupName :: Lens' AuthorizeCacheSecurityGroupIngress Text
acsgiEC2SecurityGroupName =
    lens _acsgiEC2SecurityGroupName
        (\s a -> s { _acsgiEC2SecurityGroupName = a })

-- | The AWS account number of the Amazon EC2 security group owner. Note that
-- this is not the same thing as an AWS access key ID - you must provide a
-- valid AWS account number for this parameter.
acsgiEC2SecurityGroupOwnerId :: Lens' AuthorizeCacheSecurityGroupIngress Text
acsgiEC2SecurityGroupOwnerId =
    lens _acsgiEC2SecurityGroupOwnerId
        (\s a -> s { _acsgiEC2SecurityGroupOwnerId = a })

instance ToQuery AuthorizeCacheSecurityGroupIngress

instance ToPath AuthorizeCacheSecurityGroupIngress where
    toPath = const "/"

newtype AuthorizeCacheSecurityGroupIngressResponse = AuthorizeCacheSecurityGroupIngressResponse
    { _acsgirCacheSecurityGroup :: Maybe CacheSecurityGroup
    } deriving (Eq, Show, Generic)

-- | 'AuthorizeCacheSecurityGroupIngressResponse' constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'acsgirCacheSecurityGroup' @::@ 'Maybe' 'CacheSecurityGroup'
--
authorizeCacheSecurityGroupIngressResponse :: AuthorizeCacheSecurityGroupIngressResponse
authorizeCacheSecurityGroupIngressResponse = AuthorizeCacheSecurityGroupIngressResponse
    { _acsgirCacheSecurityGroup = Nothing
    }

acsgirCacheSecurityGroup :: Lens' AuthorizeCacheSecurityGroupIngressResponse (Maybe CacheSecurityGroup)
acsgirCacheSecurityGroup =
    lens _acsgirCacheSecurityGroup
        (\s a -> s { _acsgirCacheSecurityGroup = a })

instance AWSRequest AuthorizeCacheSecurityGroupIngress where
    type Sv AuthorizeCacheSecurityGroupIngress = ElastiCache
    type Rs AuthorizeCacheSecurityGroupIngress = AuthorizeCacheSecurityGroupIngressResponse

    request  = post "AuthorizeCacheSecurityGroupIngress"
    response = xmlResponse $ \h x -> AuthorizeCacheSecurityGroupIngressResponse
        <$> x %| "CacheSecurityGroup"
