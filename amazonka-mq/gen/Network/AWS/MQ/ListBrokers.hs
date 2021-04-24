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
-- Module      : Network.AWS.MQ.ListBrokers
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of all brokers.
--
-- This operation returns paginated results.
module Network.AWS.MQ.ListBrokers
  ( -- * Creating a Request
    listBrokers,
    ListBrokers,

    -- * Request Lenses
    lbNextToken,
    lbMaxResults,

    -- * Destructuring the Response
    listBrokersResponse,
    ListBrokersResponse,

    -- * Response Lenses
    lbrrsNextToken,
    lbrrsBrokerSummaries,
    lbrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MQ.Types
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listBrokers' smart constructor.
data ListBrokers = ListBrokers'
  { _lbNextToken ::
      !(Maybe Text),
    _lbMaxResults :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListBrokers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbNextToken' - The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.
--
-- * 'lbMaxResults' - The maximum number of brokers that Amazon MQ can return per page (20 by default). This value must be an integer from 5 to 100.
listBrokers ::
  ListBrokers
listBrokers =
  ListBrokers'
    { _lbNextToken = Nothing,
      _lbMaxResults = Nothing
    }

-- | The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.
lbNextToken :: Lens' ListBrokers (Maybe Text)
lbNextToken = lens _lbNextToken (\s a -> s {_lbNextToken = a})

-- | The maximum number of brokers that Amazon MQ can return per page (20 by default). This value must be an integer from 5 to 100.
lbMaxResults :: Lens' ListBrokers (Maybe Natural)
lbMaxResults = lens _lbMaxResults (\s a -> s {_lbMaxResults = a}) . mapping _Nat

instance AWSPager ListBrokers where
  page rq rs
    | stop (rs ^. lbrrsNextToken) = Nothing
    | stop (rs ^. lbrrsBrokerSummaries) = Nothing
    | otherwise =
      Just $ rq & lbNextToken .~ rs ^. lbrrsNextToken

instance AWSRequest ListBrokers where
  type Rs ListBrokers = ListBrokersResponse
  request = get mq
  response =
    receiveJSON
      ( \s h x ->
          ListBrokersResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "brokerSummaries" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListBrokers

instance NFData ListBrokers

instance ToHeaders ListBrokers where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath ListBrokers where
  toPath = const "/v1/brokers"

instance ToQuery ListBrokers where
  toQuery ListBrokers' {..} =
    mconcat
      [ "nextToken" =: _lbNextToken,
        "maxResults" =: _lbMaxResults
      ]

-- | /See:/ 'listBrokersResponse' smart constructor.
data ListBrokersResponse = ListBrokersResponse'
  { _lbrrsNextToken ::
      !(Maybe Text),
    _lbrrsBrokerSummaries ::
      !(Maybe [BrokerSummary]),
    _lbrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListBrokersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbrrsNextToken' - The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.
--
-- * 'lbrrsBrokerSummaries' - A list of information about all brokers.
--
-- * 'lbrrsResponseStatus' - -- | The response status code.
listBrokersResponse ::
  -- | 'lbrrsResponseStatus'
  Int ->
  ListBrokersResponse
listBrokersResponse pResponseStatus_ =
  ListBrokersResponse'
    { _lbrrsNextToken = Nothing,
      _lbrrsBrokerSummaries = Nothing,
      _lbrrsResponseStatus = pResponseStatus_
    }

-- | The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.
lbrrsNextToken :: Lens' ListBrokersResponse (Maybe Text)
lbrrsNextToken = lens _lbrrsNextToken (\s a -> s {_lbrrsNextToken = a})

-- | A list of information about all brokers.
lbrrsBrokerSummaries :: Lens' ListBrokersResponse [BrokerSummary]
lbrrsBrokerSummaries = lens _lbrrsBrokerSummaries (\s a -> s {_lbrrsBrokerSummaries = a}) . _Default . _Coerce

-- | -- | The response status code.
lbrrsResponseStatus :: Lens' ListBrokersResponse Int
lbrrsResponseStatus = lens _lbrrsResponseStatus (\s a -> s {_lbrrsResponseStatus = a})

instance NFData ListBrokersResponse
