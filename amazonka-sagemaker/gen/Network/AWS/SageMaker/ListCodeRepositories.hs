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
-- Module      : Network.AWS.SageMaker.ListCodeRepositories
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a list of the Git repositories in your account.
--
-- This operation returns paginated results.
module Network.AWS.SageMaker.ListCodeRepositories
  ( -- * Creating a Request
    ListCodeRepositories (..),
    newListCodeRepositories,

    -- * Request Lenses
    listCodeRepositories_lastModifiedTimeBefore,
    listCodeRepositories_sortOrder,
    listCodeRepositories_nextToken,
    listCodeRepositories_nameContains,
    listCodeRepositories_maxResults,
    listCodeRepositories_creationTimeBefore,
    listCodeRepositories_lastModifiedTimeAfter,
    listCodeRepositories_sortBy,
    listCodeRepositories_creationTimeAfter,

    -- * Destructuring the Response
    ListCodeRepositoriesResponse (..),
    newListCodeRepositoriesResponse,

    -- * Response Lenses
    listCodeRepositoriesResponse_nextToken,
    listCodeRepositoriesResponse_httpStatus,
    listCodeRepositoriesResponse_codeRepositorySummaryList,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'newListCodeRepositories' smart constructor.
data ListCodeRepositories = ListCodeRepositories'
  { -- | A filter that returns only Git repositories that were last modified
    -- before the specified time.
    lastModifiedTimeBefore :: Prelude.Maybe Prelude.POSIX,
    -- | The sort order for results. The default is @Ascending@.
    sortOrder :: Prelude.Maybe CodeRepositorySortOrder,
    -- | If the result of a @ListCodeRepositoriesOutput@ request was truncated,
    -- the response includes a @NextToken@. To get the next set of Git
    -- repositories, use the token in the next request.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | A string in the Git repositories name. This filter returns only
    -- repositories whose name contains the specified string.
    nameContains :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of Git repositories to return in the response.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | A filter that returns only Git repositories that were created before the
    -- specified time.
    creationTimeBefore :: Prelude.Maybe Prelude.POSIX,
    -- | A filter that returns only Git repositories that were last modified
    -- after the specified time.
    lastModifiedTimeAfter :: Prelude.Maybe Prelude.POSIX,
    -- | The field to sort results by. The default is @Name@.
    sortBy :: Prelude.Maybe CodeRepositorySortBy,
    -- | A filter that returns only Git repositories that were created after the
    -- specified time.
    creationTimeAfter :: Prelude.Maybe Prelude.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'ListCodeRepositories' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'lastModifiedTimeBefore', 'listCodeRepositories_lastModifiedTimeBefore' - A filter that returns only Git repositories that were last modified
-- before the specified time.
--
-- 'sortOrder', 'listCodeRepositories_sortOrder' - The sort order for results. The default is @Ascending@.
--
-- 'nextToken', 'listCodeRepositories_nextToken' - If the result of a @ListCodeRepositoriesOutput@ request was truncated,
-- the response includes a @NextToken@. To get the next set of Git
-- repositories, use the token in the next request.
--
-- 'nameContains', 'listCodeRepositories_nameContains' - A string in the Git repositories name. This filter returns only
-- repositories whose name contains the specified string.
--
-- 'maxResults', 'listCodeRepositories_maxResults' - The maximum number of Git repositories to return in the response.
--
-- 'creationTimeBefore', 'listCodeRepositories_creationTimeBefore' - A filter that returns only Git repositories that were created before the
-- specified time.
--
-- 'lastModifiedTimeAfter', 'listCodeRepositories_lastModifiedTimeAfter' - A filter that returns only Git repositories that were last modified
-- after the specified time.
--
-- 'sortBy', 'listCodeRepositories_sortBy' - The field to sort results by. The default is @Name@.
--
-- 'creationTimeAfter', 'listCodeRepositories_creationTimeAfter' - A filter that returns only Git repositories that were created after the
-- specified time.
newListCodeRepositories ::
  ListCodeRepositories
newListCodeRepositories =
  ListCodeRepositories'
    { lastModifiedTimeBefore =
        Prelude.Nothing,
      sortOrder = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      nameContains = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      creationTimeBefore = Prelude.Nothing,
      lastModifiedTimeAfter = Prelude.Nothing,
      sortBy = Prelude.Nothing,
      creationTimeAfter = Prelude.Nothing
    }

-- | A filter that returns only Git repositories that were last modified
-- before the specified time.
listCodeRepositories_lastModifiedTimeBefore :: Lens.Lens' ListCodeRepositories (Prelude.Maybe Prelude.UTCTime)
listCodeRepositories_lastModifiedTimeBefore = Lens.lens (\ListCodeRepositories' {lastModifiedTimeBefore} -> lastModifiedTimeBefore) (\s@ListCodeRepositories' {} a -> s {lastModifiedTimeBefore = a} :: ListCodeRepositories) Prelude.. Lens.mapping Prelude._Time

-- | The sort order for results. The default is @Ascending@.
listCodeRepositories_sortOrder :: Lens.Lens' ListCodeRepositories (Prelude.Maybe CodeRepositorySortOrder)
listCodeRepositories_sortOrder = Lens.lens (\ListCodeRepositories' {sortOrder} -> sortOrder) (\s@ListCodeRepositories' {} a -> s {sortOrder = a} :: ListCodeRepositories)

-- | If the result of a @ListCodeRepositoriesOutput@ request was truncated,
-- the response includes a @NextToken@. To get the next set of Git
-- repositories, use the token in the next request.
listCodeRepositories_nextToken :: Lens.Lens' ListCodeRepositories (Prelude.Maybe Prelude.Text)
listCodeRepositories_nextToken = Lens.lens (\ListCodeRepositories' {nextToken} -> nextToken) (\s@ListCodeRepositories' {} a -> s {nextToken = a} :: ListCodeRepositories)

-- | A string in the Git repositories name. This filter returns only
-- repositories whose name contains the specified string.
listCodeRepositories_nameContains :: Lens.Lens' ListCodeRepositories (Prelude.Maybe Prelude.Text)
listCodeRepositories_nameContains = Lens.lens (\ListCodeRepositories' {nameContains} -> nameContains) (\s@ListCodeRepositories' {} a -> s {nameContains = a} :: ListCodeRepositories)

-- | The maximum number of Git repositories to return in the response.
listCodeRepositories_maxResults :: Lens.Lens' ListCodeRepositories (Prelude.Maybe Prelude.Natural)
listCodeRepositories_maxResults = Lens.lens (\ListCodeRepositories' {maxResults} -> maxResults) (\s@ListCodeRepositories' {} a -> s {maxResults = a} :: ListCodeRepositories)

-- | A filter that returns only Git repositories that were created before the
-- specified time.
listCodeRepositories_creationTimeBefore :: Lens.Lens' ListCodeRepositories (Prelude.Maybe Prelude.UTCTime)
listCodeRepositories_creationTimeBefore = Lens.lens (\ListCodeRepositories' {creationTimeBefore} -> creationTimeBefore) (\s@ListCodeRepositories' {} a -> s {creationTimeBefore = a} :: ListCodeRepositories) Prelude.. Lens.mapping Prelude._Time

-- | A filter that returns only Git repositories that were last modified
-- after the specified time.
listCodeRepositories_lastModifiedTimeAfter :: Lens.Lens' ListCodeRepositories (Prelude.Maybe Prelude.UTCTime)
listCodeRepositories_lastModifiedTimeAfter = Lens.lens (\ListCodeRepositories' {lastModifiedTimeAfter} -> lastModifiedTimeAfter) (\s@ListCodeRepositories' {} a -> s {lastModifiedTimeAfter = a} :: ListCodeRepositories) Prelude.. Lens.mapping Prelude._Time

-- | The field to sort results by. The default is @Name@.
listCodeRepositories_sortBy :: Lens.Lens' ListCodeRepositories (Prelude.Maybe CodeRepositorySortBy)
listCodeRepositories_sortBy = Lens.lens (\ListCodeRepositories' {sortBy} -> sortBy) (\s@ListCodeRepositories' {} a -> s {sortBy = a} :: ListCodeRepositories)

-- | A filter that returns only Git repositories that were created after the
-- specified time.
listCodeRepositories_creationTimeAfter :: Lens.Lens' ListCodeRepositories (Prelude.Maybe Prelude.UTCTime)
listCodeRepositories_creationTimeAfter = Lens.lens (\ListCodeRepositories' {creationTimeAfter} -> creationTimeAfter) (\s@ListCodeRepositories' {} a -> s {creationTimeAfter = a} :: ListCodeRepositories) Prelude.. Lens.mapping Prelude._Time

instance Pager.AWSPager ListCodeRepositories where
  page rq rs
    | Pager.stop
        ( rs
            Lens.^? listCodeRepositoriesResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Pager.stop
        ( rs
            Lens.^. listCodeRepositoriesResponse_codeRepositorySummaryList
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Lens.& listCodeRepositories_nextToken
          Lens..~ rs
          Lens.^? listCodeRepositoriesResponse_nextToken
            Prelude.. Lens._Just

instance Prelude.AWSRequest ListCodeRepositories where
  type
    Rs ListCodeRepositories =
      ListCodeRepositoriesResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListCodeRepositoriesResponse'
            Prelude.<$> (x Prelude..?> "NextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> ( x Prelude..?> "CodeRepositorySummaryList"
                            Prelude..!@ Prelude.mempty
                        )
      )

instance Prelude.Hashable ListCodeRepositories

instance Prelude.NFData ListCodeRepositories

instance Prelude.ToHeaders ListCodeRepositories where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "SageMaker.ListCodeRepositories" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON ListCodeRepositories where
  toJSON ListCodeRepositories' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("LastModifiedTimeBefore" Prelude..=)
              Prelude.<$> lastModifiedTimeBefore,
            ("SortOrder" Prelude..=) Prelude.<$> sortOrder,
            ("NextToken" Prelude..=) Prelude.<$> nextToken,
            ("NameContains" Prelude..=) Prelude.<$> nameContains,
            ("MaxResults" Prelude..=) Prelude.<$> maxResults,
            ("CreationTimeBefore" Prelude..=)
              Prelude.<$> creationTimeBefore,
            ("LastModifiedTimeAfter" Prelude..=)
              Prelude.<$> lastModifiedTimeAfter,
            ("SortBy" Prelude..=) Prelude.<$> sortBy,
            ("CreationTimeAfter" Prelude..=)
              Prelude.<$> creationTimeAfter
          ]
      )

instance Prelude.ToPath ListCodeRepositories where
  toPath = Prelude.const "/"

instance Prelude.ToQuery ListCodeRepositories where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListCodeRepositoriesResponse' smart constructor.
data ListCodeRepositoriesResponse = ListCodeRepositoriesResponse'
  { -- | If the result of a @ListCodeRepositoriesOutput@ request was truncated,
    -- the response includes a @NextToken@. To get the next set of Git
    -- repositories, use the token in the next request.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | Gets a list of summaries of the Git repositories. Each summary specifies
    -- the following values for the repository:
    --
    -- -   Name
    --
    -- -   Amazon Resource Name (ARN)
    --
    -- -   Creation time
    --
    -- -   Last modified time
    --
    -- -   Configuration information, including the URL location of the
    --     repository and the ARN of the AWS Secrets Manager secret that
    --     contains the credentials used to access the repository.
    codeRepositorySummaryList :: [CodeRepositorySummary]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'ListCodeRepositoriesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listCodeRepositoriesResponse_nextToken' - If the result of a @ListCodeRepositoriesOutput@ request was truncated,
-- the response includes a @NextToken@. To get the next set of Git
-- repositories, use the token in the next request.
--
-- 'httpStatus', 'listCodeRepositoriesResponse_httpStatus' - The response's http status code.
--
-- 'codeRepositorySummaryList', 'listCodeRepositoriesResponse_codeRepositorySummaryList' - Gets a list of summaries of the Git repositories. Each summary specifies
-- the following values for the repository:
--
-- -   Name
--
-- -   Amazon Resource Name (ARN)
--
-- -   Creation time
--
-- -   Last modified time
--
-- -   Configuration information, including the URL location of the
--     repository and the ARN of the AWS Secrets Manager secret that
--     contains the credentials used to access the repository.
newListCodeRepositoriesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListCodeRepositoriesResponse
newListCodeRepositoriesResponse pHttpStatus_ =
  ListCodeRepositoriesResponse'
    { nextToken =
        Prelude.Nothing,
      httpStatus = pHttpStatus_,
      codeRepositorySummaryList = Prelude.mempty
    }

-- | If the result of a @ListCodeRepositoriesOutput@ request was truncated,
-- the response includes a @NextToken@. To get the next set of Git
-- repositories, use the token in the next request.
listCodeRepositoriesResponse_nextToken :: Lens.Lens' ListCodeRepositoriesResponse (Prelude.Maybe Prelude.Text)
listCodeRepositoriesResponse_nextToken = Lens.lens (\ListCodeRepositoriesResponse' {nextToken} -> nextToken) (\s@ListCodeRepositoriesResponse' {} a -> s {nextToken = a} :: ListCodeRepositoriesResponse)

-- | The response's http status code.
listCodeRepositoriesResponse_httpStatus :: Lens.Lens' ListCodeRepositoriesResponse Prelude.Int
listCodeRepositoriesResponse_httpStatus = Lens.lens (\ListCodeRepositoriesResponse' {httpStatus} -> httpStatus) (\s@ListCodeRepositoriesResponse' {} a -> s {httpStatus = a} :: ListCodeRepositoriesResponse)

-- | Gets a list of summaries of the Git repositories. Each summary specifies
-- the following values for the repository:
--
-- -   Name
--
-- -   Amazon Resource Name (ARN)
--
-- -   Creation time
--
-- -   Last modified time
--
-- -   Configuration information, including the URL location of the
--     repository and the ARN of the AWS Secrets Manager secret that
--     contains the credentials used to access the repository.
listCodeRepositoriesResponse_codeRepositorySummaryList :: Lens.Lens' ListCodeRepositoriesResponse [CodeRepositorySummary]
listCodeRepositoriesResponse_codeRepositorySummaryList = Lens.lens (\ListCodeRepositoriesResponse' {codeRepositorySummaryList} -> codeRepositorySummaryList) (\s@ListCodeRepositoriesResponse' {} a -> s {codeRepositorySummaryList = a} :: ListCodeRepositoriesResponse) Prelude.. Prelude._Coerce

instance Prelude.NFData ListCodeRepositoriesResponse
