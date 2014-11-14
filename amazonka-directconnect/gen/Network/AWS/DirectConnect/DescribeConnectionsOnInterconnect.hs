{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE FlexibleInstances          #-}
{-# LANGUAGE NoImplicitPrelude          #-}
{-# LANGUAGE OverloadedStrings          #-}
{-# LANGUAGE RecordWildCards            #-}
{-# LANGUAGE TypeFamilies               #-}

{-# OPTIONS_GHC -w                      #-}

-- Module      : Network.AWS.DirectConnect.DescribeConnectionsOnInterconnect
-- Copyright   : (c) 2013-2014 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : This Source Code Form is subject to the terms of
--               the Mozilla Public License, v. 2.0.
--               A copy of the MPL can be found in the LICENSE file or
--               you can obtain it at http://mozilla.org/MPL/2.0/.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)

-- | Return a list of connections that have been provisioned on the given
-- interconnect.
module Network.AWS.DirectConnect.DescribeConnectionsOnInterconnect
    (
    -- * Request
      DescribeConnectionsOnInterconnect
    -- ** Request constructor
    , describeConnectionsOnInterconnect
    -- ** Request lenses
    , dcoiInterconnectId

    -- * Response
    , DescribeConnectionsOnInterconnectResponse
    -- ** Response constructor
    , describeConnectionsOnInterconnectResponse
    -- ** Response lenses
    , dcoirConnections
    ) where

import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.DirectConnect.Types

newtype DescribeConnectionsOnInterconnect = DescribeConnectionsOnInterconnect
    { _dcoiInterconnectId :: Text
    } deriving (Eq, Ord, Show, Generic, Monoid, IsString)

-- | 'DescribeConnectionsOnInterconnect' constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'dcoiInterconnectId' @::@ 'Text'
--
describeConnectionsOnInterconnect :: Text -- ^ 'dcoiInterconnectId'
                                  -> DescribeConnectionsOnInterconnect
describeConnectionsOnInterconnect p1 = DescribeConnectionsOnInterconnect
    { _dcoiInterconnectId = p1
    }

-- | ID of the interconnect on which a list of connection is provisioned.
-- Example: dxcon-abc123 Default: None.
dcoiInterconnectId :: Lens' DescribeConnectionsOnInterconnect Text
dcoiInterconnectId =
    lens _dcoiInterconnectId (\s a -> s { _dcoiInterconnectId = a })

instance ToPath DescribeConnectionsOnInterconnect where
    toPath = const "/"

instance ToQuery DescribeConnectionsOnInterconnect where
    toQuery = const mempty

instance ToHeaders DescribeConnectionsOnInterconnect

instance ToBody DescribeConnectionsOnInterconnect where
    toBody = toBody . encode . _dcoiInterconnectId

newtype DescribeConnectionsOnInterconnectResponse = DescribeConnectionsOnInterconnectResponse
    { _dcoirConnections :: [Connection]
    } deriving (Eq, Show, Generic, Monoid, Semigroup)

instance GHC.Exts.IsList DescribeConnectionsOnInterconnectResponse where
    type Item DescribeConnectionsOnInterconnectResponse = Connection

    fromList = DescribeConnectionsOnInterconnectResponse . GHC.Exts.fromList
    toList   = GHC.Exts.toList . _dcoirConnections

-- | 'DescribeConnectionsOnInterconnectResponse' constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'dcoirConnections' @::@ ['Connection']
--
describeConnectionsOnInterconnectResponse :: DescribeConnectionsOnInterconnectResponse
describeConnectionsOnInterconnectResponse = DescribeConnectionsOnInterconnectResponse
    { _dcoirConnections = mempty
    }

-- | A list of connections.
dcoirConnections :: Lens' DescribeConnectionsOnInterconnectResponse [Connection]
dcoirConnections = lens _dcoirConnections (\s a -> s { _dcoirConnections = a })

instance AWSRequest DescribeConnectionsOnInterconnect where
    type Sv DescribeConnectionsOnInterconnect = DirectConnect
    type Rs DescribeConnectionsOnInterconnect = DescribeConnectionsOnInterconnectResponse

    request  = post
    response = jsonResponse $ \h o -> DescribeConnectionsOnInterconnectResponse
        <$> o .: "connections"
