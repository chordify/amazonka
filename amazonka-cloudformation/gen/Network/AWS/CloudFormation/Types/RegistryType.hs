{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFormation.Types.RegistryType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.RegistryType
  ( RegistryType
      ( ..,
        RegistryTypeMODULE,
        RegistryTypeRESOURCE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype RegistryType = RegistryType'
  { fromRegistryType ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern RegistryTypeMODULE :: RegistryType
pattern RegistryTypeMODULE = RegistryType' "MODULE"

pattern RegistryTypeRESOURCE :: RegistryType
pattern RegistryTypeRESOURCE = RegistryType' "RESOURCE"

{-# COMPLETE
  RegistryTypeMODULE,
  RegistryTypeRESOURCE,
  RegistryType'
  #-}

instance Prelude.FromText RegistryType where
  parser = RegistryType' Prelude.<$> Prelude.takeText

instance Prelude.ToText RegistryType where
  toText (RegistryType' x) = x

instance Prelude.Hashable RegistryType

instance Prelude.NFData RegistryType

instance Prelude.ToByteString RegistryType

instance Prelude.ToQuery RegistryType

instance Prelude.ToHeader RegistryType

instance Prelude.FromXML RegistryType where
  parseXML = Prelude.parseXMLText "RegistryType"
