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
-- Module      : Network.AWS.WAFRegional.CreateGeoMatchSet
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
-- Creates an GeoMatchSet, which you use to specify which web requests you
-- want to allow or block based on the country that the requests originate
-- from. For example, if you\'re receiving a lot of requests from one or
-- more countries and you want to block the requests, you can create an
-- @GeoMatchSet@ that contains those countries and then configure AWS WAF
-- to block the requests.
--
-- To create and configure a @GeoMatchSet@, perform the following steps:
--
-- 1.  Use GetChangeToken to get the change token that you provide in the
--     @ChangeToken@ parameter of a @CreateGeoMatchSet@ request.
--
-- 2.  Submit a @CreateGeoMatchSet@ request.
--
-- 3.  Use @GetChangeToken@ to get the change token that you provide in the
--     @ChangeToken@ parameter of an UpdateGeoMatchSet request.
--
-- 4.  Submit an @UpdateGeoMatchSetSet@ request to specify the countries
--     that you want AWS WAF to watch for.
--
-- For more information about how to use the AWS WAF API to allow or block
-- HTTP requests, see the
-- <https://docs.aws.amazon.com/waf/latest/developerguide/ AWS WAF Developer Guide>.
module Network.AWS.WAFRegional.CreateGeoMatchSet
  ( -- * Creating a Request
    CreateGeoMatchSet (..),
    newCreateGeoMatchSet,

    -- * Request Lenses
    createGeoMatchSet_name,
    createGeoMatchSet_changeToken,

    -- * Destructuring the Response
    CreateGeoMatchSetResponse (..),
    newCreateGeoMatchSetResponse,

    -- * Response Lenses
    createGeoMatchSetResponse_geoMatchSet,
    createGeoMatchSetResponse_changeToken,
    createGeoMatchSetResponse_httpStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.WAFRegional.Types

-- | /See:/ 'newCreateGeoMatchSet' smart constructor.
data CreateGeoMatchSet = CreateGeoMatchSet'
  { -- | A friendly name or description of the GeoMatchSet. You can\'t change
    -- @Name@ after you create the @GeoMatchSet@.
    name :: Prelude.Text,
    -- | The value returned by the most recent call to GetChangeToken.
    changeToken :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'CreateGeoMatchSet' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'createGeoMatchSet_name' - A friendly name or description of the GeoMatchSet. You can\'t change
-- @Name@ after you create the @GeoMatchSet@.
--
-- 'changeToken', 'createGeoMatchSet_changeToken' - The value returned by the most recent call to GetChangeToken.
newCreateGeoMatchSet ::
  -- | 'name'
  Prelude.Text ->
  -- | 'changeToken'
  Prelude.Text ->
  CreateGeoMatchSet
newCreateGeoMatchSet pName_ pChangeToken_ =
  CreateGeoMatchSet'
    { name = pName_,
      changeToken = pChangeToken_
    }

-- | A friendly name or description of the GeoMatchSet. You can\'t change
-- @Name@ after you create the @GeoMatchSet@.
createGeoMatchSet_name :: Lens.Lens' CreateGeoMatchSet Prelude.Text
createGeoMatchSet_name = Lens.lens (\CreateGeoMatchSet' {name} -> name) (\s@CreateGeoMatchSet' {} a -> s {name = a} :: CreateGeoMatchSet)

-- | The value returned by the most recent call to GetChangeToken.
createGeoMatchSet_changeToken :: Lens.Lens' CreateGeoMatchSet Prelude.Text
createGeoMatchSet_changeToken = Lens.lens (\CreateGeoMatchSet' {changeToken} -> changeToken) (\s@CreateGeoMatchSet' {} a -> s {changeToken = a} :: CreateGeoMatchSet)

instance Prelude.AWSRequest CreateGeoMatchSet where
  type Rs CreateGeoMatchSet = CreateGeoMatchSetResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateGeoMatchSetResponse'
            Prelude.<$> (x Prelude..?> "GeoMatchSet")
            Prelude.<*> (x Prelude..?> "ChangeToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateGeoMatchSet

instance Prelude.NFData CreateGeoMatchSet

instance Prelude.ToHeaders CreateGeoMatchSet where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "AWSWAF_Regional_20161128.CreateGeoMatchSet" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON CreateGeoMatchSet where
  toJSON CreateGeoMatchSet' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ Prelude.Just ("Name" Prelude..= name),
            Prelude.Just ("ChangeToken" Prelude..= changeToken)
          ]
      )

instance Prelude.ToPath CreateGeoMatchSet where
  toPath = Prelude.const "/"

instance Prelude.ToQuery CreateGeoMatchSet where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateGeoMatchSetResponse' smart constructor.
data CreateGeoMatchSetResponse = CreateGeoMatchSetResponse'
  { -- | The GeoMatchSet returned in the @CreateGeoMatchSet@ response. The
    -- @GeoMatchSet@ contains no @GeoMatchConstraints@.
    geoMatchSet :: Prelude.Maybe GeoMatchSet,
    -- | The @ChangeToken@ that you used to submit the @CreateGeoMatchSet@
    -- request. You can also use this value to query the status of the request.
    -- For more information, see GetChangeTokenStatus.
    changeToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'CreateGeoMatchSetResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'geoMatchSet', 'createGeoMatchSetResponse_geoMatchSet' - The GeoMatchSet returned in the @CreateGeoMatchSet@ response. The
-- @GeoMatchSet@ contains no @GeoMatchConstraints@.
--
-- 'changeToken', 'createGeoMatchSetResponse_changeToken' - The @ChangeToken@ that you used to submit the @CreateGeoMatchSet@
-- request. You can also use this value to query the status of the request.
-- For more information, see GetChangeTokenStatus.
--
-- 'httpStatus', 'createGeoMatchSetResponse_httpStatus' - The response's http status code.
newCreateGeoMatchSetResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateGeoMatchSetResponse
newCreateGeoMatchSetResponse pHttpStatus_ =
  CreateGeoMatchSetResponse'
    { geoMatchSet =
        Prelude.Nothing,
      changeToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The GeoMatchSet returned in the @CreateGeoMatchSet@ response. The
-- @GeoMatchSet@ contains no @GeoMatchConstraints@.
createGeoMatchSetResponse_geoMatchSet :: Lens.Lens' CreateGeoMatchSetResponse (Prelude.Maybe GeoMatchSet)
createGeoMatchSetResponse_geoMatchSet = Lens.lens (\CreateGeoMatchSetResponse' {geoMatchSet} -> geoMatchSet) (\s@CreateGeoMatchSetResponse' {} a -> s {geoMatchSet = a} :: CreateGeoMatchSetResponse)

-- | The @ChangeToken@ that you used to submit the @CreateGeoMatchSet@
-- request. You can also use this value to query the status of the request.
-- For more information, see GetChangeTokenStatus.
createGeoMatchSetResponse_changeToken :: Lens.Lens' CreateGeoMatchSetResponse (Prelude.Maybe Prelude.Text)
createGeoMatchSetResponse_changeToken = Lens.lens (\CreateGeoMatchSetResponse' {changeToken} -> changeToken) (\s@CreateGeoMatchSetResponse' {} a -> s {changeToken = a} :: CreateGeoMatchSetResponse)

-- | The response's http status code.
createGeoMatchSetResponse_httpStatus :: Lens.Lens' CreateGeoMatchSetResponse Prelude.Int
createGeoMatchSetResponse_httpStatus = Lens.lens (\CreateGeoMatchSetResponse' {httpStatus} -> httpStatus) (\s@CreateGeoMatchSetResponse' {} a -> s {httpStatus = a} :: CreateGeoMatchSetResponse)

instance Prelude.NFData CreateGeoMatchSetResponse
