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
-- Module      : Network.AWS.EKS.DisassociateIdentityProviderConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disassociates an identity provider configuration from a cluster. If you
-- disassociate an identity provider from your cluster, users included in
-- the provider can no longer access the cluster. However, you can still
-- access the cluster with AWS IAM users.
module Network.AWS.EKS.DisassociateIdentityProviderConfig
  ( -- * Creating a Request
    DisassociateIdentityProviderConfig (..),
    newDisassociateIdentityProviderConfig,

    -- * Request Lenses
    disassociateIdentityProviderConfig_clientRequestToken,
    disassociateIdentityProviderConfig_clusterName,
    disassociateIdentityProviderConfig_identityProviderConfig,

    -- * Destructuring the Response
    DisassociateIdentityProviderConfigResponse (..),
    newDisassociateIdentityProviderConfigResponse,

    -- * Response Lenses
    disassociateIdentityProviderConfigResponse_update,
    disassociateIdentityProviderConfigResponse_httpStatus,
  )
where

import Network.AWS.EKS.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDisassociateIdentityProviderConfig' smart constructor.
data DisassociateIdentityProviderConfig = DisassociateIdentityProviderConfig'
  { -- | A unique, case-sensitive identifier that you provide to ensure the
    -- idempotency of the request.
    clientRequestToken :: Prelude.Maybe Prelude.Text,
    -- | The name of the cluster to disassociate an identity provider from.
    clusterName :: Prelude.Text,
    -- | An object that represents an identity provider configuration.
    identityProviderConfig :: IdentityProviderConfig
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DisassociateIdentityProviderConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clientRequestToken', 'disassociateIdentityProviderConfig_clientRequestToken' - A unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request.
--
-- 'clusterName', 'disassociateIdentityProviderConfig_clusterName' - The name of the cluster to disassociate an identity provider from.
--
-- 'identityProviderConfig', 'disassociateIdentityProviderConfig_identityProviderConfig' - An object that represents an identity provider configuration.
newDisassociateIdentityProviderConfig ::
  -- | 'clusterName'
  Prelude.Text ->
  -- | 'identityProviderConfig'
  IdentityProviderConfig ->
  DisassociateIdentityProviderConfig
newDisassociateIdentityProviderConfig
  pClusterName_
  pIdentityProviderConfig_ =
    DisassociateIdentityProviderConfig'
      { clientRequestToken =
          Prelude.Nothing,
        clusterName = pClusterName_,
        identityProviderConfig =
          pIdentityProviderConfig_
      }

-- | A unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request.
disassociateIdentityProviderConfig_clientRequestToken :: Lens.Lens' DisassociateIdentityProviderConfig (Prelude.Maybe Prelude.Text)
disassociateIdentityProviderConfig_clientRequestToken = Lens.lens (\DisassociateIdentityProviderConfig' {clientRequestToken} -> clientRequestToken) (\s@DisassociateIdentityProviderConfig' {} a -> s {clientRequestToken = a} :: DisassociateIdentityProviderConfig)

-- | The name of the cluster to disassociate an identity provider from.
disassociateIdentityProviderConfig_clusterName :: Lens.Lens' DisassociateIdentityProviderConfig Prelude.Text
disassociateIdentityProviderConfig_clusterName = Lens.lens (\DisassociateIdentityProviderConfig' {clusterName} -> clusterName) (\s@DisassociateIdentityProviderConfig' {} a -> s {clusterName = a} :: DisassociateIdentityProviderConfig)

-- | An object that represents an identity provider configuration.
disassociateIdentityProviderConfig_identityProviderConfig :: Lens.Lens' DisassociateIdentityProviderConfig IdentityProviderConfig
disassociateIdentityProviderConfig_identityProviderConfig = Lens.lens (\DisassociateIdentityProviderConfig' {identityProviderConfig} -> identityProviderConfig) (\s@DisassociateIdentityProviderConfig' {} a -> s {identityProviderConfig = a} :: DisassociateIdentityProviderConfig)

instance
  Prelude.AWSRequest
    DisassociateIdentityProviderConfig
  where
  type
    Rs DisassociateIdentityProviderConfig =
      DisassociateIdentityProviderConfigResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DisassociateIdentityProviderConfigResponse'
            Prelude.<$> (x Prelude..?> "update")
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    DisassociateIdentityProviderConfig

instance
  Prelude.NFData
    DisassociateIdentityProviderConfig

instance
  Prelude.ToHeaders
    DisassociateIdentityProviderConfig
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance
  Prelude.ToJSON
    DisassociateIdentityProviderConfig
  where
  toJSON DisassociateIdentityProviderConfig' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("clientRequestToken" Prelude..=)
              Prelude.<$> clientRequestToken,
            Prelude.Just
              ( "identityProviderConfig"
                  Prelude..= identityProviderConfig
              )
          ]
      )

instance
  Prelude.ToPath
    DisassociateIdentityProviderConfig
  where
  toPath DisassociateIdentityProviderConfig' {..} =
    Prelude.mconcat
      [ "/clusters/",
        Prelude.toBS clusterName,
        "/identity-provider-configs/disassociate"
      ]

instance
  Prelude.ToQuery
    DisassociateIdentityProviderConfig
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDisassociateIdentityProviderConfigResponse' smart constructor.
data DisassociateIdentityProviderConfigResponse = DisassociateIdentityProviderConfigResponse'
  { update :: Prelude.Maybe Update,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DisassociateIdentityProviderConfigResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'update', 'disassociateIdentityProviderConfigResponse_update' - Undocumented member.
--
-- 'httpStatus', 'disassociateIdentityProviderConfigResponse_httpStatus' - The response's http status code.
newDisassociateIdentityProviderConfigResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DisassociateIdentityProviderConfigResponse
newDisassociateIdentityProviderConfigResponse
  pHttpStatus_ =
    DisassociateIdentityProviderConfigResponse'
      { update =
          Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | Undocumented member.
disassociateIdentityProviderConfigResponse_update :: Lens.Lens' DisassociateIdentityProviderConfigResponse (Prelude.Maybe Update)
disassociateIdentityProviderConfigResponse_update = Lens.lens (\DisassociateIdentityProviderConfigResponse' {update} -> update) (\s@DisassociateIdentityProviderConfigResponse' {} a -> s {update = a} :: DisassociateIdentityProviderConfigResponse)

-- | The response's http status code.
disassociateIdentityProviderConfigResponse_httpStatus :: Lens.Lens' DisassociateIdentityProviderConfigResponse Prelude.Int
disassociateIdentityProviderConfigResponse_httpStatus = Lens.lens (\DisassociateIdentityProviderConfigResponse' {httpStatus} -> httpStatus) (\s@DisassociateIdentityProviderConfigResponse' {} a -> s {httpStatus = a} :: DisassociateIdentityProviderConfigResponse)

instance
  Prelude.NFData
    DisassociateIdentityProviderConfigResponse
