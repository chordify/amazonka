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
-- Module      : Network.AWS.CloudFront.GetFieldLevelEncryptionProfileConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get the field-level encryption profile configuration information.
module Network.AWS.CloudFront.GetFieldLevelEncryptionProfileConfig
  ( -- * Creating a Request
    getFieldLevelEncryptionProfileConfig,
    GetFieldLevelEncryptionProfileConfig,

    -- * Request Lenses
    gflepcId,

    -- * Destructuring the Response
    getFieldLevelEncryptionProfileConfigResponse,
    GetFieldLevelEncryptionProfileConfigResponse,

    -- * Response Lenses
    gflepcrrsETag,
    gflepcrrsFieldLevelEncryptionProfileConfig,
    gflepcrrsResponseStatus,
  )
where

import Network.AWS.CloudFront.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getFieldLevelEncryptionProfileConfig' smart constructor.
newtype GetFieldLevelEncryptionProfileConfig = GetFieldLevelEncryptionProfileConfig'
  { _gflepcId ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetFieldLevelEncryptionProfileConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gflepcId' - Get the ID for the field-level encryption profile configuration information.
getFieldLevelEncryptionProfileConfig ::
  -- | 'gflepcId'
  Text ->
  GetFieldLevelEncryptionProfileConfig
getFieldLevelEncryptionProfileConfig pId_ =
  GetFieldLevelEncryptionProfileConfig'
    { _gflepcId =
        pId_
    }

-- | Get the ID for the field-level encryption profile configuration information.
gflepcId :: Lens' GetFieldLevelEncryptionProfileConfig Text
gflepcId = lens _gflepcId (\s a -> s {_gflepcId = a})

instance
  AWSRequest
    GetFieldLevelEncryptionProfileConfig
  where
  type
    Rs GetFieldLevelEncryptionProfileConfig =
      GetFieldLevelEncryptionProfileConfigResponse
  request = get cloudFront
  response =
    receiveXML
      ( \s h x ->
          GetFieldLevelEncryptionProfileConfigResponse'
            <$> (h .#? "ETag")
            <*> (parseXML x)
            <*> (pure (fromEnum s))
      )

instance
  Hashable
    GetFieldLevelEncryptionProfileConfig

instance NFData GetFieldLevelEncryptionProfileConfig

instance
  ToHeaders
    GetFieldLevelEncryptionProfileConfig
  where
  toHeaders = const mempty

instance ToPath GetFieldLevelEncryptionProfileConfig where
  toPath GetFieldLevelEncryptionProfileConfig' {..} =
    mconcat
      [ "/2020-05-31/field-level-encryption-profile/",
        toBS _gflepcId,
        "/config"
      ]

instance ToQuery GetFieldLevelEncryptionProfileConfig where
  toQuery = const mempty

-- | /See:/ 'getFieldLevelEncryptionProfileConfigResponse' smart constructor.
data GetFieldLevelEncryptionProfileConfigResponse = GetFieldLevelEncryptionProfileConfigResponse'
  { _gflepcrrsETag ::
      !( Maybe
           Text
       ),
    _gflepcrrsFieldLevelEncryptionProfileConfig ::
      !( Maybe
           FieldLevelEncryptionProfileConfig
       ),
    _gflepcrrsResponseStatus ::
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

-- | Creates a value of 'GetFieldLevelEncryptionProfileConfigResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gflepcrrsETag' - The current version of the field-level encryption profile configuration result. For example: @E2QWRUHAPOMQZL@ .
--
-- * 'gflepcrrsFieldLevelEncryptionProfileConfig' - Return the field-level encryption profile configuration information.
--
-- * 'gflepcrrsResponseStatus' - -- | The response status code.
getFieldLevelEncryptionProfileConfigResponse ::
  -- | 'gflepcrrsResponseStatus'
  Int ->
  GetFieldLevelEncryptionProfileConfigResponse
getFieldLevelEncryptionProfileConfigResponse
  pResponseStatus_ =
    GetFieldLevelEncryptionProfileConfigResponse'
      { _gflepcrrsETag =
          Nothing,
        _gflepcrrsFieldLevelEncryptionProfileConfig =
          Nothing,
        _gflepcrrsResponseStatus =
          pResponseStatus_
      }

-- | The current version of the field-level encryption profile configuration result. For example: @E2QWRUHAPOMQZL@ .
gflepcrrsETag :: Lens' GetFieldLevelEncryptionProfileConfigResponse (Maybe Text)
gflepcrrsETag = lens _gflepcrrsETag (\s a -> s {_gflepcrrsETag = a})

-- | Return the field-level encryption profile configuration information.
gflepcrrsFieldLevelEncryptionProfileConfig :: Lens' GetFieldLevelEncryptionProfileConfigResponse (Maybe FieldLevelEncryptionProfileConfig)
gflepcrrsFieldLevelEncryptionProfileConfig = lens _gflepcrrsFieldLevelEncryptionProfileConfig (\s a -> s {_gflepcrrsFieldLevelEncryptionProfileConfig = a})

-- | -- | The response status code.
gflepcrrsResponseStatus :: Lens' GetFieldLevelEncryptionProfileConfigResponse Int
gflepcrrsResponseStatus = lens _gflepcrrsResponseStatus (\s a -> s {_gflepcrrsResponseStatus = a})

instance
  NFData
    GetFieldLevelEncryptionProfileConfigResponse
