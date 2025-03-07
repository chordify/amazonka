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
-- Module      : Network.AWS.Lightsail.GetDiskSnapshots
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about all block storage disk snapshots in your AWS
-- account and region.
--
-- This operation returns paginated results.
module Network.AWS.Lightsail.GetDiskSnapshots
  ( -- * Creating a Request
    GetDiskSnapshots (..),
    newGetDiskSnapshots,

    -- * Request Lenses
    getDiskSnapshots_pageToken,

    -- * Destructuring the Response
    GetDiskSnapshotsResponse (..),
    newGetDiskSnapshotsResponse,

    -- * Response Lenses
    getDiskSnapshotsResponse_nextPageToken,
    getDiskSnapshotsResponse_diskSnapshots,
    getDiskSnapshotsResponse_httpStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import Network.AWS.Lightsail.Types
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetDiskSnapshots' smart constructor.
data GetDiskSnapshots = GetDiskSnapshots'
  { -- | The token to advance to the next page of results from your request.
    --
    -- To get a page token, perform an initial @GetDiskSnapshots@ request. If
    -- your results are paginated, the response will return a next page token
    -- that you can specify as the page token in a subsequent request.
    pageToken :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'GetDiskSnapshots' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'pageToken', 'getDiskSnapshots_pageToken' - The token to advance to the next page of results from your request.
--
-- To get a page token, perform an initial @GetDiskSnapshots@ request. If
-- your results are paginated, the response will return a next page token
-- that you can specify as the page token in a subsequent request.
newGetDiskSnapshots ::
  GetDiskSnapshots
newGetDiskSnapshots =
  GetDiskSnapshots' {pageToken = Prelude.Nothing}

-- | The token to advance to the next page of results from your request.
--
-- To get a page token, perform an initial @GetDiskSnapshots@ request. If
-- your results are paginated, the response will return a next page token
-- that you can specify as the page token in a subsequent request.
getDiskSnapshots_pageToken :: Lens.Lens' GetDiskSnapshots (Prelude.Maybe Prelude.Text)
getDiskSnapshots_pageToken = Lens.lens (\GetDiskSnapshots' {pageToken} -> pageToken) (\s@GetDiskSnapshots' {} a -> s {pageToken = a} :: GetDiskSnapshots)

instance Pager.AWSPager GetDiskSnapshots where
  page rq rs
    | Pager.stop
        ( rs
            Lens.^? getDiskSnapshotsResponse_nextPageToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Pager.stop
        ( rs
            Lens.^? getDiskSnapshotsResponse_diskSnapshots
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Lens.& getDiskSnapshots_pageToken
          Lens..~ rs
          Lens.^? getDiskSnapshotsResponse_nextPageToken
            Prelude.. Lens._Just

instance Prelude.AWSRequest GetDiskSnapshots where
  type Rs GetDiskSnapshots = GetDiskSnapshotsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetDiskSnapshotsResponse'
            Prelude.<$> (x Prelude..?> "nextPageToken")
            Prelude.<*> ( x Prelude..?> "diskSnapshots"
                            Prelude..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetDiskSnapshots

instance Prelude.NFData GetDiskSnapshots

instance Prelude.ToHeaders GetDiskSnapshots where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "Lightsail_20161128.GetDiskSnapshots" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON GetDiskSnapshots where
  toJSON GetDiskSnapshots' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [("pageToken" Prelude..=) Prelude.<$> pageToken]
      )

instance Prelude.ToPath GetDiskSnapshots where
  toPath = Prelude.const "/"

instance Prelude.ToQuery GetDiskSnapshots where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetDiskSnapshotsResponse' smart constructor.
data GetDiskSnapshotsResponse = GetDiskSnapshotsResponse'
  { -- | The token to advance to the next page of results from your request.
    --
    -- A next page token is not returned if there are no more results to
    -- display.
    --
    -- To get the next page of results, perform another @GetDiskSnapshots@
    -- request and specify the next page token using the @pageToken@ parameter.
    nextPageToken :: Prelude.Maybe Prelude.Text,
    -- | An array of objects containing information about all block storage disk
    -- snapshots.
    diskSnapshots :: Prelude.Maybe [DiskSnapshot],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'GetDiskSnapshotsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextPageToken', 'getDiskSnapshotsResponse_nextPageToken' - The token to advance to the next page of results from your request.
--
-- A next page token is not returned if there are no more results to
-- display.
--
-- To get the next page of results, perform another @GetDiskSnapshots@
-- request and specify the next page token using the @pageToken@ parameter.
--
-- 'diskSnapshots', 'getDiskSnapshotsResponse_diskSnapshots' - An array of objects containing information about all block storage disk
-- snapshots.
--
-- 'httpStatus', 'getDiskSnapshotsResponse_httpStatus' - The response's http status code.
newGetDiskSnapshotsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetDiskSnapshotsResponse
newGetDiskSnapshotsResponse pHttpStatus_ =
  GetDiskSnapshotsResponse'
    { nextPageToken =
        Prelude.Nothing,
      diskSnapshots = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The token to advance to the next page of results from your request.
--
-- A next page token is not returned if there are no more results to
-- display.
--
-- To get the next page of results, perform another @GetDiskSnapshots@
-- request and specify the next page token using the @pageToken@ parameter.
getDiskSnapshotsResponse_nextPageToken :: Lens.Lens' GetDiskSnapshotsResponse (Prelude.Maybe Prelude.Text)
getDiskSnapshotsResponse_nextPageToken = Lens.lens (\GetDiskSnapshotsResponse' {nextPageToken} -> nextPageToken) (\s@GetDiskSnapshotsResponse' {} a -> s {nextPageToken = a} :: GetDiskSnapshotsResponse)

-- | An array of objects containing information about all block storage disk
-- snapshots.
getDiskSnapshotsResponse_diskSnapshots :: Lens.Lens' GetDiskSnapshotsResponse (Prelude.Maybe [DiskSnapshot])
getDiskSnapshotsResponse_diskSnapshots = Lens.lens (\GetDiskSnapshotsResponse' {diskSnapshots} -> diskSnapshots) (\s@GetDiskSnapshotsResponse' {} a -> s {diskSnapshots = a} :: GetDiskSnapshotsResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | The response's http status code.
getDiskSnapshotsResponse_httpStatus :: Lens.Lens' GetDiskSnapshotsResponse Prelude.Int
getDiskSnapshotsResponse_httpStatus = Lens.lens (\GetDiskSnapshotsResponse' {httpStatus} -> httpStatus) (\s@GetDiskSnapshotsResponse' {} a -> s {httpStatus = a} :: GetDiskSnapshotsResponse)

instance Prelude.NFData GetDiskSnapshotsResponse
