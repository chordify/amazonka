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
-- Module      : Network.AWS.KMS.Types.CustomerMasterKeySpec
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KMS.Types.CustomerMasterKeySpec
  ( CustomerMasterKeySpec
      ( ..,
        CustomerMasterKeySpec_ECC_NIST_P256,
        CustomerMasterKeySpec_ECC_NIST_P384,
        CustomerMasterKeySpec_ECC_NIST_P521,
        CustomerMasterKeySpec_ECC_SECG_P256K1,
        CustomerMasterKeySpec_RSA_2048,
        CustomerMasterKeySpec_RSA_3072,
        CustomerMasterKeySpec_RSA_4096,
        CustomerMasterKeySpec_SYMMETRIC_DEFAULT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CustomerMasterKeySpec = CustomerMasterKeySpec'
  { fromCustomerMasterKeySpec ::
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

pattern CustomerMasterKeySpec_ECC_NIST_P256 :: CustomerMasterKeySpec
pattern CustomerMasterKeySpec_ECC_NIST_P256 = CustomerMasterKeySpec' "ECC_NIST_P256"

pattern CustomerMasterKeySpec_ECC_NIST_P384 :: CustomerMasterKeySpec
pattern CustomerMasterKeySpec_ECC_NIST_P384 = CustomerMasterKeySpec' "ECC_NIST_P384"

pattern CustomerMasterKeySpec_ECC_NIST_P521 :: CustomerMasterKeySpec
pattern CustomerMasterKeySpec_ECC_NIST_P521 = CustomerMasterKeySpec' "ECC_NIST_P521"

pattern CustomerMasterKeySpec_ECC_SECG_P256K1 :: CustomerMasterKeySpec
pattern CustomerMasterKeySpec_ECC_SECG_P256K1 = CustomerMasterKeySpec' "ECC_SECG_P256K1"

pattern CustomerMasterKeySpec_RSA_2048 :: CustomerMasterKeySpec
pattern CustomerMasterKeySpec_RSA_2048 = CustomerMasterKeySpec' "RSA_2048"

pattern CustomerMasterKeySpec_RSA_3072 :: CustomerMasterKeySpec
pattern CustomerMasterKeySpec_RSA_3072 = CustomerMasterKeySpec' "RSA_3072"

pattern CustomerMasterKeySpec_RSA_4096 :: CustomerMasterKeySpec
pattern CustomerMasterKeySpec_RSA_4096 = CustomerMasterKeySpec' "RSA_4096"

pattern CustomerMasterKeySpec_SYMMETRIC_DEFAULT :: CustomerMasterKeySpec
pattern CustomerMasterKeySpec_SYMMETRIC_DEFAULT = CustomerMasterKeySpec' "SYMMETRIC_DEFAULT"

{-# COMPLETE
  CustomerMasterKeySpec_ECC_NIST_P256,
  CustomerMasterKeySpec_ECC_NIST_P384,
  CustomerMasterKeySpec_ECC_NIST_P521,
  CustomerMasterKeySpec_ECC_SECG_P256K1,
  CustomerMasterKeySpec_RSA_2048,
  CustomerMasterKeySpec_RSA_3072,
  CustomerMasterKeySpec_RSA_4096,
  CustomerMasterKeySpec_SYMMETRIC_DEFAULT,
  CustomerMasterKeySpec'
  #-}
