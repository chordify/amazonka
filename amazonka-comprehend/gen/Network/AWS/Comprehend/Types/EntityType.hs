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
-- Module      : Network.AWS.Comprehend.Types.EntityType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Comprehend.Types.EntityType
  ( EntityType
      ( ..,
        EntityType_COMMERCIAL_ITEM,
        EntityType_DATE,
        EntityType_EVENT,
        EntityType_LOCATION,
        EntityType_ORGANIZATION,
        EntityType_OTHER,
        EntityType_PERSON,
        EntityType_QUANTITY,
        EntityType_TITLE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype EntityType = EntityType'
  { fromEntityType ::
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

pattern EntityType_COMMERCIAL_ITEM :: EntityType
pattern EntityType_COMMERCIAL_ITEM = EntityType' "COMMERCIAL_ITEM"

pattern EntityType_DATE :: EntityType
pattern EntityType_DATE = EntityType' "DATE"

pattern EntityType_EVENT :: EntityType
pattern EntityType_EVENT = EntityType' "EVENT"

pattern EntityType_LOCATION :: EntityType
pattern EntityType_LOCATION = EntityType' "LOCATION"

pattern EntityType_ORGANIZATION :: EntityType
pattern EntityType_ORGANIZATION = EntityType' "ORGANIZATION"

pattern EntityType_OTHER :: EntityType
pattern EntityType_OTHER = EntityType' "OTHER"

pattern EntityType_PERSON :: EntityType
pattern EntityType_PERSON = EntityType' "PERSON"

pattern EntityType_QUANTITY :: EntityType
pattern EntityType_QUANTITY = EntityType' "QUANTITY"

pattern EntityType_TITLE :: EntityType
pattern EntityType_TITLE = EntityType' "TITLE"

{-# COMPLETE
  EntityType_COMMERCIAL_ITEM,
  EntityType_DATE,
  EntityType_EVENT,
  EntityType_LOCATION,
  EntityType_ORGANIZATION,
  EntityType_OTHER,
  EntityType_PERSON,
  EntityType_QUANTITY,
  EntityType_TITLE,
  EntityType'
  #-}
