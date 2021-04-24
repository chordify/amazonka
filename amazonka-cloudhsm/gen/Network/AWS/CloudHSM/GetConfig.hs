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
-- Module      : Network.AWS.CloudHSM.GetConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This is documentation for __AWS CloudHSM Classic__ . For more information, see <http://aws.amazon.com/cloudhsm/faqs-classic/ AWS CloudHSM Classic FAQs> , the <http://docs.aws.amazon.com/cloudhsm/classic/userguide/ AWS CloudHSM Classic User Guide> , and the <http://docs.aws.amazon.com/cloudhsm/classic/APIReference/ AWS CloudHSM Classic API Reference> .
--
--
-- __For information about the current version of AWS CloudHSM__ , see <http://aws.amazon.com/cloudhsm/ AWS CloudHSM> , the <http://docs.aws.amazon.com/cloudhsm/latest/userguide/ AWS CloudHSM User Guide> , and the <http://docs.aws.amazon.com/cloudhsm/latest/APIReference/ AWS CloudHSM API Reference> .
--
-- Gets the configuration files necessary to connect to all high availability partition groups the client is associated with.
module Network.AWS.CloudHSM.GetConfig
  ( -- * Creating a Request
    getConfig,
    GetConfig,

    -- * Request Lenses
    gcClientARN,
    gcClientVersion,
    gcHAPGList,

    -- * Destructuring the Response
    getConfigResponse,
    GetConfigResponse,

    -- * Response Lenses
    gcrrsConfigFile,
    gcrrsConfigCred,
    gcrrsConfigType,
    gcrrsResponseStatus,
  )
where

import Network.AWS.CloudHSM.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getConfig' smart constructor.
data GetConfig = GetConfig'
  { _gcClientARN :: !Text,
    _gcClientVersion :: !ClientVersion,
    _gcHAPGList :: ![Text]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcClientARN' - The ARN of the client.
--
-- * 'gcClientVersion' - The client version.
--
-- * 'gcHAPGList' - A list of ARNs that identify the high-availability partition groups that are associated with the client.
getConfig ::
  -- | 'gcClientARN'
  Text ->
  -- | 'gcClientVersion'
  ClientVersion ->
  GetConfig
getConfig pClientARN_ pClientVersion_ =
  GetConfig'
    { _gcClientARN = pClientARN_,
      _gcClientVersion = pClientVersion_,
      _gcHAPGList = mempty
    }

-- | The ARN of the client.
gcClientARN :: Lens' GetConfig Text
gcClientARN = lens _gcClientARN (\s a -> s {_gcClientARN = a})

-- | The client version.
gcClientVersion :: Lens' GetConfig ClientVersion
gcClientVersion = lens _gcClientVersion (\s a -> s {_gcClientVersion = a})

-- | A list of ARNs that identify the high-availability partition groups that are associated with the client.
gcHAPGList :: Lens' GetConfig [Text]
gcHAPGList = lens _gcHAPGList (\s a -> s {_gcHAPGList = a}) . _Coerce

instance AWSRequest GetConfig where
  type Rs GetConfig = GetConfigResponse
  request = postJSON cloudHSM
  response =
    receiveJSON
      ( \s h x ->
          GetConfigResponse'
            <$> (x .?> "ConfigFile")
            <*> (x .?> "ConfigCred")
            <*> (x .?> "ConfigType")
            <*> (pure (fromEnum s))
      )

instance Hashable GetConfig

instance NFData GetConfig

instance ToHeaders GetConfig where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("CloudHsmFrontendService.GetConfig" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetConfig where
  toJSON GetConfig' {..} =
    object
      ( catMaybes
          [ Just ("ClientArn" .= _gcClientARN),
            Just ("ClientVersion" .= _gcClientVersion),
            Just ("HapgList" .= _gcHAPGList)
          ]
      )

instance ToPath GetConfig where
  toPath = const "/"

instance ToQuery GetConfig where
  toQuery = const mempty

-- | /See:/ 'getConfigResponse' smart constructor.
data GetConfigResponse = GetConfigResponse'
  { _gcrrsConfigFile ::
      !(Maybe Text),
    _gcrrsConfigCred :: !(Maybe Text),
    _gcrrsConfigType :: !(Maybe Text),
    _gcrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetConfigResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcrrsConfigFile' - The chrystoki.conf configuration file.
--
-- * 'gcrrsConfigCred' - The certificate file containing the server.pem files of the HSMs.
--
-- * 'gcrrsConfigType' - The type of credentials.
--
-- * 'gcrrsResponseStatus' - -- | The response status code.
getConfigResponse ::
  -- | 'gcrrsResponseStatus'
  Int ->
  GetConfigResponse
getConfigResponse pResponseStatus_ =
  GetConfigResponse'
    { _gcrrsConfigFile = Nothing,
      _gcrrsConfigCred = Nothing,
      _gcrrsConfigType = Nothing,
      _gcrrsResponseStatus = pResponseStatus_
    }

-- | The chrystoki.conf configuration file.
gcrrsConfigFile :: Lens' GetConfigResponse (Maybe Text)
gcrrsConfigFile = lens _gcrrsConfigFile (\s a -> s {_gcrrsConfigFile = a})

-- | The certificate file containing the server.pem files of the HSMs.
gcrrsConfigCred :: Lens' GetConfigResponse (Maybe Text)
gcrrsConfigCred = lens _gcrrsConfigCred (\s a -> s {_gcrrsConfigCred = a})

-- | The type of credentials.
gcrrsConfigType :: Lens' GetConfigResponse (Maybe Text)
gcrrsConfigType = lens _gcrrsConfigType (\s a -> s {_gcrrsConfigType = a})

-- | -- | The response status code.
gcrrsResponseStatus :: Lens' GetConfigResponse Int
gcrrsResponseStatus = lens _gcrrsResponseStatus (\s a -> s {_gcrrsResponseStatus = a})

instance NFData GetConfigResponse
