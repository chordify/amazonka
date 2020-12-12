{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeDeploy.Types.EC2TagFilterType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeDeploy.Types.EC2TagFilterType
  ( EC2TagFilterType
      ( EC2TagFilterType',
        KeyAndValue,
        KeyOnly,
        ValueOnly
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype EC2TagFilterType = EC2TagFilterType' Lude.Text
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving newtype
    ( Lude.Hashable,
      Lude.NFData,
      Lude.ToJSONKey,
      Lude.FromJSONKey,
      Lude.ToJSON,
      Lude.FromJSON,
      Lude.ToXML,
      Lude.FromXML,
      Lude.ToText,
      Lude.FromText,
      Lude.ToByteString,
      Lude.ToQuery,
      Lude.ToHeader
    )

pattern KeyAndValue :: EC2TagFilterType
pattern KeyAndValue = EC2TagFilterType' "KEY_AND_VALUE"

pattern KeyOnly :: EC2TagFilterType
pattern KeyOnly = EC2TagFilterType' "KEY_ONLY"

pattern ValueOnly :: EC2TagFilterType
pattern ValueOnly = EC2TagFilterType' "VALUE_ONLY"

{-# COMPLETE
  KeyAndValue,
  KeyOnly,
  ValueOnly,
  EC2TagFilterType'
  #-}
