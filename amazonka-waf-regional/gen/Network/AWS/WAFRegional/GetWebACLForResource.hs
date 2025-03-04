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
-- Module      : Network.AWS.WAFRegional.GetWebACLForResource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This is __AWS WAF Classic Regional__ documentation. For more
-- information, see
-- <https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html AWS WAF Classic>
-- in the developer guide.
--
-- __For the latest version of AWS WAF__, use the AWS WAFV2 API and see the
-- <https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html AWS WAF Developer Guide>.
-- With the latest version, AWS WAF has a single set of endpoints for
-- regional and global use.
--
-- Returns the web ACL for the specified resource, either an application
-- load balancer or Amazon API Gateway stage.
module Network.AWS.WAFRegional.GetWebACLForResource
  ( -- * Creating a Request
    GetWebACLForResource (..),
    newGetWebACLForResource,

    -- * Request Lenses
    getWebACLForResource_resourceArn,

    -- * Destructuring the Response
    GetWebACLForResourceResponse (..),
    newGetWebACLForResourceResponse,

    -- * Response Lenses
    getWebACLForResourceResponse_webACLSummary,
    getWebACLForResourceResponse_httpStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.WAFRegional.Types

-- | /See:/ 'newGetWebACLForResource' smart constructor.
data GetWebACLForResource = GetWebACLForResource'
  { -- | The ARN (Amazon Resource Name) of the resource for which to get the web
    -- ACL, either an application load balancer or Amazon API Gateway stage.
    --
    -- The ARN should be in one of the following formats:
    --
    -- -   For an Application Load Balancer:
    --     @arn:aws:elasticloadbalancing:region:account-id:loadbalancer\/app\/load-balancer-name\/load-balancer-id @
    --
    -- -   For an Amazon API Gateway stage:
    --     @arn:aws:apigateway:region::\/restapis\/api-id\/stages\/stage-name @
    resourceArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'GetWebACLForResource' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resourceArn', 'getWebACLForResource_resourceArn' - The ARN (Amazon Resource Name) of the resource for which to get the web
-- ACL, either an application load balancer or Amazon API Gateway stage.
--
-- The ARN should be in one of the following formats:
--
-- -   For an Application Load Balancer:
--     @arn:aws:elasticloadbalancing:region:account-id:loadbalancer\/app\/load-balancer-name\/load-balancer-id @
--
-- -   For an Amazon API Gateway stage:
--     @arn:aws:apigateway:region::\/restapis\/api-id\/stages\/stage-name @
newGetWebACLForResource ::
  -- | 'resourceArn'
  Prelude.Text ->
  GetWebACLForResource
newGetWebACLForResource pResourceArn_ =
  GetWebACLForResource' {resourceArn = pResourceArn_}

-- | The ARN (Amazon Resource Name) of the resource for which to get the web
-- ACL, either an application load balancer or Amazon API Gateway stage.
--
-- The ARN should be in one of the following formats:
--
-- -   For an Application Load Balancer:
--     @arn:aws:elasticloadbalancing:region:account-id:loadbalancer\/app\/load-balancer-name\/load-balancer-id @
--
-- -   For an Amazon API Gateway stage:
--     @arn:aws:apigateway:region::\/restapis\/api-id\/stages\/stage-name @
getWebACLForResource_resourceArn :: Lens.Lens' GetWebACLForResource Prelude.Text
getWebACLForResource_resourceArn = Lens.lens (\GetWebACLForResource' {resourceArn} -> resourceArn) (\s@GetWebACLForResource' {} a -> s {resourceArn = a} :: GetWebACLForResource)

instance Prelude.AWSRequest GetWebACLForResource where
  type
    Rs GetWebACLForResource =
      GetWebACLForResourceResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetWebACLForResourceResponse'
            Prelude.<$> (x Prelude..?> "WebACLSummary")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetWebACLForResource

instance Prelude.NFData GetWebACLForResource

instance Prelude.ToHeaders GetWebACLForResource where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "AWSWAF_Regional_20161128.GetWebACLForResource" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON GetWebACLForResource where
  toJSON GetWebACLForResource' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("ResourceArn" Prelude..= resourceArn)
          ]
      )

instance Prelude.ToPath GetWebACLForResource where
  toPath = Prelude.const "/"

instance Prelude.ToQuery GetWebACLForResource where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetWebACLForResourceResponse' smart constructor.
data GetWebACLForResourceResponse = GetWebACLForResourceResponse'
  { -- | Information about the web ACL that you specified in the
    -- @GetWebACLForResource@ request. If there is no associated resource, a
    -- null WebACLSummary is returned.
    webACLSummary :: Prelude.Maybe WebACLSummary,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'GetWebACLForResourceResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'webACLSummary', 'getWebACLForResourceResponse_webACLSummary' - Information about the web ACL that you specified in the
-- @GetWebACLForResource@ request. If there is no associated resource, a
-- null WebACLSummary is returned.
--
-- 'httpStatus', 'getWebACLForResourceResponse_httpStatus' - The response's http status code.
newGetWebACLForResourceResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetWebACLForResourceResponse
newGetWebACLForResourceResponse pHttpStatus_ =
  GetWebACLForResourceResponse'
    { webACLSummary =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Information about the web ACL that you specified in the
-- @GetWebACLForResource@ request. If there is no associated resource, a
-- null WebACLSummary is returned.
getWebACLForResourceResponse_webACLSummary :: Lens.Lens' GetWebACLForResourceResponse (Prelude.Maybe WebACLSummary)
getWebACLForResourceResponse_webACLSummary = Lens.lens (\GetWebACLForResourceResponse' {webACLSummary} -> webACLSummary) (\s@GetWebACLForResourceResponse' {} a -> s {webACLSummary = a} :: GetWebACLForResourceResponse)

-- | The response's http status code.
getWebACLForResourceResponse_httpStatus :: Lens.Lens' GetWebACLForResourceResponse Prelude.Int
getWebACLForResourceResponse_httpStatus = Lens.lens (\GetWebACLForResourceResponse' {httpStatus} -> httpStatus) (\s@GetWebACLForResourceResponse' {} a -> s {httpStatus = a} :: GetWebACLForResourceResponse)

instance Prelude.NFData GetWebACLForResourceResponse
