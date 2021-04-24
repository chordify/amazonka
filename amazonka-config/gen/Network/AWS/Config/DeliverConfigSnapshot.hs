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
-- Module      : Network.AWS.Config.DeliverConfigSnapshot
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Schedules delivery of a configuration snapshot to the Amazon S3 bucket in the specified delivery channel. After the delivery has started, AWS Config sends the following notifications using an Amazon SNS topic that you have specified.
--
--
--     * Notification of the start of the delivery.
--
--     * Notification of the completion of the delivery, if the delivery was successfully completed.
--
--     * Notification of delivery failure, if the delivery failed.
module Network.AWS.Config.DeliverConfigSnapshot
  ( -- * Creating a Request
    deliverConfigSnapshot,
    DeliverConfigSnapshot,

    -- * Request Lenses
    dcsDeliveryChannelName,

    -- * Destructuring the Response
    deliverConfigSnapshotResponse,
    DeliverConfigSnapshotResponse,

    -- * Response Lenses
    dcsrrsConfigSnapshotId,
    dcsrrsResponseStatus,
  )
where

import Network.AWS.Config.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The input for the 'DeliverConfigSnapshot' action.
--
--
--
-- /See:/ 'deliverConfigSnapshot' smart constructor.
newtype DeliverConfigSnapshot = DeliverConfigSnapshot'
  { _dcsDeliveryChannelName ::
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

-- | Creates a value of 'DeliverConfigSnapshot' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcsDeliveryChannelName' - The name of the delivery channel through which the snapshot is delivered.
deliverConfigSnapshot ::
  -- | 'dcsDeliveryChannelName'
  Text ->
  DeliverConfigSnapshot
deliverConfigSnapshot pDeliveryChannelName_ =
  DeliverConfigSnapshot'
    { _dcsDeliveryChannelName =
        pDeliveryChannelName_
    }

-- | The name of the delivery channel through which the snapshot is delivered.
dcsDeliveryChannelName :: Lens' DeliverConfigSnapshot Text
dcsDeliveryChannelName = lens _dcsDeliveryChannelName (\s a -> s {_dcsDeliveryChannelName = a})

instance AWSRequest DeliverConfigSnapshot where
  type
    Rs DeliverConfigSnapshot =
      DeliverConfigSnapshotResponse
  request = postJSON config
  response =
    receiveJSON
      ( \s h x ->
          DeliverConfigSnapshotResponse'
            <$> (x .?> "configSnapshotId") <*> (pure (fromEnum s))
      )

instance Hashable DeliverConfigSnapshot

instance NFData DeliverConfigSnapshot

instance ToHeaders DeliverConfigSnapshot where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StarlingDoveService.DeliverConfigSnapshot" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeliverConfigSnapshot where
  toJSON DeliverConfigSnapshot' {..} =
    object
      ( catMaybes
          [ Just
              ("deliveryChannelName" .= _dcsDeliveryChannelName)
          ]
      )

instance ToPath DeliverConfigSnapshot where
  toPath = const "/"

instance ToQuery DeliverConfigSnapshot where
  toQuery = const mempty

-- | The output for the 'DeliverConfigSnapshot' action, in JSON format.
--
--
--
-- /See:/ 'deliverConfigSnapshotResponse' smart constructor.
data DeliverConfigSnapshotResponse = DeliverConfigSnapshotResponse'
  { _dcsrrsConfigSnapshotId ::
      !( Maybe
           Text
       ),
    _dcsrrsResponseStatus ::
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

-- | Creates a value of 'DeliverConfigSnapshotResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcsrrsConfigSnapshotId' - The ID of the snapshot that is being created.
--
-- * 'dcsrrsResponseStatus' - -- | The response status code.
deliverConfigSnapshotResponse ::
  -- | 'dcsrrsResponseStatus'
  Int ->
  DeliverConfigSnapshotResponse
deliverConfigSnapshotResponse pResponseStatus_ =
  DeliverConfigSnapshotResponse'
    { _dcsrrsConfigSnapshotId =
        Nothing,
      _dcsrrsResponseStatus = pResponseStatus_
    }

-- | The ID of the snapshot that is being created.
dcsrrsConfigSnapshotId :: Lens' DeliverConfigSnapshotResponse (Maybe Text)
dcsrrsConfigSnapshotId = lens _dcsrrsConfigSnapshotId (\s a -> s {_dcsrrsConfigSnapshotId = a})

-- | -- | The response status code.
dcsrrsResponseStatus :: Lens' DeliverConfigSnapshotResponse Int
dcsrrsResponseStatus = lens _dcsrrsResponseStatus (\s a -> s {_dcsrrsResponseStatus = a})

instance NFData DeliverConfigSnapshotResponse
