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
-- Module      : Network.AWS.Glue.Types.TriggerType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.TriggerType
  ( TriggerType
      ( ..,
        TriggerType_CONDITIONAL,
        TriggerType_ON_DEMAND,
        TriggerType_SCHEDULED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TriggerType = TriggerType'
  { fromTriggerType ::
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

pattern TriggerType_CONDITIONAL :: TriggerType
pattern TriggerType_CONDITIONAL = TriggerType' "CONDITIONAL"

pattern TriggerType_ON_DEMAND :: TriggerType
pattern TriggerType_ON_DEMAND = TriggerType' "ON_DEMAND"

pattern TriggerType_SCHEDULED :: TriggerType
pattern TriggerType_SCHEDULED = TriggerType' "SCHEDULED"

{-# COMPLETE
  TriggerType_CONDITIONAL,
  TriggerType_ON_DEMAND,
  TriggerType_SCHEDULED,
  TriggerType'
  #-}
