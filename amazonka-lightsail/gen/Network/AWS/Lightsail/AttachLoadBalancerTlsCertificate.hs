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
-- Module      : Network.AWS.Lightsail.AttachLoadBalancerTlsCertificate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Attaches a Transport Layer Security (TLS) certificate to your load
-- balancer. TLS is just an updated, more secure version of Secure Socket
-- Layer (SSL).
--
-- Once you create and validate your certificate, you can attach it to your
-- load balancer. You can also use this API to rotate the certificates on
-- your account. Use the @AttachLoadBalancerTlsCertificate@ action with the
-- non-attached certificate, and it will replace the existing one and
-- become the attached certificate.
--
-- The @AttachLoadBalancerTlsCertificate@ operation supports tag-based
-- access control via resource tags applied to the resource identified by
-- @load balancer name@. For more information, see the
-- <https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags Lightsail Dev Guide>.
module Network.AWS.Lightsail.AttachLoadBalancerTlsCertificate
  ( -- * Creating a Request
    AttachLoadBalancerTlsCertificate (..),
    newAttachLoadBalancerTlsCertificate,

    -- * Request Lenses
    attachLoadBalancerTlsCertificate_loadBalancerName,
    attachLoadBalancerTlsCertificate_certificateName,

    -- * Destructuring the Response
    AttachLoadBalancerTlsCertificateResponse (..),
    newAttachLoadBalancerTlsCertificateResponse,

    -- * Response Lenses
    attachLoadBalancerTlsCertificateResponse_operations,
    attachLoadBalancerTlsCertificateResponse_httpStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import Network.AWS.Lightsail.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newAttachLoadBalancerTlsCertificate' smart constructor.
data AttachLoadBalancerTlsCertificate = AttachLoadBalancerTlsCertificate'
  { -- | The name of the load balancer to which you want to associate the
    -- SSL\/TLS certificate.
    loadBalancerName :: Prelude.Text,
    -- | The name of your SSL\/TLS certificate.
    certificateName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'AttachLoadBalancerTlsCertificate' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'loadBalancerName', 'attachLoadBalancerTlsCertificate_loadBalancerName' - The name of the load balancer to which you want to associate the
-- SSL\/TLS certificate.
--
-- 'certificateName', 'attachLoadBalancerTlsCertificate_certificateName' - The name of your SSL\/TLS certificate.
newAttachLoadBalancerTlsCertificate ::
  -- | 'loadBalancerName'
  Prelude.Text ->
  -- | 'certificateName'
  Prelude.Text ->
  AttachLoadBalancerTlsCertificate
newAttachLoadBalancerTlsCertificate
  pLoadBalancerName_
  pCertificateName_ =
    AttachLoadBalancerTlsCertificate'
      { loadBalancerName =
          pLoadBalancerName_,
        certificateName = pCertificateName_
      }

-- | The name of the load balancer to which you want to associate the
-- SSL\/TLS certificate.
attachLoadBalancerTlsCertificate_loadBalancerName :: Lens.Lens' AttachLoadBalancerTlsCertificate Prelude.Text
attachLoadBalancerTlsCertificate_loadBalancerName = Lens.lens (\AttachLoadBalancerTlsCertificate' {loadBalancerName} -> loadBalancerName) (\s@AttachLoadBalancerTlsCertificate' {} a -> s {loadBalancerName = a} :: AttachLoadBalancerTlsCertificate)

-- | The name of your SSL\/TLS certificate.
attachLoadBalancerTlsCertificate_certificateName :: Lens.Lens' AttachLoadBalancerTlsCertificate Prelude.Text
attachLoadBalancerTlsCertificate_certificateName = Lens.lens (\AttachLoadBalancerTlsCertificate' {certificateName} -> certificateName) (\s@AttachLoadBalancerTlsCertificate' {} a -> s {certificateName = a} :: AttachLoadBalancerTlsCertificate)

instance
  Prelude.AWSRequest
    AttachLoadBalancerTlsCertificate
  where
  type
    Rs AttachLoadBalancerTlsCertificate =
      AttachLoadBalancerTlsCertificateResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          AttachLoadBalancerTlsCertificateResponse'
            Prelude.<$> ( x Prelude..?> "operations"
                            Prelude..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    AttachLoadBalancerTlsCertificate

instance
  Prelude.NFData
    AttachLoadBalancerTlsCertificate

instance
  Prelude.ToHeaders
    AttachLoadBalancerTlsCertificate
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "Lightsail_20161128.AttachLoadBalancerTlsCertificate" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance
  Prelude.ToJSON
    AttachLoadBalancerTlsCertificate
  where
  toJSON AttachLoadBalancerTlsCertificate' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("loadBalancerName" Prelude..= loadBalancerName),
            Prelude.Just
              ("certificateName" Prelude..= certificateName)
          ]
      )

instance
  Prelude.ToPath
    AttachLoadBalancerTlsCertificate
  where
  toPath = Prelude.const "/"

instance
  Prelude.ToQuery
    AttachLoadBalancerTlsCertificate
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newAttachLoadBalancerTlsCertificateResponse' smart constructor.
data AttachLoadBalancerTlsCertificateResponse = AttachLoadBalancerTlsCertificateResponse'
  { -- | An array of objects that describe the result of the action, such as the
    -- status of the request, the timestamp of the request, and the resources
    -- affected by the request.
    --
    -- These SSL\/TLS certificates are only usable by Lightsail load balancers.
    -- You can\'t get the certificate and use it for another purpose.
    operations :: Prelude.Maybe [Operation],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'AttachLoadBalancerTlsCertificateResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'operations', 'attachLoadBalancerTlsCertificateResponse_operations' - An array of objects that describe the result of the action, such as the
-- status of the request, the timestamp of the request, and the resources
-- affected by the request.
--
-- These SSL\/TLS certificates are only usable by Lightsail load balancers.
-- You can\'t get the certificate and use it for another purpose.
--
-- 'httpStatus', 'attachLoadBalancerTlsCertificateResponse_httpStatus' - The response's http status code.
newAttachLoadBalancerTlsCertificateResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  AttachLoadBalancerTlsCertificateResponse
newAttachLoadBalancerTlsCertificateResponse
  pHttpStatus_ =
    AttachLoadBalancerTlsCertificateResponse'
      { operations =
          Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | An array of objects that describe the result of the action, such as the
-- status of the request, the timestamp of the request, and the resources
-- affected by the request.
--
-- These SSL\/TLS certificates are only usable by Lightsail load balancers.
-- You can\'t get the certificate and use it for another purpose.
attachLoadBalancerTlsCertificateResponse_operations :: Lens.Lens' AttachLoadBalancerTlsCertificateResponse (Prelude.Maybe [Operation])
attachLoadBalancerTlsCertificateResponse_operations = Lens.lens (\AttachLoadBalancerTlsCertificateResponse' {operations} -> operations) (\s@AttachLoadBalancerTlsCertificateResponse' {} a -> s {operations = a} :: AttachLoadBalancerTlsCertificateResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | The response's http status code.
attachLoadBalancerTlsCertificateResponse_httpStatus :: Lens.Lens' AttachLoadBalancerTlsCertificateResponse Prelude.Int
attachLoadBalancerTlsCertificateResponse_httpStatus = Lens.lens (\AttachLoadBalancerTlsCertificateResponse' {httpStatus} -> httpStatus) (\s@AttachLoadBalancerTlsCertificateResponse' {} a -> s {httpStatus = a} :: AttachLoadBalancerTlsCertificateResponse)

instance
  Prelude.NFData
    AttachLoadBalancerTlsCertificateResponse
