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
-- Module      : Network.AWS.Pinpoint.GetCampaignVersions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about the status, configuration, and other
-- settings for all versions of a campaign.
module Network.AWS.Pinpoint.GetCampaignVersions
  ( -- * Creating a Request
    GetCampaignVersions (..),
    newGetCampaignVersions,

    -- * Request Lenses
    getCampaignVersions_pageSize,
    getCampaignVersions_token,
    getCampaignVersions_applicationId,
    getCampaignVersions_campaignId,

    -- * Destructuring the Response
    GetCampaignVersionsResponse (..),
    newGetCampaignVersionsResponse,

    -- * Response Lenses
    getCampaignVersionsResponse_httpStatus,
    getCampaignVersionsResponse_campaignsResponse,
  )
where

import qualified Network.AWS.Lens as Lens
import Network.AWS.Pinpoint.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetCampaignVersions' smart constructor.
data GetCampaignVersions = GetCampaignVersions'
  { -- | The maximum number of items to include in each page of a paginated
    -- response. This parameter is not supported for application, campaign, and
    -- journey metrics.
    pageSize :: Prelude.Maybe Prelude.Text,
    -- | The NextToken string that specifies which page of results to return in a
    -- paginated response.
    token :: Prelude.Maybe Prelude.Text,
    -- | The unique identifier for the application. This identifier is displayed
    -- as the __Project ID__ on the Amazon Pinpoint console.
    applicationId :: Prelude.Text,
    -- | The unique identifier for the campaign.
    campaignId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'GetCampaignVersions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'pageSize', 'getCampaignVersions_pageSize' - The maximum number of items to include in each page of a paginated
-- response. This parameter is not supported for application, campaign, and
-- journey metrics.
--
-- 'token', 'getCampaignVersions_token' - The NextToken string that specifies which page of results to return in a
-- paginated response.
--
-- 'applicationId', 'getCampaignVersions_applicationId' - The unique identifier for the application. This identifier is displayed
-- as the __Project ID__ on the Amazon Pinpoint console.
--
-- 'campaignId', 'getCampaignVersions_campaignId' - The unique identifier for the campaign.
newGetCampaignVersions ::
  -- | 'applicationId'
  Prelude.Text ->
  -- | 'campaignId'
  Prelude.Text ->
  GetCampaignVersions
newGetCampaignVersions pApplicationId_ pCampaignId_ =
  GetCampaignVersions'
    { pageSize = Prelude.Nothing,
      token = Prelude.Nothing,
      applicationId = pApplicationId_,
      campaignId = pCampaignId_
    }

-- | The maximum number of items to include in each page of a paginated
-- response. This parameter is not supported for application, campaign, and
-- journey metrics.
getCampaignVersions_pageSize :: Lens.Lens' GetCampaignVersions (Prelude.Maybe Prelude.Text)
getCampaignVersions_pageSize = Lens.lens (\GetCampaignVersions' {pageSize} -> pageSize) (\s@GetCampaignVersions' {} a -> s {pageSize = a} :: GetCampaignVersions)

-- | The NextToken string that specifies which page of results to return in a
-- paginated response.
getCampaignVersions_token :: Lens.Lens' GetCampaignVersions (Prelude.Maybe Prelude.Text)
getCampaignVersions_token = Lens.lens (\GetCampaignVersions' {token} -> token) (\s@GetCampaignVersions' {} a -> s {token = a} :: GetCampaignVersions)

-- | The unique identifier for the application. This identifier is displayed
-- as the __Project ID__ on the Amazon Pinpoint console.
getCampaignVersions_applicationId :: Lens.Lens' GetCampaignVersions Prelude.Text
getCampaignVersions_applicationId = Lens.lens (\GetCampaignVersions' {applicationId} -> applicationId) (\s@GetCampaignVersions' {} a -> s {applicationId = a} :: GetCampaignVersions)

-- | The unique identifier for the campaign.
getCampaignVersions_campaignId :: Lens.Lens' GetCampaignVersions Prelude.Text
getCampaignVersions_campaignId = Lens.lens (\GetCampaignVersions' {campaignId} -> campaignId) (\s@GetCampaignVersions' {} a -> s {campaignId = a} :: GetCampaignVersions)

instance Prelude.AWSRequest GetCampaignVersions where
  type
    Rs GetCampaignVersions =
      GetCampaignVersionsResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetCampaignVersionsResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (Prelude.eitherParseJSON x)
      )

instance Prelude.Hashable GetCampaignVersions

instance Prelude.NFData GetCampaignVersions

instance Prelude.ToHeaders GetCampaignVersions where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToPath GetCampaignVersions where
  toPath GetCampaignVersions' {..} =
    Prelude.mconcat
      [ "/v1/apps/",
        Prelude.toBS applicationId,
        "/campaigns/",
        Prelude.toBS campaignId,
        "/versions"
      ]

instance Prelude.ToQuery GetCampaignVersions where
  toQuery GetCampaignVersions' {..} =
    Prelude.mconcat
      [ "page-size" Prelude.=: pageSize,
        "token" Prelude.=: token
      ]

-- | /See:/ 'newGetCampaignVersionsResponse' smart constructor.
data GetCampaignVersionsResponse = GetCampaignVersionsResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    campaignsResponse :: CampaignsResponse
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'GetCampaignVersionsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'getCampaignVersionsResponse_httpStatus' - The response's http status code.
--
-- 'campaignsResponse', 'getCampaignVersionsResponse_campaignsResponse' - Undocumented member.
newGetCampaignVersionsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'campaignsResponse'
  CampaignsResponse ->
  GetCampaignVersionsResponse
newGetCampaignVersionsResponse
  pHttpStatus_
  pCampaignsResponse_ =
    GetCampaignVersionsResponse'
      { httpStatus =
          pHttpStatus_,
        campaignsResponse = pCampaignsResponse_
      }

-- | The response's http status code.
getCampaignVersionsResponse_httpStatus :: Lens.Lens' GetCampaignVersionsResponse Prelude.Int
getCampaignVersionsResponse_httpStatus = Lens.lens (\GetCampaignVersionsResponse' {httpStatus} -> httpStatus) (\s@GetCampaignVersionsResponse' {} a -> s {httpStatus = a} :: GetCampaignVersionsResponse)

-- | Undocumented member.
getCampaignVersionsResponse_campaignsResponse :: Lens.Lens' GetCampaignVersionsResponse CampaignsResponse
getCampaignVersionsResponse_campaignsResponse = Lens.lens (\GetCampaignVersionsResponse' {campaignsResponse} -> campaignsResponse) (\s@GetCampaignVersionsResponse' {} a -> s {campaignsResponse = a} :: GetCampaignVersionsResponse)

instance Prelude.NFData GetCampaignVersionsResponse
