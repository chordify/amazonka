{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CertificateManagerPCA.Types.CertificateAuthorityStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CertificateManagerPCA.Types.CertificateAuthorityStatus
  ( CertificateAuthorityStatus
      ( ..,
        CertificateAuthorityStatus_ACTIVE,
        CertificateAuthorityStatus_CREATING,
        CertificateAuthorityStatus_DELETED,
        CertificateAuthorityStatus_DISABLED,
        CertificateAuthorityStatus_EXPIRED,
        CertificateAuthorityStatus_FAILED,
        CertificateAuthorityStatus_PENDING_CERTIFICATE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CertificateAuthorityStatus = CertificateAuthorityStatus'
  { fromCertificateAuthorityStatus ::
      Prelude.Text
  }
  deriving
    ( Prelude.Show,
      Prelude.Read,
      Prelude.Eq,
      Prelude.Ord,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic,
      Prelude.Hashable,
      Prelude.NFData,
      Prelude.FromText,
      Prelude.ToText,
      Prelude.ToByteString,
      Prelude.ToLog,
      Prelude.ToHeader,
      Prelude.ToQuery,
      Prelude.FromJSON,
      Prelude.FromJSONKey,
      Prelude.ToJSON,
      Prelude.ToJSONKey,
      Prelude.FromXML,
      Prelude.ToXML
    )

pattern CertificateAuthorityStatus_ACTIVE :: CertificateAuthorityStatus
pattern CertificateAuthorityStatus_ACTIVE = CertificateAuthorityStatus' "ACTIVE"

pattern CertificateAuthorityStatus_CREATING :: CertificateAuthorityStatus
pattern CertificateAuthorityStatus_CREATING = CertificateAuthorityStatus' "CREATING"

pattern CertificateAuthorityStatus_DELETED :: CertificateAuthorityStatus
pattern CertificateAuthorityStatus_DELETED = CertificateAuthorityStatus' "DELETED"

pattern CertificateAuthorityStatus_DISABLED :: CertificateAuthorityStatus
pattern CertificateAuthorityStatus_DISABLED = CertificateAuthorityStatus' "DISABLED"

pattern CertificateAuthorityStatus_EXPIRED :: CertificateAuthorityStatus
pattern CertificateAuthorityStatus_EXPIRED = CertificateAuthorityStatus' "EXPIRED"

pattern CertificateAuthorityStatus_FAILED :: CertificateAuthorityStatus
pattern CertificateAuthorityStatus_FAILED = CertificateAuthorityStatus' "FAILED"

pattern CertificateAuthorityStatus_PENDING_CERTIFICATE :: CertificateAuthorityStatus
pattern CertificateAuthorityStatus_PENDING_CERTIFICATE = CertificateAuthorityStatus' "PENDING_CERTIFICATE"

{-# COMPLETE
  CertificateAuthorityStatus_ACTIVE,
  CertificateAuthorityStatus_CREATING,
  CertificateAuthorityStatus_DELETED,
  CertificateAuthorityStatus_DISABLED,
  CertificateAuthorityStatus_EXPIRED,
  CertificateAuthorityStatus_FAILED,
  CertificateAuthorityStatus_PENDING_CERTIFICATE,
  CertificateAuthorityStatus'
  #-}
