{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Rekognition.ListStreamProcessors
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a list of stream processors that you have created with
-- CreateStreamProcessor.
--
-- This operation returns paginated results.
module Network.AWS.Rekognition.ListStreamProcessors
  ( -- * Creating a Request
    ListStreamProcessors (..),
    newListStreamProcessors,

    -- * Request Lenses
    listStreamProcessors_nextToken,
    listStreamProcessors_maxResults,

    -- * Destructuring the Response
    ListStreamProcessorsResponse (..),
    newListStreamProcessorsResponse,

    -- * Response Lenses
    listStreamProcessorsResponse_nextToken,
    listStreamProcessorsResponse_streamProcessors,
    listStreamProcessorsResponse_httpStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Rekognition.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListStreamProcessors' smart constructor.
data ListStreamProcessors = ListStreamProcessors'
  { -- | If the previous response was incomplete (because there are more stream
    -- processors to retrieve), Amazon Rekognition Video returns a pagination
    -- token in the response. You can use this pagination token to retrieve the
    -- next set of stream processors.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Maximum number of stream processors you want Amazon Rekognition Video to
    -- return in the response. The default is 1000.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'ListStreamProcessors' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listStreamProcessors_nextToken' - If the previous response was incomplete (because there are more stream
-- processors to retrieve), Amazon Rekognition Video returns a pagination
-- token in the response. You can use this pagination token to retrieve the
-- next set of stream processors.
--
-- 'maxResults', 'listStreamProcessors_maxResults' - Maximum number of stream processors you want Amazon Rekognition Video to
-- return in the response. The default is 1000.
newListStreamProcessors ::
  ListStreamProcessors
newListStreamProcessors =
  ListStreamProcessors'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | If the previous response was incomplete (because there are more stream
-- processors to retrieve), Amazon Rekognition Video returns a pagination
-- token in the response. You can use this pagination token to retrieve the
-- next set of stream processors.
listStreamProcessors_nextToken :: Lens.Lens' ListStreamProcessors (Prelude.Maybe Prelude.Text)
listStreamProcessors_nextToken = Lens.lens (\ListStreamProcessors' {nextToken} -> nextToken) (\s@ListStreamProcessors' {} a -> s {nextToken = a} :: ListStreamProcessors)

-- | Maximum number of stream processors you want Amazon Rekognition Video to
-- return in the response. The default is 1000.
listStreamProcessors_maxResults :: Lens.Lens' ListStreamProcessors (Prelude.Maybe Prelude.Natural)
listStreamProcessors_maxResults = Lens.lens (\ListStreamProcessors' {maxResults} -> maxResults) (\s@ListStreamProcessors' {} a -> s {maxResults = a} :: ListStreamProcessors)

instance Pager.AWSPager ListStreamProcessors where
  page rq rs
    | Pager.stop
        ( rs
            Lens.^? listStreamProcessorsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Pager.stop
        ( rs
            Lens.^? listStreamProcessorsResponse_streamProcessors
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Lens.& listStreamProcessors_nextToken
          Lens..~ rs
          Lens.^? listStreamProcessorsResponse_nextToken
            Prelude.. Lens._Just

instance Prelude.AWSRequest ListStreamProcessors where
  type
    Rs ListStreamProcessors =
      ListStreamProcessorsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListStreamProcessorsResponse'
            Prelude.<$> (x Prelude..?> "NextToken")
            Prelude.<*> ( x Prelude..?> "StreamProcessors"
                            Prelude..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListStreamProcessors

instance Prelude.NFData ListStreamProcessors

instance Prelude.ToHeaders ListStreamProcessors where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "RekognitionService.ListStreamProcessors" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON ListStreamProcessors where
  toJSON ListStreamProcessors' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("NextToken" Prelude..=) Prelude.<$> nextToken,
            ("MaxResults" Prelude..=) Prelude.<$> maxResults
          ]
      )

instance Prelude.ToPath ListStreamProcessors where
  toPath = Prelude.const "/"

instance Prelude.ToQuery ListStreamProcessors where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListStreamProcessorsResponse' smart constructor.
data ListStreamProcessorsResponse = ListStreamProcessorsResponse'
  { -- | If the response is truncated, Amazon Rekognition Video returns this
    -- token that you can use in the subsequent request to retrieve the next
    -- set of stream processors.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | List of stream processors that you have created.
    streamProcessors :: Prelude.Maybe [StreamProcessor],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'ListStreamProcessorsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listStreamProcessorsResponse_nextToken' - If the response is truncated, Amazon Rekognition Video returns this
-- token that you can use in the subsequent request to retrieve the next
-- set of stream processors.
--
-- 'streamProcessors', 'listStreamProcessorsResponse_streamProcessors' - List of stream processors that you have created.
--
-- 'httpStatus', 'listStreamProcessorsResponse_httpStatus' - The response's http status code.
newListStreamProcessorsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListStreamProcessorsResponse
newListStreamProcessorsResponse pHttpStatus_ =
  ListStreamProcessorsResponse'
    { nextToken =
        Prelude.Nothing,
      streamProcessors = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | If the response is truncated, Amazon Rekognition Video returns this
-- token that you can use in the subsequent request to retrieve the next
-- set of stream processors.
listStreamProcessorsResponse_nextToken :: Lens.Lens' ListStreamProcessorsResponse (Prelude.Maybe Prelude.Text)
listStreamProcessorsResponse_nextToken = Lens.lens (\ListStreamProcessorsResponse' {nextToken} -> nextToken) (\s@ListStreamProcessorsResponse' {} a -> s {nextToken = a} :: ListStreamProcessorsResponse)

-- | List of stream processors that you have created.
listStreamProcessorsResponse_streamProcessors :: Lens.Lens' ListStreamProcessorsResponse (Prelude.Maybe [StreamProcessor])
listStreamProcessorsResponse_streamProcessors = Lens.lens (\ListStreamProcessorsResponse' {streamProcessors} -> streamProcessors) (\s@ListStreamProcessorsResponse' {} a -> s {streamProcessors = a} :: ListStreamProcessorsResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | The response's http status code.
listStreamProcessorsResponse_httpStatus :: Lens.Lens' ListStreamProcessorsResponse Prelude.Int
listStreamProcessorsResponse_httpStatus = Lens.lens (\ListStreamProcessorsResponse' {httpStatus} -> httpStatus) (\s@ListStreamProcessorsResponse' {} a -> s {httpStatus = a} :: ListStreamProcessorsResponse)

instance Prelude.NFData ListStreamProcessorsResponse
