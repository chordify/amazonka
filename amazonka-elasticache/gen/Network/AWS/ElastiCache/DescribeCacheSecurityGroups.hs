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
-- Module      : Network.AWS.ElastiCache.DescribeCacheSecurityGroups
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of cache security group descriptions. If a cache security
-- group name is specified, the list contains only the description of that
-- group. This applicable only when you have ElastiCache in Classic setup
--
-- This operation returns paginated results.
module Network.AWS.ElastiCache.DescribeCacheSecurityGroups
  ( -- * Creating a Request
    DescribeCacheSecurityGroups (..),
    newDescribeCacheSecurityGroups,

    -- * Request Lenses
    describeCacheSecurityGroups_cacheSecurityGroupName,
    describeCacheSecurityGroups_marker,
    describeCacheSecurityGroups_maxRecords,

    -- * Destructuring the Response
    DescribeCacheSecurityGroupsResponse (..),
    newDescribeCacheSecurityGroupsResponse,

    -- * Response Lenses
    describeCacheSecurityGroupsResponse_cacheSecurityGroups,
    describeCacheSecurityGroupsResponse_marker,
    describeCacheSecurityGroupsResponse_httpStatus,
  )
where

import Network.AWS.ElastiCache.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Represents the input of a @DescribeCacheSecurityGroups@ operation.
--
-- /See:/ 'newDescribeCacheSecurityGroups' smart constructor.
data DescribeCacheSecurityGroups = DescribeCacheSecurityGroups'
  { -- | The name of the cache security group to return details for.
    cacheSecurityGroupName :: Prelude.Maybe Prelude.Text,
    -- | An optional marker returned from a prior request. Use this marker for
    -- pagination of results from this operation. If this parameter is
    -- specified, the response includes only records beyond the marker, up to
    -- the value specified by @MaxRecords@.
    marker :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of records to include in the response. If more
    -- records exist than the specified @MaxRecords@ value, a marker is
    -- included in the response so that the remaining results can be retrieved.
    --
    -- Default: 100
    --
    -- Constraints: minimum 20; maximum 100.
    maxRecords :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DescribeCacheSecurityGroups' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'cacheSecurityGroupName', 'describeCacheSecurityGroups_cacheSecurityGroupName' - The name of the cache security group to return details for.
--
-- 'marker', 'describeCacheSecurityGroups_marker' - An optional marker returned from a prior request. Use this marker for
-- pagination of results from this operation. If this parameter is
-- specified, the response includes only records beyond the marker, up to
-- the value specified by @MaxRecords@.
--
-- 'maxRecords', 'describeCacheSecurityGroups_maxRecords' - The maximum number of records to include in the response. If more
-- records exist than the specified @MaxRecords@ value, a marker is
-- included in the response so that the remaining results can be retrieved.
--
-- Default: 100
--
-- Constraints: minimum 20; maximum 100.
newDescribeCacheSecurityGroups ::
  DescribeCacheSecurityGroups
newDescribeCacheSecurityGroups =
  DescribeCacheSecurityGroups'
    { cacheSecurityGroupName =
        Prelude.Nothing,
      marker = Prelude.Nothing,
      maxRecords = Prelude.Nothing
    }

-- | The name of the cache security group to return details for.
describeCacheSecurityGroups_cacheSecurityGroupName :: Lens.Lens' DescribeCacheSecurityGroups (Prelude.Maybe Prelude.Text)
describeCacheSecurityGroups_cacheSecurityGroupName = Lens.lens (\DescribeCacheSecurityGroups' {cacheSecurityGroupName} -> cacheSecurityGroupName) (\s@DescribeCacheSecurityGroups' {} a -> s {cacheSecurityGroupName = a} :: DescribeCacheSecurityGroups)

-- | An optional marker returned from a prior request. Use this marker for
-- pagination of results from this operation. If this parameter is
-- specified, the response includes only records beyond the marker, up to
-- the value specified by @MaxRecords@.
describeCacheSecurityGroups_marker :: Lens.Lens' DescribeCacheSecurityGroups (Prelude.Maybe Prelude.Text)
describeCacheSecurityGroups_marker = Lens.lens (\DescribeCacheSecurityGroups' {marker} -> marker) (\s@DescribeCacheSecurityGroups' {} a -> s {marker = a} :: DescribeCacheSecurityGroups)

-- | The maximum number of records to include in the response. If more
-- records exist than the specified @MaxRecords@ value, a marker is
-- included in the response so that the remaining results can be retrieved.
--
-- Default: 100
--
-- Constraints: minimum 20; maximum 100.
describeCacheSecurityGroups_maxRecords :: Lens.Lens' DescribeCacheSecurityGroups (Prelude.Maybe Prelude.Int)
describeCacheSecurityGroups_maxRecords = Lens.lens (\DescribeCacheSecurityGroups' {maxRecords} -> maxRecords) (\s@DescribeCacheSecurityGroups' {} a -> s {maxRecords = a} :: DescribeCacheSecurityGroups)

instance Pager.AWSPager DescribeCacheSecurityGroups where
  page rq rs
    | Pager.stop
        ( rs
            Lens.^? describeCacheSecurityGroupsResponse_marker
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Pager.stop
        ( rs
            Lens.^? describeCacheSecurityGroupsResponse_cacheSecurityGroups
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Lens.& describeCacheSecurityGroups_marker
          Lens..~ rs
          Lens.^? describeCacheSecurityGroupsResponse_marker
            Prelude.. Lens._Just

instance
  Prelude.AWSRequest
    DescribeCacheSecurityGroups
  where
  type
    Rs DescribeCacheSecurityGroups =
      DescribeCacheSecurityGroupsResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "DescribeCacheSecurityGroupsResult"
      ( \s h x ->
          DescribeCacheSecurityGroupsResponse'
            Prelude.<$> ( x Prelude..@? "CacheSecurityGroups"
                            Prelude..!@ Prelude.mempty
                            Prelude.>>= Prelude.may
                              (Prelude.parseXMLList "CacheSecurityGroup")
                        )
            Prelude.<*> (x Prelude..@? "Marker")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeCacheSecurityGroups

instance Prelude.NFData DescribeCacheSecurityGroups

instance
  Prelude.ToHeaders
    DescribeCacheSecurityGroups
  where
  toHeaders = Prelude.const Prelude.mempty

instance Prelude.ToPath DescribeCacheSecurityGroups where
  toPath = Prelude.const "/"

instance Prelude.ToQuery DescribeCacheSecurityGroups where
  toQuery DescribeCacheSecurityGroups' {..} =
    Prelude.mconcat
      [ "Action"
          Prelude.=: ( "DescribeCacheSecurityGroups" ::
                         Prelude.ByteString
                     ),
        "Version"
          Prelude.=: ("2015-02-02" :: Prelude.ByteString),
        "CacheSecurityGroupName"
          Prelude.=: cacheSecurityGroupName,
        "Marker" Prelude.=: marker,
        "MaxRecords" Prelude.=: maxRecords
      ]

-- | Represents the output of a @DescribeCacheSecurityGroups@ operation.
--
-- /See:/ 'newDescribeCacheSecurityGroupsResponse' smart constructor.
data DescribeCacheSecurityGroupsResponse = DescribeCacheSecurityGroupsResponse'
  { -- | A list of cache security groups. Each element in the list contains
    -- detailed information about one group.
    cacheSecurityGroups :: Prelude.Maybe [CacheSecurityGroup],
    -- | Provides an identifier to allow retrieval of paginated results.
    marker :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DescribeCacheSecurityGroupsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'cacheSecurityGroups', 'describeCacheSecurityGroupsResponse_cacheSecurityGroups' - A list of cache security groups. Each element in the list contains
-- detailed information about one group.
--
-- 'marker', 'describeCacheSecurityGroupsResponse_marker' - Provides an identifier to allow retrieval of paginated results.
--
-- 'httpStatus', 'describeCacheSecurityGroupsResponse_httpStatus' - The response's http status code.
newDescribeCacheSecurityGroupsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeCacheSecurityGroupsResponse
newDescribeCacheSecurityGroupsResponse pHttpStatus_ =
  DescribeCacheSecurityGroupsResponse'
    { cacheSecurityGroups =
        Prelude.Nothing,
      marker = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A list of cache security groups. Each element in the list contains
-- detailed information about one group.
describeCacheSecurityGroupsResponse_cacheSecurityGroups :: Lens.Lens' DescribeCacheSecurityGroupsResponse (Prelude.Maybe [CacheSecurityGroup])
describeCacheSecurityGroupsResponse_cacheSecurityGroups = Lens.lens (\DescribeCacheSecurityGroupsResponse' {cacheSecurityGroups} -> cacheSecurityGroups) (\s@DescribeCacheSecurityGroupsResponse' {} a -> s {cacheSecurityGroups = a} :: DescribeCacheSecurityGroupsResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | Provides an identifier to allow retrieval of paginated results.
describeCacheSecurityGroupsResponse_marker :: Lens.Lens' DescribeCacheSecurityGroupsResponse (Prelude.Maybe Prelude.Text)
describeCacheSecurityGroupsResponse_marker = Lens.lens (\DescribeCacheSecurityGroupsResponse' {marker} -> marker) (\s@DescribeCacheSecurityGroupsResponse' {} a -> s {marker = a} :: DescribeCacheSecurityGroupsResponse)

-- | The response's http status code.
describeCacheSecurityGroupsResponse_httpStatus :: Lens.Lens' DescribeCacheSecurityGroupsResponse Prelude.Int
describeCacheSecurityGroupsResponse_httpStatus = Lens.lens (\DescribeCacheSecurityGroupsResponse' {httpStatus} -> httpStatus) (\s@DescribeCacheSecurityGroupsResponse' {} a -> s {httpStatus = a} :: DescribeCacheSecurityGroupsResponse)

instance
  Prelude.NFData
    DescribeCacheSecurityGroupsResponse
