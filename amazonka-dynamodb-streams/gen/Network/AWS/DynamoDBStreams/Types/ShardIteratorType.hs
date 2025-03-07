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
-- Module      : Network.AWS.DynamoDBStreams.Types.ShardIteratorType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDBStreams.Types.ShardIteratorType
  ( ShardIteratorType
      ( ..,
        ShardIteratorType_AFTER_SEQUENCE_NUMBER,
        ShardIteratorType_AT_SEQUENCE_NUMBER,
        ShardIteratorType_LATEST,
        ShardIteratorType_TRIM_HORIZON
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ShardIteratorType = ShardIteratorType'
  { fromShardIteratorType ::
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

pattern ShardIteratorType_AFTER_SEQUENCE_NUMBER :: ShardIteratorType
pattern ShardIteratorType_AFTER_SEQUENCE_NUMBER = ShardIteratorType' "AFTER_SEQUENCE_NUMBER"

pattern ShardIteratorType_AT_SEQUENCE_NUMBER :: ShardIteratorType
pattern ShardIteratorType_AT_SEQUENCE_NUMBER = ShardIteratorType' "AT_SEQUENCE_NUMBER"

pattern ShardIteratorType_LATEST :: ShardIteratorType
pattern ShardIteratorType_LATEST = ShardIteratorType' "LATEST"

pattern ShardIteratorType_TRIM_HORIZON :: ShardIteratorType
pattern ShardIteratorType_TRIM_HORIZON = ShardIteratorType' "TRIM_HORIZON"

{-# COMPLETE
  ShardIteratorType_AFTER_SEQUENCE_NUMBER,
  ShardIteratorType_AT_SEQUENCE_NUMBER,
  ShardIteratorType_LATEST,
  ShardIteratorType_TRIM_HORIZON,
  ShardIteratorType'
  #-}
