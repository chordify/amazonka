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
-- Module      : Network.AWS.Athena.Types.DataCatalogType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Athena.Types.DataCatalogType
  ( DataCatalogType
      ( ..,
        DataCatalogType_GLUE,
        DataCatalogType_HIVE,
        DataCatalogType_LAMBDA
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DataCatalogType = DataCatalogType'
  { fromDataCatalogType ::
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

pattern DataCatalogType_GLUE :: DataCatalogType
pattern DataCatalogType_GLUE = DataCatalogType' "GLUE"

pattern DataCatalogType_HIVE :: DataCatalogType
pattern DataCatalogType_HIVE = DataCatalogType' "HIVE"

pattern DataCatalogType_LAMBDA :: DataCatalogType
pattern DataCatalogType_LAMBDA = DataCatalogType' "LAMBDA"

{-# COMPLETE
  DataCatalogType_GLUE,
  DataCatalogType_HIVE,
  DataCatalogType_LAMBDA,
  DataCatalogType'
  #-}
