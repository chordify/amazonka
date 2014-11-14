{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE FlexibleInstances          #-}
{-# LANGUAGE NoImplicitPrelude          #-}
{-# LANGUAGE OverloadedStrings          #-}
{-# LANGUAGE RecordWildCards            #-}
{-# LANGUAGE TypeFamilies               #-}

{-# OPTIONS_GHC -w                      #-}

-- Module      : Network.AWS.Support.DescribeAttachment
-- Copyright   : (c) 2013-2014 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : This Source Code Form is subject to the terms of
--               the Mozilla Public License, v. 2.0.
--               A copy of the MPL can be found in the LICENSE file or
--               you can obtain it at http://mozilla.org/MPL/2.0/.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)

-- | Returns the attachment that has the specified ID. Attachment IDs are
-- generated by the case management system when you add an attachment to a
-- case or case communication. Attachment IDs are returned in the
-- AttachmentDetails objects that are returned by the DescribeCommunications
-- operation.
module Network.AWS.Support.DescribeAttachment
    (
    -- * Request
      DescribeAttachment
    -- ** Request constructor
    , describeAttachment
    -- ** Request lenses
    , daAttachmentId

    -- * Response
    , DescribeAttachmentResponse
    -- ** Response constructor
    , describeAttachmentResponse
    -- ** Response lenses
    , darAttachment
    ) where

import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Support.Types

newtype DescribeAttachment = DescribeAttachment
    { _daAttachmentId :: Text
    } deriving (Eq, Ord, Show, Generic, Monoid, IsString)

-- | 'DescribeAttachment' constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'daAttachmentId' @::@ 'Text'
--
describeAttachment :: Text -- ^ 'daAttachmentId'
                   -> DescribeAttachment
describeAttachment p1 = DescribeAttachment
    { _daAttachmentId = p1
    }

-- | The ID of the attachment to return. Attachment IDs are returned by the
-- DescribeCommunications operation.
daAttachmentId :: Lens' DescribeAttachment Text
daAttachmentId = lens _daAttachmentId (\s a -> s { _daAttachmentId = a })

instance ToPath DescribeAttachment where
    toPath = const "/"

instance ToQuery DescribeAttachment where
    toQuery = const mempty

instance ToHeaders DescribeAttachment

instance ToBody DescribeAttachment where
    toBody = toBody . encode . _daAttachmentId

newtype DescribeAttachmentResponse = DescribeAttachmentResponse
    { _darAttachment :: Maybe Attachment
    } deriving (Eq, Show, Generic)

-- | 'DescribeAttachmentResponse' constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'darAttachment' @::@ 'Maybe' 'Attachment'
--
describeAttachmentResponse :: DescribeAttachmentResponse
describeAttachmentResponse = DescribeAttachmentResponse
    { _darAttachment = Nothing
    }

-- | The attachment content and file name.
darAttachment :: Lens' DescribeAttachmentResponse (Maybe Attachment)
darAttachment = lens _darAttachment (\s a -> s { _darAttachment = a })

instance AWSRequest DescribeAttachment where
    type Sv DescribeAttachment = Support
    type Rs DescribeAttachment = DescribeAttachmentResponse

    request  = post
    response = jsonResponse $ \h o -> DescribeAttachmentResponse
        <$> o .: "attachment"
