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
-- Module      : Network.AWS.SMS.Types.ReplicationRunState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SMS.Types.ReplicationRunState
  ( ReplicationRunState
      ( ..,
        ReplicationRunState_ACTIVE,
        ReplicationRunState_COMPLETED,
        ReplicationRunState_DELETED,
        ReplicationRunState_DELETING,
        ReplicationRunState_FAILED,
        ReplicationRunState_MISSED,
        ReplicationRunState_PENDING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ReplicationRunState = ReplicationRunState'
  { fromReplicationRunState ::
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

pattern ReplicationRunState_ACTIVE :: ReplicationRunState
pattern ReplicationRunState_ACTIVE = ReplicationRunState' "ACTIVE"

pattern ReplicationRunState_COMPLETED :: ReplicationRunState
pattern ReplicationRunState_COMPLETED = ReplicationRunState' "COMPLETED"

pattern ReplicationRunState_DELETED :: ReplicationRunState
pattern ReplicationRunState_DELETED = ReplicationRunState' "DELETED"

pattern ReplicationRunState_DELETING :: ReplicationRunState
pattern ReplicationRunState_DELETING = ReplicationRunState' "DELETING"

pattern ReplicationRunState_FAILED :: ReplicationRunState
pattern ReplicationRunState_FAILED = ReplicationRunState' "FAILED"

pattern ReplicationRunState_MISSED :: ReplicationRunState
pattern ReplicationRunState_MISSED = ReplicationRunState' "MISSED"

pattern ReplicationRunState_PENDING :: ReplicationRunState
pattern ReplicationRunState_PENDING = ReplicationRunState' "PENDING"

{-# COMPLETE
  ReplicationRunState_ACTIVE,
  ReplicationRunState_COMPLETED,
  ReplicationRunState_DELETED,
  ReplicationRunState_DELETING,
  ReplicationRunState_FAILED,
  ReplicationRunState_MISSED,
  ReplicationRunState_PENDING,
  ReplicationRunState'
  #-}
