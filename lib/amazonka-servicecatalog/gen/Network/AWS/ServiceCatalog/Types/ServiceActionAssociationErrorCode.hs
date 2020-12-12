{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ServiceCatalog.Types.ServiceActionAssociationErrorCode
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types.ServiceActionAssociationErrorCode
  ( ServiceActionAssociationErrorCode
      ( ServiceActionAssociationErrorCode',
        DuplicateResource,
        InternalFailure,
        LimitExceeded,
        ResourceNotFound,
        Throttling
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype ServiceActionAssociationErrorCode = ServiceActionAssociationErrorCode' Lude.Text
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

pattern DuplicateResource :: ServiceActionAssociationErrorCode
pattern DuplicateResource = ServiceActionAssociationErrorCode' "DUPLICATE_RESOURCE"

pattern InternalFailure :: ServiceActionAssociationErrorCode
pattern InternalFailure = ServiceActionAssociationErrorCode' "INTERNAL_FAILURE"

pattern LimitExceeded :: ServiceActionAssociationErrorCode
pattern LimitExceeded = ServiceActionAssociationErrorCode' "LIMIT_EXCEEDED"

pattern ResourceNotFound :: ServiceActionAssociationErrorCode
pattern ResourceNotFound = ServiceActionAssociationErrorCode' "RESOURCE_NOT_FOUND"

pattern Throttling :: ServiceActionAssociationErrorCode
pattern Throttling = ServiceActionAssociationErrorCode' "THROTTLING"

{-# COMPLETE
  DuplicateResource,
  InternalFailure,
  LimitExceeded,
  ResourceNotFound,
  Throttling,
  ServiceActionAssociationErrorCode'
  #-}
