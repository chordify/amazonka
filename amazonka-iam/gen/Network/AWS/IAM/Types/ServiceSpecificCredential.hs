{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IAM.Types.ServiceSpecificCredential
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IAM.Types.ServiceSpecificCredential where

import Network.AWS.IAM.Types.StatusType
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains the details of a service-specific credential.
--
-- /See:/ 'newServiceSpecificCredential' smart constructor.
data ServiceSpecificCredential = ServiceSpecificCredential'
  { -- | The date and time, in
    -- <http://www.iso.org/iso/iso8601 ISO 8601 date-time format>, when the
    -- service-specific credential were created.
    createDate :: Prelude.ISO8601,
    -- | The name of the service associated with the service-specific credential.
    serviceName :: Prelude.Text,
    -- | The generated user name for the service-specific credential. This value
    -- is generated by combining the IAM user\'s name combined with the ID
    -- number of the AWS account, as in @jane-at-123456789012@, for example.
    -- This value cannot be configured by the user.
    serviceUserName :: Prelude.Text,
    -- | The generated password for the service-specific credential.
    servicePassword :: Prelude.Sensitive Prelude.Text,
    -- | The unique identifier for the service-specific credential.
    serviceSpecificCredentialId :: Prelude.Text,
    -- | The name of the IAM user associated with the service-specific
    -- credential.
    userName :: Prelude.Text,
    -- | The status of the service-specific credential. @Active@ means that the
    -- key is valid for API calls, while @Inactive@ means it is not.
    status :: StatusType
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'ServiceSpecificCredential' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'createDate', 'serviceSpecificCredential_createDate' - The date and time, in
-- <http://www.iso.org/iso/iso8601 ISO 8601 date-time format>, when the
-- service-specific credential were created.
--
-- 'serviceName', 'serviceSpecificCredential_serviceName' - The name of the service associated with the service-specific credential.
--
-- 'serviceUserName', 'serviceSpecificCredential_serviceUserName' - The generated user name for the service-specific credential. This value
-- is generated by combining the IAM user\'s name combined with the ID
-- number of the AWS account, as in @jane-at-123456789012@, for example.
-- This value cannot be configured by the user.
--
-- 'servicePassword', 'serviceSpecificCredential_servicePassword' - The generated password for the service-specific credential.
--
-- 'serviceSpecificCredentialId', 'serviceSpecificCredential_serviceSpecificCredentialId' - The unique identifier for the service-specific credential.
--
-- 'userName', 'serviceSpecificCredential_userName' - The name of the IAM user associated with the service-specific
-- credential.
--
-- 'status', 'serviceSpecificCredential_status' - The status of the service-specific credential. @Active@ means that the
-- key is valid for API calls, while @Inactive@ means it is not.
newServiceSpecificCredential ::
  -- | 'createDate'
  Prelude.UTCTime ->
  -- | 'serviceName'
  Prelude.Text ->
  -- | 'serviceUserName'
  Prelude.Text ->
  -- | 'servicePassword'
  Prelude.Text ->
  -- | 'serviceSpecificCredentialId'
  Prelude.Text ->
  -- | 'userName'
  Prelude.Text ->
  -- | 'status'
  StatusType ->
  ServiceSpecificCredential
newServiceSpecificCredential
  pCreateDate_
  pServiceName_
  pServiceUserName_
  pServicePassword_
  pServiceSpecificCredentialId_
  pUserName_
  pStatus_ =
    ServiceSpecificCredential'
      { createDate =
          Prelude._Time Lens.# pCreateDate_,
        serviceName = pServiceName_,
        serviceUserName = pServiceUserName_,
        servicePassword =
          Prelude._Sensitive Lens.# pServicePassword_,
        serviceSpecificCredentialId =
          pServiceSpecificCredentialId_,
        userName = pUserName_,
        status = pStatus_
      }

-- | The date and time, in
-- <http://www.iso.org/iso/iso8601 ISO 8601 date-time format>, when the
-- service-specific credential were created.
serviceSpecificCredential_createDate :: Lens.Lens' ServiceSpecificCredential Prelude.UTCTime
serviceSpecificCredential_createDate = Lens.lens (\ServiceSpecificCredential' {createDate} -> createDate) (\s@ServiceSpecificCredential' {} a -> s {createDate = a} :: ServiceSpecificCredential) Prelude.. Prelude._Time

-- | The name of the service associated with the service-specific credential.
serviceSpecificCredential_serviceName :: Lens.Lens' ServiceSpecificCredential Prelude.Text
serviceSpecificCredential_serviceName = Lens.lens (\ServiceSpecificCredential' {serviceName} -> serviceName) (\s@ServiceSpecificCredential' {} a -> s {serviceName = a} :: ServiceSpecificCredential)

-- | The generated user name for the service-specific credential. This value
-- is generated by combining the IAM user\'s name combined with the ID
-- number of the AWS account, as in @jane-at-123456789012@, for example.
-- This value cannot be configured by the user.
serviceSpecificCredential_serviceUserName :: Lens.Lens' ServiceSpecificCredential Prelude.Text
serviceSpecificCredential_serviceUserName = Lens.lens (\ServiceSpecificCredential' {serviceUserName} -> serviceUserName) (\s@ServiceSpecificCredential' {} a -> s {serviceUserName = a} :: ServiceSpecificCredential)

-- | The generated password for the service-specific credential.
serviceSpecificCredential_servicePassword :: Lens.Lens' ServiceSpecificCredential Prelude.Text
serviceSpecificCredential_servicePassword = Lens.lens (\ServiceSpecificCredential' {servicePassword} -> servicePassword) (\s@ServiceSpecificCredential' {} a -> s {servicePassword = a} :: ServiceSpecificCredential) Prelude.. Prelude._Sensitive

-- | The unique identifier for the service-specific credential.
serviceSpecificCredential_serviceSpecificCredentialId :: Lens.Lens' ServiceSpecificCredential Prelude.Text
serviceSpecificCredential_serviceSpecificCredentialId = Lens.lens (\ServiceSpecificCredential' {serviceSpecificCredentialId} -> serviceSpecificCredentialId) (\s@ServiceSpecificCredential' {} a -> s {serviceSpecificCredentialId = a} :: ServiceSpecificCredential)

-- | The name of the IAM user associated with the service-specific
-- credential.
serviceSpecificCredential_userName :: Lens.Lens' ServiceSpecificCredential Prelude.Text
serviceSpecificCredential_userName = Lens.lens (\ServiceSpecificCredential' {userName} -> userName) (\s@ServiceSpecificCredential' {} a -> s {userName = a} :: ServiceSpecificCredential)

-- | The status of the service-specific credential. @Active@ means that the
-- key is valid for API calls, while @Inactive@ means it is not.
serviceSpecificCredential_status :: Lens.Lens' ServiceSpecificCredential StatusType
serviceSpecificCredential_status = Lens.lens (\ServiceSpecificCredential' {status} -> status) (\s@ServiceSpecificCredential' {} a -> s {status = a} :: ServiceSpecificCredential)

instance Prelude.FromXML ServiceSpecificCredential where
  parseXML x =
    ServiceSpecificCredential'
      Prelude.<$> (x Prelude..@ "CreateDate")
      Prelude.<*> (x Prelude..@ "ServiceName")
      Prelude.<*> (x Prelude..@ "ServiceUserName")
      Prelude.<*> (x Prelude..@ "ServicePassword")
      Prelude.<*> (x Prelude..@ "ServiceSpecificCredentialId")
      Prelude.<*> (x Prelude..@ "UserName")
      Prelude.<*> (x Prelude..@ "Status")

instance Prelude.Hashable ServiceSpecificCredential

instance Prelude.NFData ServiceSpecificCredential
