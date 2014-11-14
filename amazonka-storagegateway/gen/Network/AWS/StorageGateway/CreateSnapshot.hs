{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE FlexibleInstances          #-}
{-# LANGUAGE NoImplicitPrelude          #-}
{-# LANGUAGE OverloadedStrings          #-}
{-# LANGUAGE RecordWildCards            #-}
{-# LANGUAGE TypeFamilies               #-}

{-# OPTIONS_GHC -w                      #-}

-- Module      : Network.AWS.StorageGateway.CreateSnapshot
-- Copyright   : (c) 2013-2014 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : This Source Code Form is subject to the terms of
--               the Mozilla Public License, v. 2.0.
--               A copy of the MPL can be found in the LICENSE file or
--               you can obtain it at http://mozilla.org/MPL/2.0/.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)

-- | This operation initiates a snapshot of a volume. AWS Storage Gateway
-- provides the ability to back up point-in-time snapshots of your data to
-- Amazon Simple Storage (S3) for durable off-site recovery, as well as import
-- the data to an Amazon Elastic Block Store (EBS) volume in Amazon Elastic
-- Compute Cloud (EC2). You can take snapshots of your gateway volume on a
-- scheduled or ad-hoc basis. This API enables you to take ad-hoc snapshot.
-- For more information, see Working With Snapshots in the AWS Storage Gateway
-- Console. In the CreateSnapshot request you identify the volume by providing
-- its Amazon Resource Name (ARN). You must also provide description for the
-- snapshot. When AWS Storage Gateway takes the snapshot of specified volume,
-- the snapshot and description appears in the AWS Storage Gateway Console. In
-- response, AWS Storage Gateway returns you a snapshot ID. You can use this
-- snapshot ID to check the snapshot progress or later use it when you want to
-- create a volume from a snapshot.
module Network.AWS.StorageGateway.CreateSnapshot
    (
    -- * Request
      CreateSnapshot
    -- ** Request constructor
    , createSnapshot
    -- ** Request lenses
    , csSnapshotDescription
    , csVolumeARN

    -- * Response
    , CreateSnapshotResponse
    -- ** Response constructor
    , createSnapshotResponse
    -- ** Response lenses
    , csrSnapshotId
    , csrVolumeARN
    ) where

import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.StorageGateway.Types

data CreateSnapshot = CreateSnapshot
    { _csSnapshotDescription :: Text
    , _csVolumeARN           :: Text
    } deriving (Eq, Ord, Show, Generic)

-- | 'CreateSnapshot' constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'csSnapshotDescription' @::@ 'Text'
--
-- * 'csVolumeARN' @::@ 'Text'
--
createSnapshot :: Text -- ^ 'csVolumeARN'
               -> Text -- ^ 'csSnapshotDescription'
               -> CreateSnapshot
createSnapshot p1 p2 = CreateSnapshot
    { _csVolumeARN           = p1
    , _csSnapshotDescription = p2
    }

-- | Textual description of the snapshot that appears in the Amazon EC2
-- console, Elastic Block Store snapshots panel in the Description field,
-- and in the AWS Storage Gateway snapshot Details pane, Description field.
csSnapshotDescription :: Lens' CreateSnapshot Text
csSnapshotDescription =
    lens _csSnapshotDescription (\s a -> s { _csSnapshotDescription = a })

-- | The Amazon Resource Name (ARN) of the volume. Use the ListVolumes
-- operation to return a list of gateway volumes.
csVolumeARN :: Lens' CreateSnapshot Text
csVolumeARN = lens _csVolumeARN (\s a -> s { _csVolumeARN = a })

instance ToPath CreateSnapshot where
    toPath = const "/"

instance ToQuery CreateSnapshot where
    toQuery = const mempty

instance ToHeaders CreateSnapshot

instance ToBody CreateSnapshot where
    toBody = toBody . encode . _csVolumeARN

data CreateSnapshotResponse = CreateSnapshotResponse
    { _csrSnapshotId :: Maybe Text
    , _csrVolumeARN  :: Maybe Text
    } deriving (Eq, Ord, Show, Generic)

-- | 'CreateSnapshotResponse' constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'csrSnapshotId' @::@ 'Maybe' 'Text'
--
-- * 'csrVolumeARN' @::@ 'Maybe' 'Text'
--
createSnapshotResponse :: CreateSnapshotResponse
createSnapshotResponse = CreateSnapshotResponse
    { _csrVolumeARN  = Nothing
    , _csrSnapshotId = Nothing
    }

-- | The snapshot ID that is used to refer to the snapshot in future
-- operations such as describing snapshots (Amazon Elastic Compute Cloud API
-- DescribeSnapshots) or creating a volume from a snapshot
-- (CreateStorediSCSIVolume).
csrSnapshotId :: Lens' CreateSnapshotResponse (Maybe Text)
csrSnapshotId = lens _csrSnapshotId (\s a -> s { _csrSnapshotId = a })

-- | The Amazon Resource Name (ARN) of the volume of which the snapshot was
-- taken.
csrVolumeARN :: Lens' CreateSnapshotResponse (Maybe Text)
csrVolumeARN = lens _csrVolumeARN (\s a -> s { _csrVolumeARN = a })

instance AWSRequest CreateSnapshot where
    type Sv CreateSnapshot = StorageGateway
    type Rs CreateSnapshot = CreateSnapshotResponse

    request  = post
    response = jsonResponse $ \h o -> CreateSnapshotResponse
        <$> o .: "SnapshotId"
        <*> o .: "VolumeARN"
