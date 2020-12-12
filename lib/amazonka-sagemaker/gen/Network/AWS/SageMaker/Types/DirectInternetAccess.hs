{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.DirectInternetAccess
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.DirectInternetAccess
  ( DirectInternetAccess
      ( DirectInternetAccess',
        DIADisabled,
        DIAEnabled
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype DirectInternetAccess = DirectInternetAccess' Lude.Text
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

pattern DIADisabled :: DirectInternetAccess
pattern DIADisabled = DirectInternetAccess' "Disabled"

pattern DIAEnabled :: DirectInternetAccess
pattern DIAEnabled = DirectInternetAccess' "Enabled"

{-# COMPLETE
  DIADisabled,
  DIAEnabled,
  DirectInternetAccess'
  #-}
