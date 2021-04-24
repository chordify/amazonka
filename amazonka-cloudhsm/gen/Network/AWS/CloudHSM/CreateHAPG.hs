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
-- Module      : Network.AWS.CloudHSM.CreateHAPG
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
-- Creates a high-availability partition group. A high-availability partition group is a group of partitions that spans multiple physical HSMs.
module Network.AWS.CloudHSM.CreateHAPG
  ( -- * Creating a Request
    createHAPG,
    CreateHAPG,

    -- * Request Lenses
    chLabel,

    -- * Destructuring the Response
    createHAPGResponse,
    CreateHAPGResponse,

    -- * Response Lenses
    chrrsHAPGARN,
    chrrsResponseStatus,
  )
where

import Network.AWS.CloudHSM.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Contains the inputs for the 'CreateHapgRequest' action.
--
--
--
-- /See:/ 'createHAPG' smart constructor.
newtype CreateHAPG = CreateHAPG' {_chLabel :: Text}
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateHAPG' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'chLabel' - The label of the new high-availability partition group.
createHAPG ::
  -- | 'chLabel'
  Text ->
  CreateHAPG
createHAPG pLabel_ = CreateHAPG' {_chLabel = pLabel_}

-- | The label of the new high-availability partition group.
chLabel :: Lens' CreateHAPG Text
chLabel = lens _chLabel (\s a -> s {_chLabel = a})

instance AWSRequest CreateHAPG where
  type Rs CreateHAPG = CreateHAPGResponse
  request = postJSON cloudHSM
  response =
    receiveJSON
      ( \s h x ->
          CreateHAPGResponse'
            <$> (x .?> "HapgArn") <*> (pure (fromEnum s))
      )

instance Hashable CreateHAPG

instance NFData CreateHAPG

instance ToHeaders CreateHAPG where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("CloudHsmFrontendService.CreateHapg" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateHAPG where
  toJSON CreateHAPG' {..} =
    object (catMaybes [Just ("Label" .= _chLabel)])

instance ToPath CreateHAPG where
  toPath = const "/"

instance ToQuery CreateHAPG where
  toQuery = const mempty

-- | Contains the output of the 'CreateHAPartitionGroup' action.
--
--
--
-- /See:/ 'createHAPGResponse' smart constructor.
data CreateHAPGResponse = CreateHAPGResponse'
  { _chrrsHAPGARN ::
      !(Maybe Text),
    _chrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateHAPGResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'chrrsHAPGARN' - The ARN of the high-availability partition group.
--
-- * 'chrrsResponseStatus' - -- | The response status code.
createHAPGResponse ::
  -- | 'chrrsResponseStatus'
  Int ->
  CreateHAPGResponse
createHAPGResponse pResponseStatus_ =
  CreateHAPGResponse'
    { _chrrsHAPGARN = Nothing,
      _chrrsResponseStatus = pResponseStatus_
    }

-- | The ARN of the high-availability partition group.
chrrsHAPGARN :: Lens' CreateHAPGResponse (Maybe Text)
chrrsHAPGARN = lens _chrrsHAPGARN (\s a -> s {_chrrsHAPGARN = a})

-- | -- | The response status code.
chrrsResponseStatus :: Lens' CreateHAPGResponse Int
chrrsResponseStatus = lens _chrrsResponseStatus (\s a -> s {_chrrsResponseStatus = a})

instance NFData CreateHAPGResponse
