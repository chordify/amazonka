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
-- Module      : Network.AWS.CertificateManagerPCA.DeleteCertificateAuthority
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a private certificate authority (CA). You must provide the
-- Amazon Resource Name (ARN) of the private CA that you want to delete.
-- You can find the ARN by calling the
-- <https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ListCertificateAuthorities.html ListCertificateAuthorities>
-- action.
--
-- Deleting a CA will invalidate other CAs and certificates below it in
-- your CA hierarchy.
--
-- Before you can delete a CA that you have created and activated, you must
-- disable it. To do this, call the
-- <https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_UpdateCertificateAuthority.html UpdateCertificateAuthority>
-- action and set the __CertificateAuthorityStatus__ parameter to
-- @DISABLED@.
--
-- Additionally, you can delete a CA if you are waiting for it to be
-- created (that is, the status of the CA is @CREATING@). You can also
-- delete it if the CA has been created but you haven\'t yet imported the
-- signed certificate into ACM Private CA (that is, the status of the CA is
-- @PENDING_CERTIFICATE@).
--
-- When you successfully call
-- <https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_DeleteCertificateAuthority.html DeleteCertificateAuthority>,
-- the CA\'s status changes to @DELETED@. However, the CA won\'t be
-- permanently deleted until the restoration period has passed. By default,
-- if you do not set the @PermanentDeletionTimeInDays@ parameter, the CA
-- remains restorable for 30 days. You can set the parameter from 7 to 30
-- days. The
-- <https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_DescribeCertificateAuthority.html DescribeCertificateAuthority>
-- action returns the time remaining in the restoration window of a private
-- CA in the @DELETED@ state. To restore an eligible CA, call the
-- <https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_RestoreCertificateAuthority.html RestoreCertificateAuthority>
-- action.
module Network.AWS.CertificateManagerPCA.DeleteCertificateAuthority
  ( -- * Creating a Request
    DeleteCertificateAuthority (..),
    newDeleteCertificateAuthority,

    -- * Request Lenses
    deleteCertificateAuthority_permanentDeletionTimeInDays,
    deleteCertificateAuthority_certificateAuthorityArn,

    -- * Destructuring the Response
    DeleteCertificateAuthorityResponse (..),
    newDeleteCertificateAuthorityResponse,
  )
where

import Network.AWS.CertificateManagerPCA.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteCertificateAuthority' smart constructor.
data DeleteCertificateAuthority = DeleteCertificateAuthority'
  { -- | The number of days to make a CA restorable after it has been deleted.
    -- This can be anywhere from 7 to 30 days, with 30 being the default.
    permanentDeletionTimeInDays :: Prelude.Maybe Prelude.Natural,
    -- | The Amazon Resource Name (ARN) that was returned when you called
    -- <https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html CreateCertificateAuthority>.
    -- This must have the following form:
    --
    -- @arn:aws:acm-pca:region:account:certificate-authority\/12345678-1234-1234-1234-123456789012 @.
    certificateAuthorityArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DeleteCertificateAuthority' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'permanentDeletionTimeInDays', 'deleteCertificateAuthority_permanentDeletionTimeInDays' - The number of days to make a CA restorable after it has been deleted.
-- This can be anywhere from 7 to 30 days, with 30 being the default.
--
-- 'certificateAuthorityArn', 'deleteCertificateAuthority_certificateAuthorityArn' - The Amazon Resource Name (ARN) that was returned when you called
-- <https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html CreateCertificateAuthority>.
-- This must have the following form:
--
-- @arn:aws:acm-pca:region:account:certificate-authority\/12345678-1234-1234-1234-123456789012 @.
newDeleteCertificateAuthority ::
  -- | 'certificateAuthorityArn'
  Prelude.Text ->
  DeleteCertificateAuthority
newDeleteCertificateAuthority
  pCertificateAuthorityArn_ =
    DeleteCertificateAuthority'
      { permanentDeletionTimeInDays =
          Prelude.Nothing,
        certificateAuthorityArn =
          pCertificateAuthorityArn_
      }

-- | The number of days to make a CA restorable after it has been deleted.
-- This can be anywhere from 7 to 30 days, with 30 being the default.
deleteCertificateAuthority_permanentDeletionTimeInDays :: Lens.Lens' DeleteCertificateAuthority (Prelude.Maybe Prelude.Natural)
deleteCertificateAuthority_permanentDeletionTimeInDays = Lens.lens (\DeleteCertificateAuthority' {permanentDeletionTimeInDays} -> permanentDeletionTimeInDays) (\s@DeleteCertificateAuthority' {} a -> s {permanentDeletionTimeInDays = a} :: DeleteCertificateAuthority)

-- | The Amazon Resource Name (ARN) that was returned when you called
-- <https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html CreateCertificateAuthority>.
-- This must have the following form:
--
-- @arn:aws:acm-pca:region:account:certificate-authority\/12345678-1234-1234-1234-123456789012 @.
deleteCertificateAuthority_certificateAuthorityArn :: Lens.Lens' DeleteCertificateAuthority Prelude.Text
deleteCertificateAuthority_certificateAuthorityArn = Lens.lens (\DeleteCertificateAuthority' {certificateAuthorityArn} -> certificateAuthorityArn) (\s@DeleteCertificateAuthority' {} a -> s {certificateAuthorityArn = a} :: DeleteCertificateAuthority)

instance
  Prelude.AWSRequest
    DeleteCertificateAuthority
  where
  type
    Rs DeleteCertificateAuthority =
      DeleteCertificateAuthorityResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveNull
      DeleteCertificateAuthorityResponse'

instance Prelude.Hashable DeleteCertificateAuthority

instance Prelude.NFData DeleteCertificateAuthority

instance Prelude.ToHeaders DeleteCertificateAuthority where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "ACMPrivateCA.DeleteCertificateAuthority" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON DeleteCertificateAuthority where
  toJSON DeleteCertificateAuthority' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("PermanentDeletionTimeInDays" Prelude..=)
              Prelude.<$> permanentDeletionTimeInDays,
            Prelude.Just
              ( "CertificateAuthorityArn"
                  Prelude..= certificateAuthorityArn
              )
          ]
      )

instance Prelude.ToPath DeleteCertificateAuthority where
  toPath = Prelude.const "/"

instance Prelude.ToQuery DeleteCertificateAuthority where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteCertificateAuthorityResponse' smart constructor.
data DeleteCertificateAuthorityResponse = DeleteCertificateAuthorityResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DeleteCertificateAuthorityResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDeleteCertificateAuthorityResponse ::
  DeleteCertificateAuthorityResponse
newDeleteCertificateAuthorityResponse =
  DeleteCertificateAuthorityResponse'

instance
  Prelude.NFData
    DeleteCertificateAuthorityResponse
