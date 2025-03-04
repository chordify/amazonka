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
-- Module      : Network.AWS.EC2.Types.FleetStateCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.FleetStateCode
  ( FleetStateCode
      ( ..,
        FleetStateCode_Active,
        FleetStateCode_Deleted,
        FleetStateCode_Deleted_running,
        FleetStateCode_Deleted_terminating,
        FleetStateCode_Failed,
        FleetStateCode_Modifying,
        FleetStateCode_Submitted
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype FleetStateCode = FleetStateCode'
  { fromFleetStateCode ::
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

pattern FleetStateCode_Active :: FleetStateCode
pattern FleetStateCode_Active = FleetStateCode' "active"

pattern FleetStateCode_Deleted :: FleetStateCode
pattern FleetStateCode_Deleted = FleetStateCode' "deleted"

pattern FleetStateCode_Deleted_running :: FleetStateCode
pattern FleetStateCode_Deleted_running = FleetStateCode' "deleted_running"

pattern FleetStateCode_Deleted_terminating :: FleetStateCode
pattern FleetStateCode_Deleted_terminating = FleetStateCode' "deleted_terminating"

pattern FleetStateCode_Failed :: FleetStateCode
pattern FleetStateCode_Failed = FleetStateCode' "failed"

pattern FleetStateCode_Modifying :: FleetStateCode
pattern FleetStateCode_Modifying = FleetStateCode' "modifying"

pattern FleetStateCode_Submitted :: FleetStateCode
pattern FleetStateCode_Submitted = FleetStateCode' "submitted"

{-# COMPLETE
  FleetStateCode_Active,
  FleetStateCode_Deleted,
  FleetStateCode_Deleted_running,
  FleetStateCode_Deleted_terminating,
  FleetStateCode_Failed,
  FleetStateCode_Modifying,
  FleetStateCode_Submitted,
  FleetStateCode'
  #-}
