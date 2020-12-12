{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ModelPackageStatus
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ModelPackageStatus
  ( ModelPackageStatus
      ( ModelPackageStatus',
        MPSCompleted,
        MPSDeleting,
        MPSFailed,
        MPSInProgress,
        MPSPending
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype ModelPackageStatus = ModelPackageStatus' Lude.Text
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

pattern MPSCompleted :: ModelPackageStatus
pattern MPSCompleted = ModelPackageStatus' "Completed"

pattern MPSDeleting :: ModelPackageStatus
pattern MPSDeleting = ModelPackageStatus' "Deleting"

pattern MPSFailed :: ModelPackageStatus
pattern MPSFailed = ModelPackageStatus' "Failed"

pattern MPSInProgress :: ModelPackageStatus
pattern MPSInProgress = ModelPackageStatus' "InProgress"

pattern MPSPending :: ModelPackageStatus
pattern MPSPending = ModelPackageStatus' "Pending"

{-# COMPLETE
  MPSCompleted,
  MPSDeleting,
  MPSFailed,
  MPSInProgress,
  MPSPending,
  ModelPackageStatus'
  #-}
