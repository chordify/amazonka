{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE FlexibleInstances          #-}
{-# LANGUAGE NoImplicitPrelude          #-}
{-# LANGUAGE OverloadedStrings          #-}
{-# LANGUAGE RecordWildCards            #-}
{-# LANGUAGE TypeFamilies               #-}

{-# OPTIONS_GHC -w                      #-}

-- Module      : Network.AWS.SNS.GetTopicAttributes
-- Copyright   : (c) 2013-2014 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : This Source Code Form is subject to the terms of
--               the Mozilla Public License, v. 2.0.
--               A copy of the MPL can be found in the LICENSE file or
--               you can obtain it at http://mozilla.org/MPL/2.0/.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)

-- | Returns all of the properties of a topic. Topic properties returned might
-- differ based on the authorization of the user.
module Network.AWS.SNS.GetTopicAttributes
    (
    -- * Request
      GetTopicAttributes
    -- ** Request constructor
    , getTopicAttributes
    -- ** Request lenses
    , gtaTopicArn

    -- * Response
    , GetTopicAttributesResponse
    -- ** Response constructor
    , getTopicAttributesResponse
    -- ** Response lenses
    , gtarAttributes
    ) where

import Network.AWS.Prelude
import Network.AWS.Request.Query
import Network.AWS.SNS.Types
import qualified GHC.Exts

newtype GetTopicAttributes = GetTopicAttributes
    { _gtaTopicArn :: Text
    } deriving (Eq, Ord, Show, Generic, Monoid, IsString)

-- | 'GetTopicAttributes' constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'gtaTopicArn' @::@ 'Text'
--
getTopicAttributes :: Text -- ^ 'gtaTopicArn'
                   -> GetTopicAttributes
getTopicAttributes p1 = GetTopicAttributes
    { _gtaTopicArn = p1
    }

-- | The ARN of the topic whose properties you want to get.
gtaTopicArn :: Lens' GetTopicAttributes Text
gtaTopicArn = lens _gtaTopicArn (\s a -> s { _gtaTopicArn = a })

instance ToQuery GetTopicAttributes

instance ToPath GetTopicAttributes where
    toPath = const "/"

newtype GetTopicAttributesResponse = GetTopicAttributesResponse
    { _gtarAttributes :: Map Text Text
    } deriving (Eq, Show, Generic, Monoid, Semigroup)

-- | 'GetTopicAttributesResponse' constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'gtarAttributes' @::@ 'HashMap' 'Text' 'Text'
--
getTopicAttributesResponse :: GetTopicAttributesResponse
getTopicAttributesResponse = GetTopicAttributesResponse
    { _gtarAttributes = mempty
    }

-- | A map of the topic's attributes. Attributes in this map include the
-- following: TopicArn -- the topic's ARN Owner -- the AWS account ID of the
-- topic's owner Policy -- the JSON serialization of the topic's access
-- control policy DisplayName -- the human-readable name used in the "From"
-- field for notifications to email and email-json endpoints
-- SubscriptionsPending -- the number of subscriptions pending confirmation
-- on this topic SubscriptionsConfirmed -- the number of confirmed
-- subscriptions on this topic SubscriptionsDeleted -- the number of deleted
-- subscriptions on this topic DeliveryPolicy -- the JSON serialization of
-- the topic's delivery policy EffectiveDeliveryPolicy -- the JSON
-- serialization of the effective delivery policy that takes into account
-- system defaults.
gtarAttributes :: Lens' GetTopicAttributesResponse (HashMap Text Text)
gtarAttributes = lens _gtarAttributes (\s a -> s { _gtarAttributes = a })
    . _Map

instance AWSRequest GetTopicAttributes where
    type Sv GetTopicAttributes = SNS
    type Rs GetTopicAttributes = GetTopicAttributesResponse

    request  = post "GetTopicAttributes"
    response = xmlResponse $ \h x -> GetTopicAttributesResponse
        <$> x %| "Attributes"
