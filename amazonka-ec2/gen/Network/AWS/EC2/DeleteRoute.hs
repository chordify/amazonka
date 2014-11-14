{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE FlexibleInstances          #-}
{-# LANGUAGE NoImplicitPrelude          #-}
{-# LANGUAGE OverloadedStrings          #-}
{-# LANGUAGE RecordWildCards            #-}
{-# LANGUAGE TypeFamilies               #-}

{-# OPTIONS_GHC -w                      #-}

-- Module      : Network.AWS.EC2.DeleteRoute
-- Copyright   : (c) 2013-2014 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : This Source Code Form is subject to the terms of
--               the Mozilla Public License, v. 2.0.
--               A copy of the MPL can be found in the LICENSE file or
--               you can obtain it at http://mozilla.org/MPL/2.0/.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)

-- | Deletes the specified route from the specified route table.
module Network.AWS.EC2.DeleteRoute
    (
    -- * Request
      DeleteRoute
    -- ** Request constructor
    , deleteRoute
    -- ** Request lenses
    , drDestinationCidrBlock
    , drDryRun
    , drRouteTableId

    -- * Response
    , DeleteRouteResponse
    -- ** Response constructor
    , deleteRouteResponse
    ) where

import Network.AWS.Prelude
import Network.AWS.Request.Query
import Network.AWS.EC2.Types
import qualified GHC.Exts

data DeleteRoute = DeleteRoute
    { _drDestinationCidrBlock :: Text
    , _drDryRun               :: Maybe Bool
    , _drRouteTableId         :: Text
    } deriving (Eq, Ord, Show, Generic)

-- | 'DeleteRoute' constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'drDestinationCidrBlock' @::@ 'Text'
--
-- * 'drDryRun' @::@ 'Maybe' 'Bool'
--
-- * 'drRouteTableId' @::@ 'Text'
--
deleteRoute :: Text -- ^ 'drRouteTableId'
            -> Text -- ^ 'drDestinationCidrBlock'
            -> DeleteRoute
deleteRoute p1 p2 = DeleteRoute
    { _drRouteTableId         = p1
    , _drDestinationCidrBlock = p2
    , _drDryRun               = Nothing
    }

-- | The CIDR range for the route. The value you specify must match the CIDR
-- for the route exactly.
drDestinationCidrBlock :: Lens' DeleteRoute Text
drDestinationCidrBlock =
    lens _drDestinationCidrBlock (\s a -> s { _drDestinationCidrBlock = a })

drDryRun :: Lens' DeleteRoute (Maybe Bool)
drDryRun = lens _drDryRun (\s a -> s { _drDryRun = a })

-- | The ID of the route table.
drRouteTableId :: Lens' DeleteRoute Text
drRouteTableId = lens _drRouteTableId (\s a -> s { _drRouteTableId = a })

instance ToQuery DeleteRoute

instance ToPath DeleteRoute where
    toPath = const "/"

data DeleteRouteResponse = DeleteRouteResponse
    deriving (Eq, Ord, Show, Generic)

-- | 'DeleteRouteResponse' constructor.
deleteRouteResponse :: DeleteRouteResponse
deleteRouteResponse = DeleteRouteResponse

instance AWSRequest DeleteRoute where
    type Sv DeleteRoute = EC2
    type Rs DeleteRoute = DeleteRouteResponse

    request  = post "DeleteRoute"
    response = nullaryResponse DeleteRouteResponse
