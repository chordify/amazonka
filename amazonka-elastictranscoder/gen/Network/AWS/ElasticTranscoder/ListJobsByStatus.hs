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
-- Module      : Network.AWS.ElasticTranscoder.ListJobsByStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The ListJobsByStatus operation gets a list of jobs that have a specified status. The response body contains one element for each job that satisfies the search criteria.
--
--
--
-- This operation returns paginated results.
module Network.AWS.ElasticTranscoder.ListJobsByStatus
  ( -- * Creating a Request
    listJobsByStatus,
    ListJobsByStatus,

    -- * Request Lenses
    ljbsAscending,
    ljbsPageToken,
    ljbsStatus,

    -- * Destructuring the Response
    listJobsByStatusResponse,
    ListJobsByStatusResponse,

    -- * Response Lenses
    ljbsrrsNextPageToken,
    ljbsrrsJobs,
    ljbsrrsResponseStatus,
  )
where

import Network.AWS.ElasticTranscoder.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The @ListJobsByStatusRequest@ structure.
--
--
--
-- /See:/ 'listJobsByStatus' smart constructor.
data ListJobsByStatus = ListJobsByStatus'
  { _ljbsAscending ::
      !(Maybe Text),
    _ljbsPageToken :: !(Maybe Text),
    _ljbsStatus :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListJobsByStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ljbsAscending' - To list jobs in chronological order by the date and time that they were submitted, enter @true@ . To list jobs in reverse chronological order, enter @false@ .
--
-- * 'ljbsPageToken' - When Elastic Transcoder returns more than one page of results, use @pageToken@ in subsequent @GET@ requests to get each successive page of results.
--
-- * 'ljbsStatus' - To get information about all of the jobs associated with the current AWS account that have a given status, specify the following status: @Submitted@ , @Progressing@ , @Complete@ , @Canceled@ , or @Error@ .
listJobsByStatus ::
  -- | 'ljbsStatus'
  Text ->
  ListJobsByStatus
listJobsByStatus pStatus_ =
  ListJobsByStatus'
    { _ljbsAscending = Nothing,
      _ljbsPageToken = Nothing,
      _ljbsStatus = pStatus_
    }

-- | To list jobs in chronological order by the date and time that they were submitted, enter @true@ . To list jobs in reverse chronological order, enter @false@ .
ljbsAscending :: Lens' ListJobsByStatus (Maybe Text)
ljbsAscending = lens _ljbsAscending (\s a -> s {_ljbsAscending = a})

-- | When Elastic Transcoder returns more than one page of results, use @pageToken@ in subsequent @GET@ requests to get each successive page of results.
ljbsPageToken :: Lens' ListJobsByStatus (Maybe Text)
ljbsPageToken = lens _ljbsPageToken (\s a -> s {_ljbsPageToken = a})

-- | To get information about all of the jobs associated with the current AWS account that have a given status, specify the following status: @Submitted@ , @Progressing@ , @Complete@ , @Canceled@ , or @Error@ .
ljbsStatus :: Lens' ListJobsByStatus Text
ljbsStatus = lens _ljbsStatus (\s a -> s {_ljbsStatus = a})

instance AWSPager ListJobsByStatus where
  page rq rs
    | stop (rs ^. ljbsrrsNextPageToken) = Nothing
    | stop (rs ^. ljbsrrsJobs) = Nothing
    | otherwise =
      Just $
        rq
          & ljbsPageToken .~ rs ^. ljbsrrsNextPageToken

instance AWSRequest ListJobsByStatus where
  type Rs ListJobsByStatus = ListJobsByStatusResponse
  request = get elasticTranscoder
  response =
    receiveJSON
      ( \s h x ->
          ListJobsByStatusResponse'
            <$> (x .?> "NextPageToken")
            <*> (x .?> "Jobs" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListJobsByStatus

instance NFData ListJobsByStatus

instance ToHeaders ListJobsByStatus where
  toHeaders = const mempty

instance ToPath ListJobsByStatus where
  toPath ListJobsByStatus' {..} =
    mconcat
      ["/2012-09-25/jobsByStatus/", toBS _ljbsStatus]

instance ToQuery ListJobsByStatus where
  toQuery ListJobsByStatus' {..} =
    mconcat
      [ "Ascending" =: _ljbsAscending,
        "PageToken" =: _ljbsPageToken
      ]

-- | The @ListJobsByStatusResponse@ structure.
--
--
--
-- /See:/ 'listJobsByStatusResponse' smart constructor.
data ListJobsByStatusResponse = ListJobsByStatusResponse'
  { _ljbsrrsNextPageToken ::
      !(Maybe Text),
    _ljbsrrsJobs ::
      !(Maybe [Job']),
    _ljbsrrsResponseStatus ::
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

-- | Creates a value of 'ListJobsByStatusResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ljbsrrsNextPageToken' - A value that you use to access the second and subsequent pages of results, if any. When the jobs in the specified pipeline fit on one page or when you've reached the last page of results, the value of @NextPageToken@ is @null@ .
--
-- * 'ljbsrrsJobs' - An array of @Job@ objects that have the specified status.
--
-- * 'ljbsrrsResponseStatus' - -- | The response status code.
listJobsByStatusResponse ::
  -- | 'ljbsrrsResponseStatus'
  Int ->
  ListJobsByStatusResponse
listJobsByStatusResponse pResponseStatus_ =
  ListJobsByStatusResponse'
    { _ljbsrrsNextPageToken =
        Nothing,
      _ljbsrrsJobs = Nothing,
      _ljbsrrsResponseStatus = pResponseStatus_
    }

-- | A value that you use to access the second and subsequent pages of results, if any. When the jobs in the specified pipeline fit on one page or when you've reached the last page of results, the value of @NextPageToken@ is @null@ .
ljbsrrsNextPageToken :: Lens' ListJobsByStatusResponse (Maybe Text)
ljbsrrsNextPageToken = lens _ljbsrrsNextPageToken (\s a -> s {_ljbsrrsNextPageToken = a})

-- | An array of @Job@ objects that have the specified status.
ljbsrrsJobs :: Lens' ListJobsByStatusResponse [Job']
ljbsrrsJobs = lens _ljbsrrsJobs (\s a -> s {_ljbsrrsJobs = a}) . _Default . _Coerce

-- | -- | The response status code.
ljbsrrsResponseStatus :: Lens' ListJobsByStatusResponse Int
ljbsrrsResponseStatus = lens _ljbsrrsResponseStatus (\s a -> s {_ljbsrrsResponseStatus = a})

instance NFData ListJobsByStatusResponse
