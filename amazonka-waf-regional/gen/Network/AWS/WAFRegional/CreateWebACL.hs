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
-- Module      : Network.AWS.WAFRegional.CreateWebACL
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This is __AWS WAF Classic__ documentation. For more information, see
-- <https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html AWS WAF Classic>
-- in the developer guide.
--
-- __For the latest version of AWS WAF__, use the AWS WAFV2 API and see the
-- <https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html AWS WAF Developer Guide>.
-- With the latest version, AWS WAF has a single set of endpoints for
-- regional and global use.
--
-- Creates a @WebACL@, which contains the @Rules@ that identify the
-- CloudFront web requests that you want to allow, block, or count. AWS WAF
-- evaluates @Rules@ in order based on the value of @Priority@ for each
-- @Rule@.
--
-- You also specify a default action, either @ALLOW@ or @BLOCK@. If a web
-- request doesn\'t match any of the @Rules@ in a @WebACL@, AWS WAF
-- responds to the request with the default action.
--
-- To create and configure a @WebACL@, perform the following steps:
--
-- 1.  Create and update the @ByteMatchSet@ objects and other predicates
--     that you want to include in @Rules@. For more information, see
--     CreateByteMatchSet, UpdateByteMatchSet, CreateIPSet, UpdateIPSet,
--     CreateSqlInjectionMatchSet, and UpdateSqlInjectionMatchSet.
--
-- 2.  Create and update the @Rules@ that you want to include in the
--     @WebACL@. For more information, see CreateRule and UpdateRule.
--
-- 3.  Use GetChangeToken to get the change token that you provide in the
--     @ChangeToken@ parameter of a @CreateWebACL@ request.
--
-- 4.  Submit a @CreateWebACL@ request.
--
-- 5.  Use @GetChangeToken@ to get the change token that you provide in the
--     @ChangeToken@ parameter of an UpdateWebACL request.
--
-- 6.  Submit an UpdateWebACL request to specify the @Rules@ that you want
--     to include in the @WebACL@, to specify the default action, and to
--     associate the @WebACL@ with a CloudFront distribution.
--
-- For more information about how to use the AWS WAF API, see the
-- <https://docs.aws.amazon.com/waf/latest/developerguide/ AWS WAF Developer Guide>.
module Network.AWS.WAFRegional.CreateWebACL
  ( -- * Creating a Request
    CreateWebACL (..),
    newCreateWebACL,

    -- * Request Lenses
    createWebACL_tags,
    createWebACL_name,
    createWebACL_metricName,
    createWebACL_defaultAction,
    createWebACL_changeToken,

    -- * Destructuring the Response
    CreateWebACLResponse (..),
    newCreateWebACLResponse,

    -- * Response Lenses
    createWebACLResponse_webACL,
    createWebACLResponse_changeToken,
    createWebACLResponse_httpStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.WAFRegional.Types

-- | /See:/ 'newCreateWebACL' smart constructor.
data CreateWebACL = CreateWebACL'
  { tags :: Prelude.Maybe (Prelude.NonEmpty Tag),
    -- | A friendly name or description of the WebACL. You can\'t change @Name@
    -- after you create the @WebACL@.
    name :: Prelude.Text,
    -- | A friendly name or description for the metrics for this @WebACL@.The
    -- name can contain only alphanumeric characters (A-Z, a-z, 0-9), with
    -- maximum length 128 and minimum length one. It can\'t contain whitespace
    -- or metric names reserved for AWS WAF, including \"All\" and
    -- \"Default_Action.\" You can\'t change @MetricName@ after you create the
    -- @WebACL@.
    metricName :: Prelude.Text,
    -- | The action that you want AWS WAF to take when a request doesn\'t match
    -- the criteria specified in any of the @Rule@ objects that are associated
    -- with the @WebACL@.
    defaultAction :: WafAction,
    -- | The value returned by the most recent call to GetChangeToken.
    changeToken :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'CreateWebACL' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createWebACL_tags' -
--
-- 'name', 'createWebACL_name' - A friendly name or description of the WebACL. You can\'t change @Name@
-- after you create the @WebACL@.
--
-- 'metricName', 'createWebACL_metricName' - A friendly name or description for the metrics for this @WebACL@.The
-- name can contain only alphanumeric characters (A-Z, a-z, 0-9), with
-- maximum length 128 and minimum length one. It can\'t contain whitespace
-- or metric names reserved for AWS WAF, including \"All\" and
-- \"Default_Action.\" You can\'t change @MetricName@ after you create the
-- @WebACL@.
--
-- 'defaultAction', 'createWebACL_defaultAction' - The action that you want AWS WAF to take when a request doesn\'t match
-- the criteria specified in any of the @Rule@ objects that are associated
-- with the @WebACL@.
--
-- 'changeToken', 'createWebACL_changeToken' - The value returned by the most recent call to GetChangeToken.
newCreateWebACL ::
  -- | 'name'
  Prelude.Text ->
  -- | 'metricName'
  Prelude.Text ->
  -- | 'defaultAction'
  WafAction ->
  -- | 'changeToken'
  Prelude.Text ->
  CreateWebACL
newCreateWebACL
  pName_
  pMetricName_
  pDefaultAction_
  pChangeToken_ =
    CreateWebACL'
      { tags = Prelude.Nothing,
        name = pName_,
        metricName = pMetricName_,
        defaultAction = pDefaultAction_,
        changeToken = pChangeToken_
      }

-- |
createWebACL_tags :: Lens.Lens' CreateWebACL (Prelude.Maybe (Prelude.NonEmpty Tag))
createWebACL_tags = Lens.lens (\CreateWebACL' {tags} -> tags) (\s@CreateWebACL' {} a -> s {tags = a} :: CreateWebACL) Prelude.. Lens.mapping Prelude._Coerce

-- | A friendly name or description of the WebACL. You can\'t change @Name@
-- after you create the @WebACL@.
createWebACL_name :: Lens.Lens' CreateWebACL Prelude.Text
createWebACL_name = Lens.lens (\CreateWebACL' {name} -> name) (\s@CreateWebACL' {} a -> s {name = a} :: CreateWebACL)

-- | A friendly name or description for the metrics for this @WebACL@.The
-- name can contain only alphanumeric characters (A-Z, a-z, 0-9), with
-- maximum length 128 and minimum length one. It can\'t contain whitespace
-- or metric names reserved for AWS WAF, including \"All\" and
-- \"Default_Action.\" You can\'t change @MetricName@ after you create the
-- @WebACL@.
createWebACL_metricName :: Lens.Lens' CreateWebACL Prelude.Text
createWebACL_metricName = Lens.lens (\CreateWebACL' {metricName} -> metricName) (\s@CreateWebACL' {} a -> s {metricName = a} :: CreateWebACL)

-- | The action that you want AWS WAF to take when a request doesn\'t match
-- the criteria specified in any of the @Rule@ objects that are associated
-- with the @WebACL@.
createWebACL_defaultAction :: Lens.Lens' CreateWebACL WafAction
createWebACL_defaultAction = Lens.lens (\CreateWebACL' {defaultAction} -> defaultAction) (\s@CreateWebACL' {} a -> s {defaultAction = a} :: CreateWebACL)

-- | The value returned by the most recent call to GetChangeToken.
createWebACL_changeToken :: Lens.Lens' CreateWebACL Prelude.Text
createWebACL_changeToken = Lens.lens (\CreateWebACL' {changeToken} -> changeToken) (\s@CreateWebACL' {} a -> s {changeToken = a} :: CreateWebACL)

instance Prelude.AWSRequest CreateWebACL where
  type Rs CreateWebACL = CreateWebACLResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateWebACLResponse'
            Prelude.<$> (x Prelude..?> "WebACL")
            Prelude.<*> (x Prelude..?> "ChangeToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateWebACL

instance Prelude.NFData CreateWebACL

instance Prelude.ToHeaders CreateWebACL where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "AWSWAF_Regional_20161128.CreateWebACL" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON CreateWebACL where
  toJSON CreateWebACL' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("Tags" Prelude..=) Prelude.<$> tags,
            Prelude.Just ("Name" Prelude..= name),
            Prelude.Just ("MetricName" Prelude..= metricName),
            Prelude.Just
              ("DefaultAction" Prelude..= defaultAction),
            Prelude.Just ("ChangeToken" Prelude..= changeToken)
          ]
      )

instance Prelude.ToPath CreateWebACL where
  toPath = Prelude.const "/"

instance Prelude.ToQuery CreateWebACL where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateWebACLResponse' smart constructor.
data CreateWebACLResponse = CreateWebACLResponse'
  { -- | The WebACL returned in the @CreateWebACL@ response.
    webACL :: Prelude.Maybe WebACL,
    -- | The @ChangeToken@ that you used to submit the @CreateWebACL@ request.
    -- You can also use this value to query the status of the request. For more
    -- information, see GetChangeTokenStatus.
    changeToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'CreateWebACLResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'webACL', 'createWebACLResponse_webACL' - The WebACL returned in the @CreateWebACL@ response.
--
-- 'changeToken', 'createWebACLResponse_changeToken' - The @ChangeToken@ that you used to submit the @CreateWebACL@ request.
-- You can also use this value to query the status of the request. For more
-- information, see GetChangeTokenStatus.
--
-- 'httpStatus', 'createWebACLResponse_httpStatus' - The response's http status code.
newCreateWebACLResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateWebACLResponse
newCreateWebACLResponse pHttpStatus_ =
  CreateWebACLResponse'
    { webACL = Prelude.Nothing,
      changeToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The WebACL returned in the @CreateWebACL@ response.
createWebACLResponse_webACL :: Lens.Lens' CreateWebACLResponse (Prelude.Maybe WebACL)
createWebACLResponse_webACL = Lens.lens (\CreateWebACLResponse' {webACL} -> webACL) (\s@CreateWebACLResponse' {} a -> s {webACL = a} :: CreateWebACLResponse)

-- | The @ChangeToken@ that you used to submit the @CreateWebACL@ request.
-- You can also use this value to query the status of the request. For more
-- information, see GetChangeTokenStatus.
createWebACLResponse_changeToken :: Lens.Lens' CreateWebACLResponse (Prelude.Maybe Prelude.Text)
createWebACLResponse_changeToken = Lens.lens (\CreateWebACLResponse' {changeToken} -> changeToken) (\s@CreateWebACLResponse' {} a -> s {changeToken = a} :: CreateWebACLResponse)

-- | The response's http status code.
createWebACLResponse_httpStatus :: Lens.Lens' CreateWebACLResponse Prelude.Int
createWebACLResponse_httpStatus = Lens.lens (\CreateWebACLResponse' {httpStatus} -> httpStatus) (\s@CreateWebACLResponse' {} a -> s {httpStatus = a} :: CreateWebACLResponse)

instance Prelude.NFData CreateWebACLResponse
