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
-- Module      : Network.AWS.ResourceGroupsTagging.GetComplianceSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a table that shows counts of resources that are noncompliant
-- with their tag policies.
--
-- For more information on tag policies, see
-- <https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html Tag Policies>
-- in the /AWS Organizations User Guide./
--
-- You can call this operation only from the organization\'s management
-- account and from the us-east-1 Region.
--
-- This operation supports pagination, where the response can be sent in
-- multiple pages. You should check the @PaginationToken@ response
-- parameter to determine if there are additional results available to
-- return. Repeat the query, passing the @PaginationToken@ response
-- parameter value as an input to the next request until you recieve a
-- @null@ value. A null value for @PaginationToken@ indicates that there
-- are no more results waiting to be returned.
--
-- This operation returns paginated results.
module Network.AWS.ResourceGroupsTagging.GetComplianceSummary
  ( -- * Creating a Request
    GetComplianceSummary (..),
    newGetComplianceSummary,

    -- * Request Lenses
    getComplianceSummary_maxResults,
    getComplianceSummary_regionFilters,
    getComplianceSummary_targetIdFilters,
    getComplianceSummary_paginationToken,
    getComplianceSummary_groupBy,
    getComplianceSummary_resourceTypeFilters,
    getComplianceSummary_tagKeyFilters,

    -- * Destructuring the Response
    GetComplianceSummaryResponse (..),
    newGetComplianceSummaryResponse,

    -- * Response Lenses
    getComplianceSummaryResponse_paginationToken,
    getComplianceSummaryResponse_summaryList,
    getComplianceSummaryResponse_httpStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import Network.AWS.ResourceGroupsTagging.Types
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetComplianceSummary' smart constructor.
data GetComplianceSummary = GetComplianceSummary'
  { -- | Specifies the maximum number of results to be returned in each page. A
    -- query can return fewer than this maximum, even if there are more results
    -- still to return. You should always check the @PaginationToken@ response
    -- value to see if there are more results. You can specify a minimum of 1
    -- and a maximum value of 100.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | Specifies a list of AWS Regions to limit the output by. If you use this
    -- parameter, the count of returned noncompliant resources includes only
    -- resources in the specified Regions.
    regionFilters :: Prelude.Maybe (Prelude.NonEmpty Prelude.Text),
    -- | Specifies target identifiers (usually, specific account IDs) to limit
    -- the output by. If you use this parameter, the count of returned
    -- noncompliant resources includes only resources with the specified target
    -- IDs.
    targetIdFilters :: Prelude.Maybe (Prelude.NonEmpty Prelude.Text),
    -- | Specifies a @PaginationToken@ response value from a previous request to
    -- indicate that you want the next page of results. Leave this parameter
    -- empty in your initial request.
    paginationToken :: Prelude.Maybe Prelude.Text,
    -- | Specifies a list of attributes to group the counts of noncompliant
    -- resources by. If supplied, the counts are sorted by those attributes.
    groupBy :: Prelude.Maybe [GroupByAttribute],
    -- | Specifies that you want the response to include information for only
    -- resources of the specified types. The format of each resource type is
    -- @service[:resourceType]@. For example, specifying a resource type of
    -- @ec2@ returns all Amazon EC2 resources (which includes EC2 instances).
    -- Specifying a resource type of @ec2:instance@ returns only EC2 instances.
    --
    -- The string for each service name and resource type is the same as that
    -- embedded in a resource\'s Amazon Resource Name (ARN). Consult the /AWS
    -- General Reference/ for the following:
    --
    -- -   For a list of service name strings, see
    --     <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces AWS Service Namespaces>.
    --
    -- -   For resource type strings, see
    --     <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arns-syntax Example ARNs>.
    --
    -- -   For more information about ARNs, see
    --     <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and AWS Service Namespaces>.
    --
    -- You can specify multiple resource types by using a comma separated
    -- array. The array can include up to 100 items. Note that the length
    -- constraint requirement applies to each resource type filter.
    resourceTypeFilters :: Prelude.Maybe [Prelude.Text],
    -- | Specifies that you want the response to include information for only
    -- resources that have tags with the specified tag keys. If you use this
    -- parameter, the count of returned noncompliant resources includes only
    -- resources that have the specified tag keys.
    tagKeyFilters :: Prelude.Maybe (Prelude.NonEmpty Prelude.Text)
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'GetComplianceSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'maxResults', 'getComplianceSummary_maxResults' - Specifies the maximum number of results to be returned in each page. A
-- query can return fewer than this maximum, even if there are more results
-- still to return. You should always check the @PaginationToken@ response
-- value to see if there are more results. You can specify a minimum of 1
-- and a maximum value of 100.
--
-- 'regionFilters', 'getComplianceSummary_regionFilters' - Specifies a list of AWS Regions to limit the output by. If you use this
-- parameter, the count of returned noncompliant resources includes only
-- resources in the specified Regions.
--
-- 'targetIdFilters', 'getComplianceSummary_targetIdFilters' - Specifies target identifiers (usually, specific account IDs) to limit
-- the output by. If you use this parameter, the count of returned
-- noncompliant resources includes only resources with the specified target
-- IDs.
--
-- 'paginationToken', 'getComplianceSummary_paginationToken' - Specifies a @PaginationToken@ response value from a previous request to
-- indicate that you want the next page of results. Leave this parameter
-- empty in your initial request.
--
-- 'groupBy', 'getComplianceSummary_groupBy' - Specifies a list of attributes to group the counts of noncompliant
-- resources by. If supplied, the counts are sorted by those attributes.
--
-- 'resourceTypeFilters', 'getComplianceSummary_resourceTypeFilters' - Specifies that you want the response to include information for only
-- resources of the specified types. The format of each resource type is
-- @service[:resourceType]@. For example, specifying a resource type of
-- @ec2@ returns all Amazon EC2 resources (which includes EC2 instances).
-- Specifying a resource type of @ec2:instance@ returns only EC2 instances.
--
-- The string for each service name and resource type is the same as that
-- embedded in a resource\'s Amazon Resource Name (ARN). Consult the /AWS
-- General Reference/ for the following:
--
-- -   For a list of service name strings, see
--     <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces AWS Service Namespaces>.
--
-- -   For resource type strings, see
--     <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arns-syntax Example ARNs>.
--
-- -   For more information about ARNs, see
--     <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and AWS Service Namespaces>.
--
-- You can specify multiple resource types by using a comma separated
-- array. The array can include up to 100 items. Note that the length
-- constraint requirement applies to each resource type filter.
--
-- 'tagKeyFilters', 'getComplianceSummary_tagKeyFilters' - Specifies that you want the response to include information for only
-- resources that have tags with the specified tag keys. If you use this
-- parameter, the count of returned noncompliant resources includes only
-- resources that have the specified tag keys.
newGetComplianceSummary ::
  GetComplianceSummary
newGetComplianceSummary =
  GetComplianceSummary'
    { maxResults = Prelude.Nothing,
      regionFilters = Prelude.Nothing,
      targetIdFilters = Prelude.Nothing,
      paginationToken = Prelude.Nothing,
      groupBy = Prelude.Nothing,
      resourceTypeFilters = Prelude.Nothing,
      tagKeyFilters = Prelude.Nothing
    }

-- | Specifies the maximum number of results to be returned in each page. A
-- query can return fewer than this maximum, even if there are more results
-- still to return. You should always check the @PaginationToken@ response
-- value to see if there are more results. You can specify a minimum of 1
-- and a maximum value of 100.
getComplianceSummary_maxResults :: Lens.Lens' GetComplianceSummary (Prelude.Maybe Prelude.Natural)
getComplianceSummary_maxResults = Lens.lens (\GetComplianceSummary' {maxResults} -> maxResults) (\s@GetComplianceSummary' {} a -> s {maxResults = a} :: GetComplianceSummary)

-- | Specifies a list of AWS Regions to limit the output by. If you use this
-- parameter, the count of returned noncompliant resources includes only
-- resources in the specified Regions.
getComplianceSummary_regionFilters :: Lens.Lens' GetComplianceSummary (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
getComplianceSummary_regionFilters = Lens.lens (\GetComplianceSummary' {regionFilters} -> regionFilters) (\s@GetComplianceSummary' {} a -> s {regionFilters = a} :: GetComplianceSummary) Prelude.. Lens.mapping Prelude._Coerce

-- | Specifies target identifiers (usually, specific account IDs) to limit
-- the output by. If you use this parameter, the count of returned
-- noncompliant resources includes only resources with the specified target
-- IDs.
getComplianceSummary_targetIdFilters :: Lens.Lens' GetComplianceSummary (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
getComplianceSummary_targetIdFilters = Lens.lens (\GetComplianceSummary' {targetIdFilters} -> targetIdFilters) (\s@GetComplianceSummary' {} a -> s {targetIdFilters = a} :: GetComplianceSummary) Prelude.. Lens.mapping Prelude._Coerce

-- | Specifies a @PaginationToken@ response value from a previous request to
-- indicate that you want the next page of results. Leave this parameter
-- empty in your initial request.
getComplianceSummary_paginationToken :: Lens.Lens' GetComplianceSummary (Prelude.Maybe Prelude.Text)
getComplianceSummary_paginationToken = Lens.lens (\GetComplianceSummary' {paginationToken} -> paginationToken) (\s@GetComplianceSummary' {} a -> s {paginationToken = a} :: GetComplianceSummary)

-- | Specifies a list of attributes to group the counts of noncompliant
-- resources by. If supplied, the counts are sorted by those attributes.
getComplianceSummary_groupBy :: Lens.Lens' GetComplianceSummary (Prelude.Maybe [GroupByAttribute])
getComplianceSummary_groupBy = Lens.lens (\GetComplianceSummary' {groupBy} -> groupBy) (\s@GetComplianceSummary' {} a -> s {groupBy = a} :: GetComplianceSummary) Prelude.. Lens.mapping Prelude._Coerce

-- | Specifies that you want the response to include information for only
-- resources of the specified types. The format of each resource type is
-- @service[:resourceType]@. For example, specifying a resource type of
-- @ec2@ returns all Amazon EC2 resources (which includes EC2 instances).
-- Specifying a resource type of @ec2:instance@ returns only EC2 instances.
--
-- The string for each service name and resource type is the same as that
-- embedded in a resource\'s Amazon Resource Name (ARN). Consult the /AWS
-- General Reference/ for the following:
--
-- -   For a list of service name strings, see
--     <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces AWS Service Namespaces>.
--
-- -   For resource type strings, see
--     <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arns-syntax Example ARNs>.
--
-- -   For more information about ARNs, see
--     <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs) and AWS Service Namespaces>.
--
-- You can specify multiple resource types by using a comma separated
-- array. The array can include up to 100 items. Note that the length
-- constraint requirement applies to each resource type filter.
getComplianceSummary_resourceTypeFilters :: Lens.Lens' GetComplianceSummary (Prelude.Maybe [Prelude.Text])
getComplianceSummary_resourceTypeFilters = Lens.lens (\GetComplianceSummary' {resourceTypeFilters} -> resourceTypeFilters) (\s@GetComplianceSummary' {} a -> s {resourceTypeFilters = a} :: GetComplianceSummary) Prelude.. Lens.mapping Prelude._Coerce

-- | Specifies that you want the response to include information for only
-- resources that have tags with the specified tag keys. If you use this
-- parameter, the count of returned noncompliant resources includes only
-- resources that have the specified tag keys.
getComplianceSummary_tagKeyFilters :: Lens.Lens' GetComplianceSummary (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
getComplianceSummary_tagKeyFilters = Lens.lens (\GetComplianceSummary' {tagKeyFilters} -> tagKeyFilters) (\s@GetComplianceSummary' {} a -> s {tagKeyFilters = a} :: GetComplianceSummary) Prelude.. Lens.mapping Prelude._Coerce

instance Pager.AWSPager GetComplianceSummary where
  page rq rs
    | Pager.stop
        ( rs
            Lens.^? getComplianceSummaryResponse_paginationToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Pager.stop
        ( rs
            Lens.^? getComplianceSummaryResponse_summaryList
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Lens.& getComplianceSummary_paginationToken
          Lens..~ rs
          Lens.^? getComplianceSummaryResponse_paginationToken
            Prelude.. Lens._Just

instance Prelude.AWSRequest GetComplianceSummary where
  type
    Rs GetComplianceSummary =
      GetComplianceSummaryResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetComplianceSummaryResponse'
            Prelude.<$> (x Prelude..?> "PaginationToken")
            Prelude.<*> ( x Prelude..?> "SummaryList"
                            Prelude..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetComplianceSummary

instance Prelude.NFData GetComplianceSummary

instance Prelude.ToHeaders GetComplianceSummary where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "ResourceGroupsTaggingAPI_20170126.GetComplianceSummary" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON GetComplianceSummary where
  toJSON GetComplianceSummary' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("MaxResults" Prelude..=) Prelude.<$> maxResults,
            ("RegionFilters" Prelude..=)
              Prelude.<$> regionFilters,
            ("TargetIdFilters" Prelude..=)
              Prelude.<$> targetIdFilters,
            ("PaginationToken" Prelude..=)
              Prelude.<$> paginationToken,
            ("GroupBy" Prelude..=) Prelude.<$> groupBy,
            ("ResourceTypeFilters" Prelude..=)
              Prelude.<$> resourceTypeFilters,
            ("TagKeyFilters" Prelude..=)
              Prelude.<$> tagKeyFilters
          ]
      )

instance Prelude.ToPath GetComplianceSummary where
  toPath = Prelude.const "/"

instance Prelude.ToQuery GetComplianceSummary where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetComplianceSummaryResponse' smart constructor.
data GetComplianceSummaryResponse = GetComplianceSummaryResponse'
  { -- | A string that indicates that there is more data available than this
    -- response contains. To receive the next part of the response, specify
    -- this response value as the @PaginationToken@ value in the request for
    -- the next page.
    paginationToken :: Prelude.Maybe Prelude.Text,
    -- | A table that shows counts of noncompliant resources.
    summaryList :: Prelude.Maybe [Summary],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'GetComplianceSummaryResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'paginationToken', 'getComplianceSummaryResponse_paginationToken' - A string that indicates that there is more data available than this
-- response contains. To receive the next part of the response, specify
-- this response value as the @PaginationToken@ value in the request for
-- the next page.
--
-- 'summaryList', 'getComplianceSummaryResponse_summaryList' - A table that shows counts of noncompliant resources.
--
-- 'httpStatus', 'getComplianceSummaryResponse_httpStatus' - The response's http status code.
newGetComplianceSummaryResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetComplianceSummaryResponse
newGetComplianceSummaryResponse pHttpStatus_ =
  GetComplianceSummaryResponse'
    { paginationToken =
        Prelude.Nothing,
      summaryList = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A string that indicates that there is more data available than this
-- response contains. To receive the next part of the response, specify
-- this response value as the @PaginationToken@ value in the request for
-- the next page.
getComplianceSummaryResponse_paginationToken :: Lens.Lens' GetComplianceSummaryResponse (Prelude.Maybe Prelude.Text)
getComplianceSummaryResponse_paginationToken = Lens.lens (\GetComplianceSummaryResponse' {paginationToken} -> paginationToken) (\s@GetComplianceSummaryResponse' {} a -> s {paginationToken = a} :: GetComplianceSummaryResponse)

-- | A table that shows counts of noncompliant resources.
getComplianceSummaryResponse_summaryList :: Lens.Lens' GetComplianceSummaryResponse (Prelude.Maybe [Summary])
getComplianceSummaryResponse_summaryList = Lens.lens (\GetComplianceSummaryResponse' {summaryList} -> summaryList) (\s@GetComplianceSummaryResponse' {} a -> s {summaryList = a} :: GetComplianceSummaryResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | The response's http status code.
getComplianceSummaryResponse_httpStatus :: Lens.Lens' GetComplianceSummaryResponse Prelude.Int
getComplianceSummaryResponse_httpStatus = Lens.lens (\GetComplianceSummaryResponse' {httpStatus} -> httpStatus) (\s@GetComplianceSummaryResponse' {} a -> s {httpStatus = a} :: GetComplianceSummaryResponse)

instance Prelude.NFData GetComplianceSummaryResponse
