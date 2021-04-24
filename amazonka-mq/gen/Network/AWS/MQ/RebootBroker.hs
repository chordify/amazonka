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
-- Module      : Network.AWS.MQ.RebootBroker
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reboots a broker. Note: This API is asynchronous.
module Network.AWS.MQ.RebootBroker
  ( -- * Creating a Request
    rebootBroker,
    RebootBroker,

    -- * Request Lenses
    rbBrokerId,

    -- * Destructuring the Response
    rebootBrokerResponse,
    RebootBrokerResponse,

    -- * Response Lenses
    rbrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MQ.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'rebootBroker' smart constructor.
newtype RebootBroker = RebootBroker'
  { _rbBrokerId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'RebootBroker' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rbBrokerId' - The unique ID that Amazon MQ generates for the broker.
rebootBroker ::
  -- | 'rbBrokerId'
  Text ->
  RebootBroker
rebootBroker pBrokerId_ =
  RebootBroker' {_rbBrokerId = pBrokerId_}

-- | The unique ID that Amazon MQ generates for the broker.
rbBrokerId :: Lens' RebootBroker Text
rbBrokerId = lens _rbBrokerId (\s a -> s {_rbBrokerId = a})

instance AWSRequest RebootBroker where
  type Rs RebootBroker = RebootBrokerResponse
  request = postJSON mq
  response =
    receiveEmpty
      ( \s h x ->
          RebootBrokerResponse' <$> (pure (fromEnum s))
      )

instance Hashable RebootBroker

instance NFData RebootBroker

instance ToHeaders RebootBroker where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON RebootBroker where
  toJSON = const (Object mempty)

instance ToPath RebootBroker where
  toPath RebootBroker' {..} =
    mconcat
      ["/v1/brokers/", toBS _rbBrokerId, "/reboot"]

instance ToQuery RebootBroker where
  toQuery = const mempty

-- | /See:/ 'rebootBrokerResponse' smart constructor.
newtype RebootBrokerResponse = RebootBrokerResponse'
  { _rbrrsResponseStatus ::
      Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'RebootBrokerResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rbrrsResponseStatus' - -- | The response status code.
rebootBrokerResponse ::
  -- | 'rbrrsResponseStatus'
  Int ->
  RebootBrokerResponse
rebootBrokerResponse pResponseStatus_ =
  RebootBrokerResponse'
    { _rbrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
rbrrsResponseStatus :: Lens' RebootBrokerResponse Int
rbrrsResponseStatus = lens _rbrrsResponseStatus (\s a -> s {_rbrrsResponseStatus = a})

instance NFData RebootBrokerResponse
