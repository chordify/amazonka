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
-- Module      : Network.AWS.Kinesis.Types.ShardFilterType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Kinesis.Types.ShardFilterType
  ( ShardFilterType
      ( ..,
        ShardFilterType_AFTER_SHARD_ID,
        ShardFilterType_AT_LATEST,
        ShardFilterType_AT_TIMESTAMP,
        ShardFilterType_AT_TRIM_HORIZON,
        ShardFilterType_FROM_TIMESTAMP,
        ShardFilterType_FROM_TRIM_HORIZON
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ShardFilterType = ShardFilterType'
  { fromShardFilterType ::
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

pattern ShardFilterType_AFTER_SHARD_ID :: ShardFilterType
pattern ShardFilterType_AFTER_SHARD_ID = ShardFilterType' "AFTER_SHARD_ID"

pattern ShardFilterType_AT_LATEST :: ShardFilterType
pattern ShardFilterType_AT_LATEST = ShardFilterType' "AT_LATEST"

pattern ShardFilterType_AT_TIMESTAMP :: ShardFilterType
pattern ShardFilterType_AT_TIMESTAMP = ShardFilterType' "AT_TIMESTAMP"

pattern ShardFilterType_AT_TRIM_HORIZON :: ShardFilterType
pattern ShardFilterType_AT_TRIM_HORIZON = ShardFilterType' "AT_TRIM_HORIZON"

pattern ShardFilterType_FROM_TIMESTAMP :: ShardFilterType
pattern ShardFilterType_FROM_TIMESTAMP = ShardFilterType' "FROM_TIMESTAMP"

pattern ShardFilterType_FROM_TRIM_HORIZON :: ShardFilterType
pattern ShardFilterType_FROM_TRIM_HORIZON = ShardFilterType' "FROM_TRIM_HORIZON"

{-# COMPLETE
  ShardFilterType_AFTER_SHARD_ID,
  ShardFilterType_AT_LATEST,
  ShardFilterType_AT_TIMESTAMP,
  ShardFilterType_AT_TRIM_HORIZON,
  ShardFilterType_FROM_TIMESTAMP,
  ShardFilterType_FROM_TRIM_HORIZON,
  ShardFilterType'
  #-}
