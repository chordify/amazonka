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
-- Module      : Network.AWS.CertificateManagerPCA.ListPermissions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all permissions on a private CA, if any, granted to the AWS
-- Certificate Manager (ACM) service principal (acm.amazonaws.com).
--
-- These permissions allow ACM to issue and renew ACM certificates that
-- reside in the same AWS account as the CA.
--
-- Permissions can be granted with the
-- <https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreatePermission.html CreatePermission>
-- action and revoked with the
-- <https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_DeletePermission.html DeletePermission>
-- action.
--
-- __About Permissions__
--
-- -   If the private CA and the certificates it issues reside in the same
--     account, you can use @CreatePermission@ to grant permissions for ACM
--     to carry out automatic certificate renewals.
--
-- -   For automatic certificate renewal to succeed, the ACM service
--     principal needs permissions to create, retrieve, and list
--     certificates.
--
-- -   If the private CA and the ACM certificates reside in different
--     accounts, then permissions cannot be used to enable automatic
--     renewals. Instead, the ACM certificate owner must set up a
--     resource-based policy to enable cross-account issuance and renewals.
--     For more information, see
--     <https://docs.aws.amazon.com/acm-pca/latest/userguide/pca-rbp.html Using a Resource Based Policy with ACM Private CA>.
--
-- This operation returns paginated results.
module Network.AWS.CertificateManagerPCA.ListPermissions
  ( -- * Creating a Request
    ListPermissions (..),
    newListPermissions,

    -- * Request Lenses
    listPermissions_nextToken,
    listPermissions_maxResults,
    listPermissions_certificateAuthorityArn,

    -- * Destructuring the Response
    ListPermissionsResponse (..),
    newListPermissionsResponse,

    -- * Response Lenses
    listPermissionsResponse_nextToken,
    listPermissionsResponse_permissions,
    listPermissionsResponse_httpStatus,
  )
where

import Network.AWS.CertificateManagerPCA.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListPermissions' smart constructor.
data ListPermissions = ListPermissions'
  { -- | When paginating results, use this parameter in a subsequent request
    -- after you receive a response with truncated results. Set it to the value
    -- of __NextToken__ from the response you just received.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | When paginating results, use this parameter to specify the maximum
    -- number of items to return in the response. If additional items exist
    -- beyond the number you specify, the __NextToken__ element is sent in the
    -- response. Use this __NextToken__ value in a subsequent request to
    -- retrieve additional items.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The Amazon Resource Number (ARN) of the private CA to inspect. You can
    -- find the ARN by calling the
    -- <https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ListCertificateAuthorities.html ListCertificateAuthorities>
    -- action. This must be of the form:
    -- @arn:aws:acm-pca:region:account:certificate-authority\/12345678-1234-1234-1234-123456789012@
    -- You can get a private CA\'s ARN by running the
    -- <https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ListCertificateAuthorities.html ListCertificateAuthorities>
    -- action.
    certificateAuthorityArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'ListPermissions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listPermissions_nextToken' - When paginating results, use this parameter in a subsequent request
-- after you receive a response with truncated results. Set it to the value
-- of __NextToken__ from the response you just received.
--
-- 'maxResults', 'listPermissions_maxResults' - When paginating results, use this parameter to specify the maximum
-- number of items to return in the response. If additional items exist
-- beyond the number you specify, the __NextToken__ element is sent in the
-- response. Use this __NextToken__ value in a subsequent request to
-- retrieve additional items.
--
-- 'certificateAuthorityArn', 'listPermissions_certificateAuthorityArn' - The Amazon Resource Number (ARN) of the private CA to inspect. You can
-- find the ARN by calling the
-- <https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ListCertificateAuthorities.html ListCertificateAuthorities>
-- action. This must be of the form:
-- @arn:aws:acm-pca:region:account:certificate-authority\/12345678-1234-1234-1234-123456789012@
-- You can get a private CA\'s ARN by running the
-- <https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ListCertificateAuthorities.html ListCertificateAuthorities>
-- action.
newListPermissions ::
  -- | 'certificateAuthorityArn'
  Prelude.Text ->
  ListPermissions
newListPermissions pCertificateAuthorityArn_ =
  ListPermissions'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      certificateAuthorityArn = pCertificateAuthorityArn_
    }

-- | When paginating results, use this parameter in a subsequent request
-- after you receive a response with truncated results. Set it to the value
-- of __NextToken__ from the response you just received.
listPermissions_nextToken :: Lens.Lens' ListPermissions (Prelude.Maybe Prelude.Text)
listPermissions_nextToken = Lens.lens (\ListPermissions' {nextToken} -> nextToken) (\s@ListPermissions' {} a -> s {nextToken = a} :: ListPermissions)

