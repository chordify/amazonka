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
-- Module      : Network.AWS.MediaConvert.Types.S3ObjectCannedAcl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.S3ObjectCannedAcl
  ( S3ObjectCannedAcl
      ( ..,
        S3ObjectCannedAcl_AUTHENTICATED_READ,
        S3ObjectCannedAcl_BUCKET_OWNER_FULL_CONTROL,
        S3ObjectCannedAcl_BUCKET_OWNER_READ,
        S3ObjectCannedAcl_PUBLIC_READ
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Choose an Amazon S3 canned ACL for MediaConvert to apply to this output.
newtype S3ObjectCannedAcl = S3ObjectCannedAcl'
  { fromS3ObjectCannedAcl ::
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

pattern S3ObjectCannedAcl_AUTHENTICATED_READ :: S3ObjectCannedAcl
pattern S3ObjectCannedAcl_AUTHENTICATED_READ = S3ObjectCannedAcl' "AUTHENTICATED_READ"

pattern S3ObjectCannedAcl_BUCKET_OWNER_FULL_CONTROL :: S3ObjectCannedAcl
pattern S3ObjectCannedAcl_BUCKET_OWNER_FULL_CONTROL = S3ObjectCannedAcl' "BUCKET_OWNER_FULL_CONTROL"

pattern S3ObjectCannedAcl_BUCKET_OWNER_READ :: S3ObjectCannedAcl
pattern S3ObjectCannedAcl_BUCKET_OWNER_READ = S3ObjectCannedAcl' "BUCKET_OWNER_READ"

pattern S3ObjectCannedAcl_PUBLIC_READ :: S3ObjectCannedAcl
pattern S3ObjectCannedAcl_PUBLIC_READ = S3ObjectCannedAcl' "PUBLIC_READ"

{-# COMPLETE
  S3ObjectCannedAcl_AUTHENTICATED_READ,
  S3ObjectCannedAcl_BUCKET_OWNER_FULL_CONTROL,
  S3ObjectCannedAcl_BUCKET_OWNER_READ,
  S3ObjectCannedAcl_PUBLIC_READ,
  S3ObjectCannedAcl'
  #-}
