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
-- Module      : Network.AWS.Config.PutRemediationConfigurations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds or updates the remediation configuration with a specific AWS Config rule with the selected target or action. The API creates the @RemediationConfiguration@ object for the AWS Config rule. The AWS Config rule must already exist for you to add a remediation configuration. The target (SSM document) must exist and have permissions to use the target.
module Network.AWS.Config.PutRemediationConfigurations
  ( -- * Creating a Request
    putRemediationConfigurations,
    PutRemediationConfigurations,

    -- * Request Lenses
    prcRemediationConfigurations,

    -- * Destructuring the Response
    putRemediationConfigurationsResponse,
    PutRemediationConfigurationsResponse,

    -- * Response Lenses
    prcrrsFailedBatches,
    prcrrsResponseStatus,
  )
where

import Network.AWS.Config.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'putRemediationConfigurations' smart constructor.
newtype PutRemediationConfigurations = PutRemediationConfigurations'
  { _prcRemediationConfigurations ::
      [RemediationConfiguration]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'PutRemediationConfigurations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prcRemediationConfigurations' - A list of remediation configuration objects.
putRemediationConfigurations ::
  PutRemediationConfigurations
putRemediationConfigurations =
  PutRemediationConfigurations'
    { _prcRemediationConfigurations =
        mempty
    }

-- | A list of remediation configuration objects.
prcRemediationConfigurations :: Lens' PutRemediationConfigurations [RemediationConfiguration]
prcRemediationConfigurations = lens _prcRemediationConfigurations (\s a -> s {_prcRemediationConfigurations = a}) . _Coerce

instance AWSRequest PutRemediationConfigurations where
  type
    Rs PutRemediationConfigurations =
      PutRemediationConfigurationsResponse
  request = postJSON config
  response =
    receiveJSON
      ( \s h x ->
          PutRemediationConfigurationsResponse'
            <$> (x .?> "FailedBatches" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable PutRemediationConfigurations

instance NFData PutRemediationConfigurations

instance ToHeaders PutRemediationConfigurations where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StarlingDoveService.PutRemediationConfigurations" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON PutRemediationConfigurations where
  toJSON PutRemediationConfigurations' {..} =
    object
      ( catMaybes
          [ Just
              ( "RemediationConfigurations"
                  .= _prcRemediationConfigurations
              )
          ]
      )

instance ToPath PutRemediationConfigurations where
  toPath = const "/"

instance ToQuery PutRemediationConfigurations where
  toQuery = const mempty

-- | /See:/ 'putRemediationConfigurationsResponse' smart constructor.
data PutRemediationConfigurationsResponse = PutRemediationConfigurationsResponse'
  { _prcrrsFailedBatches ::
      !( Maybe
           [FailedRemediationBatch]
       ),
    _prcrrsResponseStatus ::
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

-- | Creates a value of 'PutRemediationConfigurationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prcrrsFailedBatches' - Returns a list of failed remediation batch objects.
--
-- * 'prcrrsResponseStatus' - -- | The response status code.
putRemediationConfigurationsResponse ::
  -- | 'prcrrsResponseStatus'
  Int ->
  PutRemediationConfigurationsResponse
putRemediationConfigurationsResponse pResponseStatus_ =
  PutRemediationConfigurationsResponse'
    { _prcrrsFailedBatches =
        Nothing,
      _prcrrsResponseStatus =
        pResponseStatus_
    }

-- | Returns a list of failed remediation batch objects.
prcrrsFailedBatches :: Lens' PutRemediationConfigurationsResponse [FailedRemediationBatch]
prcrrsFailedBatches = lens _prcrrsFailedBatches (\s a -> s {_prcrrsFailedBatches = a}) . _Default . _Coerce

-- | -- | The response status code.
prcrrsResponseStatus :: Lens' PutRemediationConfigurationsResponse Int
prcrrsResponseStatus = lens _prcrrsResponseStatus (\s a -> s {_prcrrsResponseStatus = a})

instance NFData PutRemediationConfigurationsResponse