-- | When paginating results, use this parameter to specify the maximum
-- number of items to return in the response. If additional items exist
-- beyond the number you specify, the __NextToken__ element is sent in the
-- response. Use this __NextToken__ value in a subsequent request to
-- retrieve additional items.
listPermissions_maxResults :: Lens.Lens' ListPermissions (Prelude.Maybe Prelude.Natural)
listPermissions_maxResults = Lens.lens (\ListPermissions' {maxResults} -> maxResults) (\s@ListPermissions' {} a -> s {maxResults = a} :: ListPermissions)

-- | The Amazon Resource Number (ARN) of the private CA to inspect. You can
-- find the ARN by calling the
-- <https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ListCertificateAuthorities.html ListCertificateAuthorities>
-- action. This must be of the form:
-- @arn:aws:acm-pca:region:account:certificate-authority\/12345678-1234-1234-1234-123456789012@
-- You can get a private CA\'s ARN by running the
-- <https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ListCertificateAuthorities.html ListCertificateAuthorities>
-- action.
listPermissions_certificateAuthorityArn :: Lens.Lens' ListPermissions Prelude.Text
listPermissions_certificateAuthorityArn = Lens.lens (\ListPermissions' {certificateAuthorityArn} -> certificateAuthorityArn) (\s@ListPermissions' {} a -> s {certificateAuthorityArn = a} :: ListPermissions)

instance Pager.AWSPager ListPermissions where
  page rq rs
    | Pager.stop
        ( rs
            Lens.^? listPermissionsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Pager.stop
        ( rs
            Lens.^? listPermissionsResponse_permissions
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Lens.& listPermissions_nextToken
          Lens..~ rs
          Lens.^? listPermissionsResponse_nextToken
            Prelude.. Lens._Just

instance Prelude.AWSRequest ListPermissions where
  type Rs ListPermissions = ListPermissionsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListPermissionsResponse'
            Prelude.<$> (x Prelude..?> "NextToken")
            Prelude.<*> ( x Prelude..?> "Permissions"
                            Prelude..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListPermissions

instance Prelude.NFData ListPermissions

instance Prelude.ToHeaders ListPermissions where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "ACMPrivateCA.ListPermissions" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON ListPermissions where
  toJSON ListPermissions' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("NextToken" Prelude..=) Prelude.<$> nextToken,
            ("MaxResults" Prelude..=) Prelude.<$> maxResults,
            Prelude.Just
              ( "CertificateAuthorityArn"
                  Prelude..= certificateAuthorityArn
              )
          ]
      )

instance Prelude.ToPath ListPermissions where
  toPath = Prelude.const "/"

instance Prelude.ToQuery ListPermissions where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListPermissionsResponse' smart constructor.
data ListPermissionsResponse = ListPermissionsResponse'
  { -- | When the list is truncated, this value is present and should be used for
    -- the __NextToken__ parameter in a subsequent pagination request.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Summary information about each permission assigned by the specified
    -- private CA, including the action enabled, the policy provided, and the
    -- time of creation.
    permissions :: Prelude.Maybe [Permission],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'ListPermissionsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listPermissionsResponse_nextToken' - When the list is truncated, this value is present and should be used for
-- the __NextToken__ parameter in a subsequent pagination request.
--
-- 'permissions', 'listPermissionsResponse_permissions' - Summary information about each permission assigned by the specified
-- private CA, including the action enabled, the policy provided, and the
-- time of creation.
--
-- 'httpStatus', 'listPermissionsResponse_httpStatus' - The response's http status code.
newListPermissionsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListPermissionsResponse
newListPermissionsResponse pHttpStatus_ =
  ListPermissionsResponse'
    { nextToken =
        Prelude.Nothing,
      permissions = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | When the list is truncated, this value is present and should be used for
-- the __NextToken__ parameter in a subsequent pagination request.
listPermissionsResponse_nextToken :: Lens.Lens' ListPermissionsResponse (Prelude.Maybe Prelude.Text)
listPermissionsResponse_nextToken = Lens.lens (\ListPermissionsResponse' {nextToken} -> nextToken) (\s@ListPermissionsResponse' {} a -> s {nextToken = a} :: ListPermissionsResponse)

-- | Summary information about each permission assigned by the specified
-- private CA, including the action enabled, the policy provided, and the
-- time of creation.
listPermissionsResponse_permissions :: Lens.Lens' ListPermissionsResponse (Prelude.Maybe [Permission])
listPermissionsResponse_permissions = Lens.lens (\ListPermissionsResponse' {permissions} -> permissions) (\s@ListPermissionsResponse' {} a -> s {permissions = a} :: ListPermissionsResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | The response's http status code.
listPermissionsResponse_httpStatus :: Lens.Lens' ListPermissionsResponse Prelude.Int
listPermissionsResponse_httpStatus = Lens.lens (\ListPermissionsResponse' {httpStatus} -> httpStatus) (\s@ListPermissionsResponse' {} a -> s {httpStatus = a} :: ListPermissionsResponse)

instance Prelude.NFData ListPermissionsResponse
