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
-- Module      : Network.AWS.CloudFront.UpdateCloudFrontOriginAccessIdentity
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update an origin access identity.
module Network.AWS.CloudFront.UpdateCloudFrontOriginAccessIdentity
  ( -- * Creating a Request
    updateCloudFrontOriginAccessIdentity,
    UpdateCloudFrontOriginAccessIdentity,

    -- * Request Lenses
    ucfoaiIfMatch,
    ucfoaiCloudFrontOriginAccessIdentityConfig,
    ucfoaiId,

    -- * Destructuring the Response
    updateCloudFrontOriginAccessIdentityResponse,
    UpdateCloudFrontOriginAccessIdentityResponse,

    -- * Response Lenses
    ucfoairrsETag,
    ucfoairrsCloudFrontOriginAccessIdentity,
    ucfoairrsResponseStatus,
  )
where

import Network.AWS.CloudFront.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The request to update an origin access identity.
--
--
--
-- /See:/ 'updateCloudFrontOriginAccessIdentity' smart constructor.
data UpdateCloudFrontOriginAccessIdentity = UpdateCloudFrontOriginAccessIdentity'
  { _ucfoaiIfMatch ::
      !( Maybe
           Text
       ),
    _ucfoaiCloudFrontOriginAccessIdentityConfig ::
      !CloudFrontOriginAccessIdentityConfig,
    _ucfoaiId ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateCloudFrontOriginAccessIdentity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucfoaiIfMatch' - The value of the @ETag@ header that you received when retrieving the identity's configuration. For example: @E2QWRUHAPOMQZL@ .
--
-- * 'ucfoaiCloudFrontOriginAccessIdentityConfig' - The identity's configuration information.
--
-- * 'ucfoaiId' - The identity's id.
updateCloudFrontOriginAccessIdentity ::
  -- | 'ucfoaiCloudFrontOriginAccessIdentityConfig'
  CloudFrontOriginAccessIdentityConfig ->
  -- | 'ucfoaiId'
  Text ->
  UpdateCloudFrontOriginAccessIdentity
updateCloudFrontOriginAccessIdentity
  pCloudFrontOriginAccessIdentityConfig_
  pId_ =
    UpdateCloudFrontOriginAccessIdentity'
      { _ucfoaiIfMatch =
          Nothing,
        _ucfoaiCloudFrontOriginAccessIdentityConfig =
          pCloudFrontOriginAccessIdentityConfig_,
        _ucfoaiId = pId_
      }

-- | The value of the @ETag@ header that you received when retrieving the identity's configuration. For example: @E2QWRUHAPOMQZL@ .
ucfoaiIfMatch :: Lens' UpdateCloudFrontOriginAccessIdentity (Maybe Text)
ucfoaiIfMatch = lens _ucfoaiIfMatch (\s a -> s {_ucfoaiIfMatch = a})

-- | The identity's configuration information.
ucfoaiCloudFrontOriginAccessIdentityConfig :: Lens' UpdateCloudFrontOriginAccessIdentity CloudFrontOriginAccessIdentityConfig
ucfoaiCloudFrontOriginAccessIdentityConfig = lens _ucfoaiCloudFrontOriginAccessIdentityConfig (\s a -> s {_ucfoaiCloudFrontOriginAccessIdentityConfig = a})

-- | The identity's id.
ucfoaiId :: Lens' UpdateCloudFrontOriginAccessIdentity Text
ucfoaiId = lens _ucfoaiId (\s a -> s {_ucfoaiId = a})

instance
  AWSRequest
    UpdateCloudFrontOriginAccessIdentity
  where
  type
    Rs UpdateCloudFrontOriginAccessIdentity =
      UpdateCloudFrontOriginAccessIdentityResponse
  request = putXML cloudFront
  response =
    receiveXML
      ( \s h x ->
          UpdateCloudFrontOriginAccessIdentityResponse'
            <$> (h .#? "ETag")
            <*> (parseXML x)
            <*> (pure (fromEnum s))
      )

instance
  Hashable
    UpdateCloudFrontOriginAccessIdentity

instance NFData UpdateCloudFrontOriginAccessIdentity

instance
  ToElement
    UpdateCloudFrontOriginAccessIdentity
  where
  toElement =
    mkElement
      "{http://cloudfront.amazonaws.com/doc/2020-05-31/}CloudFrontOriginAccessIdentityConfig"
      . _ucfoaiCloudFrontOriginAccessIdentityConfig

instance
  ToHeaders
    UpdateCloudFrontOriginAccessIdentity
  where
  toHeaders UpdateCloudFrontOriginAccessIdentity' {..} =
    mconcat ["If-Match" =# _ucfoaiIfMatch]

instance ToPath UpdateCloudFrontOriginAccessIdentity where
  toPath UpdateCloudFrontOriginAccessIdentity' {..} =
    mconcat
      [ "/2020-05-31/origin-access-identity/cloudfront/",
        toBS _ucfoaiId,
        "/config"
      ]

instance ToQuery UpdateCloudFrontOriginAccessIdentity where
  toQuery = const mempty

-- | The returned result of the corresponding request.
--
--
--
-- /See:/ 'updateCloudFrontOriginAccessIdentityResponse' smart constructor.
data UpdateCloudFrontOriginAccessIdentityResponse = UpdateCloudFrontOriginAccessIdentityResponse'
  { _ucfoairrsETag ::
      !( Maybe
           Text
       ),
    _ucfoairrsCloudFrontOriginAccessIdentity ::
      !( Maybe
           CloudFrontOriginAccessIdentity
       ),
    _ucfoairrsResponseStatus ::
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

-- | Creates a value of 'UpdateCloudFrontOriginAccessIdentityResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucfoairrsETag' - The current version of the configuration. For example: @E2QWRUHAPOMQZL@ .
--
-- * 'ucfoairrsCloudFrontOriginAccessIdentity' - The origin access identity's information.
--
-- * 'ucfoairrsResponseStatus' - -- | The response status code.
updateCloudFrontOriginAccessIdentityResponse ::
  -- | 'ucfoairrsResponseStatus'
  Int ->
  UpdateCloudFrontOriginAccessIdentityResponse
updateCloudFrontOriginAccessIdentityResponse
  pResponseStatus_ =
    UpdateCloudFrontOriginAccessIdentityResponse'
      { _ucfoairrsETag =
          Nothing,
        _ucfoairrsCloudFrontOriginAccessIdentity =
          Nothing,
        _ucfoairrsResponseStatus =
          pResponseStatus_
      }

-- | The current version of the configuration. For example: @E2QWRUHAPOMQZL@ .
ucfoairrsETag :: Lens' UpdateCloudFrontOriginAccessIdentityResponse (Maybe Text)
ucfoairrsETag = lens _ucfoairrsETag (\s a -> s {_ucfoairrsETag = a})

-- | The origin access identity's information.
ucfoairrsCloudFrontOriginAccessIdentity :: Lens' UpdateCloudFrontOriginAccessIdentityResponse (Maybe CloudFrontOriginAccessIdentity)
ucfoairrsCloudFrontOriginAccessIdentity = lens _ucfoairrsCloudFrontOriginAccessIdentity (\s a -> s {_ucfoairrsCloudFrontOriginAccessIdentity = a})

-- | -- | The response status code.
ucfoairrsResponseStatus :: Lens' UpdateCloudFrontOriginAccessIdentityResponse Int
ucfoairrsResponseStatus = lens _ucfoairrsResponseStatus (\s a -> s {_ucfoairrsResponseStatus = a})

instance
  NFData
    UpdateCloudFrontOriginAccessIdentityResponse
