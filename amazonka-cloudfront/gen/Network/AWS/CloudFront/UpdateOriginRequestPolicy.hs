{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFront.UpdateOriginRequestPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an origin request policy configuration.
--
--
-- When you update an origin request policy configuration, all the fields are updated with the values provided in the request. You cannot update some fields independent of others. To update an origin request policy configuration:
--
--     * Use @GetOriginRequestPolicyConfig@ to get the current configuration.
--
--     * Locally modify the fields in the origin request policy configuration that you want to update.
--
--     * Call @UpdateOriginRequestPolicy@ by providing the entire origin request policy configuration, including the fields that you modified and those that you didn’t.
module Network.AWS.CloudFront.UpdateOriginRequestPolicy
  ( -- * Creating a Request
    updateOriginRequestPolicy,
    UpdateOriginRequestPolicy,

    -- * Request Lenses
    uorpIfMatch,
    uorpOriginRequestPolicyConfig,
    uorpId,

    -- * Destructuring the Response
    updateOriginRequestPolicyResponse,
    UpdateOriginRequestPolicyResponse,

    -- * Response Lenses
    uorprrsETag,
    uorprrsOriginRequestPolicy,
    uorprrsResponseStatus,
  )
where

import Network.AWS.CloudFront.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateOriginRequestPolicy' smart constructor.
data UpdateOriginRequestPolicy = UpdateOriginRequestPolicy'
  { _uorpIfMatch ::
      !(Maybe Text),
    _uorpOriginRequestPolicyConfig ::
      !OriginRequestPolicyConfig,
    _uorpId :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateOriginRequestPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uorpIfMatch' - The version of the origin request policy that you are updating. The version is returned in the origin request policy’s @ETag@ field in the response to @GetOriginRequestPolicyConfig@ .
--
-- * 'uorpOriginRequestPolicyConfig' - An origin request policy configuration.
--
-- * 'uorpId' - The unique identifier for the origin request policy that you are updating. The identifier is returned in a cache behavior’s @OriginRequestPolicyId@ field in the response to @GetDistributionConfig@ .
updateOriginRequestPolicy ::
  -- | 'uorpOriginRequestPolicyConfig'
  OriginRequestPolicyConfig ->
  -- | 'uorpId'
  Text ->
  UpdateOriginRequestPolicy
updateOriginRequestPolicy
  pOriginRequestPolicyConfig_
  pId_ =
    UpdateOriginRequestPolicy'
      { _uorpIfMatch = Nothing,
        _uorpOriginRequestPolicyConfig =
          pOriginRequestPolicyConfig_,
        _uorpId = pId_
      }

-- | The version of the origin request policy that you are updating. The version is returned in the origin request policy’s @ETag@ field in the response to @GetOriginRequestPolicyConfig@ .
uorpIfMatch :: Lens' UpdateOriginRequestPolicy (Maybe Text)
uorpIfMatch = lens _uorpIfMatch (\s a -> s {_uorpIfMatch = a})

-- | An origin request policy configuration.
uorpOriginRequestPolicyConfig :: Lens' UpdateOriginRequestPolicy OriginRequestPolicyConfig
uorpOriginRequestPolicyConfig = lens _uorpOriginRequestPolicyConfig (\s a -> s {_uorpOriginRequestPolicyConfig = a})

-- | The unique identifier for the origin request policy that you are updating. The identifier is returned in a cache behavior’s @OriginRequestPolicyId@ field in the response to @GetDistributionConfig@ .
uorpId :: Lens' UpdateOriginRequestPolicy Text
uorpId = lens _uorpId (\s a -> s {_uorpId = a})

instance AWSRequest UpdateOriginRequestPolicy where
  type
    Rs UpdateOriginRequestPolicy =
      UpdateOriginRequestPolicyResponse
  request = putXML cloudFront
  response =
    receiveXML
      ( \s h x ->
          UpdateOriginRequestPolicyResponse'
            <$> (h .#? "ETag")
            <*> (parseXML x)
            <*> (pure (fromEnum s))
      )

instance Hashable UpdateOriginRequestPolicy

instance NFData UpdateOriginRequestPolicy

instance ToElement UpdateOriginRequestPolicy where
  toElement =
    mkElement
      "{http://cloudfront.amazonaws.com/doc/2020-05-31/}OriginRequestPolicyConfig"
      . _uorpOriginRequestPolicyConfig

instance ToHeaders UpdateOriginRequestPolicy where
  toHeaders UpdateOriginRequestPolicy' {..} =
    mconcat ["If-Match" =# _uorpIfMatch]

instance ToPath UpdateOriginRequestPolicy where
  toPath UpdateOriginRequestPolicy' {..} =
    mconcat
      ["/2020-05-31/origin-request-policy/", toBS _uorpId]

instance ToQuery UpdateOriginRequestPolicy where
  toQuery = const mempty

-- | /See:/ 'updateOriginRequestPolicyResponse' smart constructor.
data UpdateOriginRequestPolicyResponse = UpdateOriginRequestPolicyResponse'
  { _uorprrsETag ::
      !( Maybe
           Text
       ),
    _uorprrsOriginRequestPolicy ::
      !( Maybe
           OriginRequestPolicy
       ),
    _uorprrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateOriginRequestPolicyResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uorprrsETag' - The current version of the origin request policy.
--
-- * 'uorprrsOriginRequestPolicy' - An origin request policy.
--
-- * 'uorprrsResponseStatus' - -- | The response status code.
updateOriginRequestPolicyResponse ::
  -- | 'uorprrsResponseStatus'
  Int ->
  UpdateOriginRequestPolicyResponse
updateOriginRequestPolicyResponse pResponseStatus_ =
  UpdateOriginRequestPolicyResponse'
    { _uorprrsETag =
        Nothing,
      _uorprrsOriginRequestPolicy = Nothing,
      _uorprrsResponseStatus =
        pResponseStatus_
    }

-- | The current version of the origin request policy.
uorprrsETag :: Lens' UpdateOriginRequestPolicyResponse (Maybe Text)
uorprrsETag = lens _uorprrsETag (\s a -> s {_uorprrsETag = a})

-- | An origin request policy.
uorprrsOriginRequestPolicy :: Lens' UpdateOriginRequestPolicyResponse (Maybe OriginRequestPolicy)
uorprrsOriginRequestPolicy = lens _uorprrsOriginRequestPolicy (\s a -> s {_uorprrsOriginRequestPolicy = a})

-- | -- | The response status code.
uorprrsResponseStatus :: Lens' UpdateOriginRequestPolicyResponse Int
uorprrsResponseStatus = lens _uorprrsResponseStatus (\s a -> s {_uorprrsResponseStatus = a})

instance NFData UpdateOriginRequestPolicyResponse
