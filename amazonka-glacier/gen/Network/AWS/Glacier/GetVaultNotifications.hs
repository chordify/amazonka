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
-- Module      : Network.AWS.Glacier.GetVaultNotifications
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This operation retrieves the @notification-configuration@ subresource of
-- the specified vault.
--
-- For information about setting a notification configuration on a vault,
-- see SetVaultNotifications. If a notification configuration for a vault
-- is not set, the operation returns a @404 Not Found@ error. For more
-- information about vault notifications, see
-- <https://docs.aws.amazon.com/amazonglacier/latest/dev/configuring-notifications.html Configuring Vault Notifications in Amazon S3 Glacier>.
--
-- An AWS account has full permission to perform all operations (actions).
-- However, AWS Identity and Access Management (IAM) users don\'t have any
-- permissions by default. You must grant them explicit permission to
-- perform specific actions. For more information, see
-- <https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html Access Control Using AWS Identity and Access Management (IAM)>.
--
-- For conceptual information and underlying REST API, see
-- <https://docs.aws.amazon.com/amazonglacier/latest/dev/configuring-notifications.html Configuring Vault Notifications in Amazon S3 Glacier>
-- and
-- <https://docs.aws.amazon.com/amazonglacier/latest/dev/api-vault-notifications-get.html Get Vault Notification Configuration>
-- in the /Amazon Glacier Developer Guide/.
module Network.AWS.Glacier.GetVaultNotifications
  ( -- * Creating a Request
    GetVaultNotifications (..),
    newGetVaultNotifications,

    -- * Request Lenses
    getVaultNotifications_accountId,
    getVaultNotifications_vaultName,

    -- * Destructuring the Response
    GetVaultNotificationsResponse (..),
    newGetVaultNotificationsResponse,

    -- * Response Lenses
    getVaultNotificationsResponse_vaultNotificationConfig,
    getVaultNotificationsResponse_httpStatus,
  )
where

import Network.AWS.Glacier.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Provides options for retrieving the notification configuration set on an
-- Amazon Glacier vault.
--
-- /See:/ 'newGetVaultNotifications' smart constructor.
data GetVaultNotifications = GetVaultNotifications'
  { -- | The @AccountId@ value is the AWS account ID of the account that owns the
    -- vault. You can either specify an AWS account ID or optionally a single
    -- \'@-@\' (hyphen), in which case Amazon S3 Glacier uses the AWS account
    -- ID associated with the credentials used to sign the request. If you use
    -- an account ID, do not include any hyphens (\'-\') in the ID.
    accountId :: Prelude.Text,
    -- | The name of the vault.
    vaultName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'GetVaultNotifications' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'accountId', 'getVaultNotifications_accountId' - The @AccountId@ value is the AWS account ID of the account that owns the
-- vault. You can either specify an AWS account ID or optionally a single
-- \'@-@\' (hyphen), in which case Amazon S3 Glacier uses the AWS account
-- ID associated with the credentials used to sign the request. If you use
-- an account ID, do not include any hyphens (\'-\') in the ID.
--
-- 'vaultName', 'getVaultNotifications_vaultName' - The name of the vault.
newGetVaultNotifications ::
  -- | 'accountId'
  Prelude.Text ->
  -- | 'vaultName'
  Prelude.Text ->
  GetVaultNotifications
newGetVaultNotifications pAccountId_ pVaultName_ =
  GetVaultNotifications'
    { accountId = pAccountId_,
      vaultName = pVaultName_
    }

-- | The @AccountId@ value is the AWS account ID of the account that owns the
-- vault. You can either specify an AWS account ID or optionally a single
-- \'@-@\' (hyphen), in which case Amazon S3 Glacier uses the AWS account
-- ID associated with the credentials used to sign the request. If you use
-- an account ID, do not include any hyphens (\'-\') in the ID.
getVaultNotifications_accountId :: Lens.Lens' GetVaultNotifications Prelude.Text
getVaultNotifications_accountId = Lens.lens (\GetVaultNotifications' {accountId} -> accountId) (\s@GetVaultNotifications' {} a -> s {accountId = a} :: GetVaultNotifications)

-- | The name of the vault.
getVaultNotifications_vaultName :: Lens.Lens' GetVaultNotifications Prelude.Text
getVaultNotifications_vaultName = Lens.lens (\GetVaultNotifications' {vaultName} -> vaultName) (\s@GetVaultNotifications' {} a -> s {vaultName = a} :: GetVaultNotifications)

instance Prelude.AWSRequest GetVaultNotifications where
  type
    Rs GetVaultNotifications =
      GetVaultNotificationsResponse
  request =
    Request.glacierVersionHeader (Prelude._svcVersion defaultService)
      Prelude.. Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetVaultNotificationsResponse'
            Prelude.<$> (Prelude.eitherParseJSON x)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetVaultNotifications

instance Prelude.NFData GetVaultNotifications

instance Prelude.ToHeaders GetVaultNotifications where
  toHeaders = Prelude.const Prelude.mempty

instance Prelude.ToPath GetVaultNotifications where
  toPath GetVaultNotifications' {..} =
    Prelude.mconcat
      [ "/",
        Prelude.toBS accountId,
        "/vaults/",
        Prelude.toBS vaultName,
        "/notification-configuration"
      ]

instance Prelude.ToQuery GetVaultNotifications where
  toQuery = Prelude.const Prelude.mempty

-- | Contains the Amazon S3 Glacier response to your request.
--
-- /See:/ 'newGetVaultNotificationsResponse' smart constructor.
data GetVaultNotificationsResponse = GetVaultNotificationsResponse'
  { -- | Returns the notification configuration set on the vault.
    vaultNotificationConfig :: Prelude.Maybe VaultNotificationConfig,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'GetVaultNotificationsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'vaultNotificationConfig', 'getVaultNotificationsResponse_vaultNotificationConfig' - Returns the notification configuration set on the vault.
--
-- 'httpStatus', 'getVaultNotificationsResponse_httpStatus' - The response's http status code.
newGetVaultNotificationsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetVaultNotificationsResponse
newGetVaultNotificationsResponse pHttpStatus_ =
  GetVaultNotificationsResponse'
    { vaultNotificationConfig =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Returns the notification configuration set on the vault.
getVaultNotificationsResponse_vaultNotificationConfig :: Lens.Lens' GetVaultNotificationsResponse (Prelude.Maybe VaultNotificationConfig)
getVaultNotificationsResponse_vaultNotificationConfig = Lens.lens (\GetVaultNotificationsResponse' {vaultNotificationConfig} -> vaultNotificationConfig) (\s@GetVaultNotificationsResponse' {} a -> s {vaultNotificationConfig = a} :: GetVaultNotificationsResponse)

-- | The response's http status code.
getVaultNotificationsResponse_httpStatus :: Lens.Lens' GetVaultNotificationsResponse Prelude.Int
getVaultNotificationsResponse_httpStatus = Lens.lens (\GetVaultNotificationsResponse' {httpStatus} -> httpStatus) (\s@GetVaultNotificationsResponse' {} a -> s {httpStatus = a} :: GetVaultNotificationsResponse)

instance Prelude.NFData GetVaultNotificationsResponse
