{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE FlexibleInstances          #-}
{-# LANGUAGE NoImplicitPrelude          #-}
{-# LANGUAGE OverloadedStrings          #-}
{-# LANGUAGE RecordWildCards            #-}
{-# LANGUAGE TypeFamilies               #-}

{-# OPTIONS_GHC -w                      #-}

-- Module      : Network.AWS.ELB.DeleteLoadBalancer
-- Copyright   : (c) 2013-2014 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : This Source Code Form is subject to the terms of
--               the Mozilla Public License, v. 2.0.
--               A copy of the MPL can be found in the LICENSE file or
--               you can obtain it at http://mozilla.org/MPL/2.0/.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)

-- | Deletes the specified load balancer. If attempting to recreate the load
-- balancer, you must reconfigure all the settings. The DNS name associated
-- with a deleted load balancer will no longer be usable. Once deleted, the
-- name and associated DNS record of the load balancer no longer exist and
-- traffic sent to any of its IP addresses will no longer be delivered to
-- back-end instances. To successfully call this API, you must provide the
-- same account credentials as were used to create the load balancer. By
-- design, if the load balancer does not exist or has already been deleted, a
-- call to DeleteLoadBalancer action still succeeds.
module Network.AWS.ELB.DeleteLoadBalancer
    (
    -- * Request
      DeleteLoadBalancer
    -- ** Request constructor
    , deleteLoadBalancer
    -- ** Request lenses
    , dlbLoadBalancerName

    -- * Response
    , DeleteLoadBalancerResponse
    -- ** Response constructor
    , deleteLoadBalancerResponse
    ) where

import Network.AWS.Prelude
import Network.AWS.Request.Query
import Network.AWS.ELB.Types
import qualified GHC.Exts

newtype DeleteLoadBalancer = DeleteLoadBalancer
    { _dlbLoadBalancerName :: Text
    } deriving (Eq, Ord, Show, Generic, Monoid, IsString)

-- | 'DeleteLoadBalancer' constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'dlbLoadBalancerName' @::@ 'Text'
--
deleteLoadBalancer :: Text -- ^ 'dlbLoadBalancerName'
                   -> DeleteLoadBalancer
deleteLoadBalancer p1 = DeleteLoadBalancer
    { _dlbLoadBalancerName = p1
    }

-- | The name associated with the load balancer.
dlbLoadBalancerName :: Lens' DeleteLoadBalancer Text
dlbLoadBalancerName =
    lens _dlbLoadBalancerName (\s a -> s { _dlbLoadBalancerName = a })

instance ToQuery DeleteLoadBalancer

instance ToPath DeleteLoadBalancer where
    toPath = const "/"

data DeleteLoadBalancerResponse = DeleteLoadBalancerResponse
    deriving (Eq, Ord, Show, Generic)

-- | 'DeleteLoadBalancerResponse' constructor.
deleteLoadBalancerResponse :: DeleteLoadBalancerResponse
deleteLoadBalancerResponse = DeleteLoadBalancerResponse

instance AWSRequest DeleteLoadBalancer where
    type Sv DeleteLoadBalancer = ELB
    type Rs DeleteLoadBalancer = DeleteLoadBalancerResponse

    request  = post "DeleteLoadBalancer"
    response = nullaryResponse DeleteLoadBalancerResponse
