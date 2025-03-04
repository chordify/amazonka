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
-- Module      : Network.AWS.ElasticSearch.GetPackageVersionHistory
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of versions of the package, along with their creation
-- time and commit message.
module Network.AWS.ElasticSearch.GetPackageVersionHistory
  ( -- * Creating a Request
    GetPackageVersionHistory (..),
    newGetPackageVersionHistory,

    -- * Request Lenses
    getPackageVersionHistory_nextToken,
    getPackageVersionHistory_maxResults,
    getPackageVersionHistory_packageID,

    -- * Destructuring the Response
    GetPackageVersionHistoryResponse (..),
    newGetPackageVersionHistoryResponse,

    -- * Response Lenses
    getPackageVersionHistoryResponse_nextToken,
    getPackageVersionHistoryResponse_packageID,
    getPackageVersionHistoryResponse_packageVersionHistoryList,
    getPackageVersionHistoryResponse_httpStatus,
  )
where

import Network.AWS.ElasticSearch.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Container for request parameters to @ GetPackageVersionHistory @
-- operation.
--
-- /See:/ 'newGetPackageVersionHistory' smart constructor.
data GetPackageVersionHistory = GetPackageVersionHistory'
  { -- | Used for pagination. Only necessary if a previous API call includes a
    -- non-null NextToken value. If provided, returns results for the next
    -- page.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Limits results to a maximum number of versions.
    maxResults :: Prelude.Maybe Prelude.Int,
    -- | Returns an audit history of versions of the package.
    packageID :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'GetPackageVersionHistory' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'getPackageVersionHistory_nextToken' - Used for pagination. Only necessary if a previous API call includes a
-- non-null NextToken value. If provided, returns results for the next
-- page.
--
-- 'maxResults', 'getPackageVersionHistory_maxResults' - Limits results to a maximum number of versions.
--
-- 'packageID', 'getPackageVersionHistory_packageID' - Returns an audit history of versions of the package.
newGetPackageVersionHistory ::
  -- | 'packageID'
  Prelude.Text ->
  GetPackageVersionHistory
newGetPackageVersionHistory pPackageID_ =
  GetPackageVersionHistory'
    { nextToken =
        Prelude.Nothing,
      maxResults = Prelude.Nothing,
      packageID = pPackageID_
    }

-- | Used for pagination. Only necessary if a previous API call includes a
-- non-null NextToken value. If provided, returns results for the next
-- page.
getPackageVersionHistory_nextToken :: Lens.Lens' GetPackageVersionHistory (Prelude.Maybe Prelude.Text)
getPackageVersionHistory_nextToken = Lens.lens (\GetPackageVersionHistory' {nextToken} -> nextToken) (\s@GetPackageVersionHistory' {} a -> s {nextToken = a} :: GetPackageVersionHistory)

-- | Limits results to a maximum number of versions.
getPackageVersionHistory_maxResults :: Lens.Lens' GetPackageVersionHistory (Prelude.Maybe Prelude.Int)
getPackageVersionHistory_maxResults = Lens.lens (\GetPackageVersionHistory' {maxResults} -> maxResults) (\s@GetPackageVersionHistory' {} a -> s {maxResults = a} :: GetPackageVersionHistory)

-- | Returns an audit history of versions of the package.
getPackageVersionHistory_packageID :: Lens.Lens' GetPackageVersionHistory Prelude.Text
getPackageVersionHistory_packageID = Lens.lens (\GetPackageVersionHistory' {packageID} -> packageID) (\s@GetPackageVersionHistory' {} a -> s {packageID = a} :: GetPackageVersionHistory)

instance Prelude.AWSRequest GetPackageVersionHistory where
  type
    Rs GetPackageVersionHistory =
      GetPackageVersionHistoryResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetPackageVersionHistoryResponse'
            Prelude.<$> (x Prelude..?> "NextToken")
            Prelude.<*> (x Prelude..?> "PackageID")
            Prelude.<*> ( x Prelude..?> "PackageVersionHistoryList"
                            Prelude..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetPackageVersionHistory

instance Prelude.NFData GetPackageVersionHistory

instance Prelude.ToHeaders GetPackageVersionHistory where
  toHeaders = Prelude.const Prelude.mempty

instance Prelude.ToPath GetPackageVersionHistory where
  toPath GetPackageVersionHistory' {..} =
    Prelude.mconcat
      [ "/2015-01-01/packages/",
        Prelude.toBS packageID,
        "/history"
      ]

instance Prelude.ToQuery GetPackageVersionHistory where
  toQuery GetPackageVersionHistory' {..} =
    Prelude.mconcat
      [ "nextToken" Prelude.=: nextToken,
        "maxResults" Prelude.=: maxResults
      ]

-- | Container for response returned by @ GetPackageVersionHistory @
-- operation.
--
-- /See:/ 'newGetPackageVersionHistoryResponse' smart constructor.
data GetPackageVersionHistoryResponse = GetPackageVersionHistoryResponse'
  { nextToken :: Prelude.Maybe Prelude.Text,
    packageID :: Prelude.Maybe Prelude.Text,
    -- | List of @PackageVersionHistory@ objects.
    packageVersionHistoryList :: Prelude.Maybe [PackageVersionHistory],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'GetPackageVersionHistoryResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'getPackageVersionHistoryResponse_nextToken' - Undocumented member.
--
-- 'packageID', 'getPackageVersionHistoryResponse_packageID' - Undocumented member.
--
-- 'packageVersionHistoryList', 'getPackageVersionHistoryResponse_packageVersionHistoryList' - List of @PackageVersionHistory@ objects.
--
-- 'httpStatus', 'getPackageVersionHistoryResponse_httpStatus' - The response's http status code.
newGetPackageVersionHistoryResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetPackageVersionHistoryResponse
newGetPackageVersionHistoryResponse pHttpStatus_ =
  GetPackageVersionHistoryResponse'
    { nextToken =
        Prelude.Nothing,
      packageID = Prelude.Nothing,
      packageVersionHistoryList =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
getPackageVersionHistoryResponse_nextToken :: Lens.Lens' GetPackageVersionHistoryResponse (Prelude.Maybe Prelude.Text)
getPackageVersionHistoryResponse_nextToken = Lens.lens (\GetPackageVersionHistoryResponse' {nextToken} -> nextToken) (\s@GetPackageVersionHistoryResponse' {} a -> s {nextToken = a} :: GetPackageVersionHistoryResponse)

-- | Undocumented member.
getPackageVersionHistoryResponse_packageID :: Lens.Lens' GetPackageVersionHistoryResponse (Prelude.Maybe Prelude.Text)
getPackageVersionHistoryResponse_packageID = Lens.lens (\GetPackageVersionHistoryResponse' {packageID} -> packageID) (\s@GetPackageVersionHistoryResponse' {} a -> s {packageID = a} :: GetPackageVersionHistoryResponse)

-- | List of @PackageVersionHistory@ objects.
getPackageVersionHistoryResponse_packageVersionHistoryList :: Lens.Lens' GetPackageVersionHistoryResponse (Prelude.Maybe [PackageVersionHistory])
getPackageVersionHistoryResponse_packageVersionHistoryList = Lens.lens (\GetPackageVersionHistoryResponse' {packageVersionHistoryList} -> packageVersionHistoryList) (\s@GetPackageVersionHistoryResponse' {} a -> s {packageVersionHistoryList = a} :: GetPackageVersionHistoryResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | The response's http status code.
getPackageVersionHistoryResponse_httpStatus :: Lens.Lens' GetPackageVersionHistoryResponse Prelude.Int
getPackageVersionHistoryResponse_httpStatus = Lens.lens (\GetPackageVersionHistoryResponse' {httpStatus} -> httpStatus) (\s@GetPackageVersionHistoryResponse' {} a -> s {httpStatus = a} :: GetPackageVersionHistoryResponse)

instance
  Prelude.NFData
    GetPackageVersionHistoryResponse
