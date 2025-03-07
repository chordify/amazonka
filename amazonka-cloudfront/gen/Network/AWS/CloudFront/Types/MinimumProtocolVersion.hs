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
-- Module      : Network.AWS.CloudFront.Types.MinimumProtocolVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFront.Types.MinimumProtocolVersion
  ( MinimumProtocolVersion
      ( ..,
        MinimumProtocolVersion_SSLv3,
        MinimumProtocolVersion_TLSv1,
        MinimumProtocolVersion_TLSv1_1_2016,
        MinimumProtocolVersion_TLSv1_2016,
        MinimumProtocolVersion_TLSv1_2_2018,
        MinimumProtocolVersion_TLSv1_2_2019
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype MinimumProtocolVersion = MinimumProtocolVersion'
  { fromMinimumProtocolVersion ::
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

pattern MinimumProtocolVersion_SSLv3 :: MinimumProtocolVersion
pattern MinimumProtocolVersion_SSLv3 = MinimumProtocolVersion' "SSLv3"

pattern MinimumProtocolVersion_TLSv1 :: MinimumProtocolVersion
pattern MinimumProtocolVersion_TLSv1 = MinimumProtocolVersion' "TLSv1"

pattern MinimumProtocolVersion_TLSv1_1_2016 :: MinimumProtocolVersion
pattern MinimumProtocolVersion_TLSv1_1_2016 = MinimumProtocolVersion' "TLSv1.1_2016"

pattern MinimumProtocolVersion_TLSv1_2016 :: MinimumProtocolVersion
pattern MinimumProtocolVersion_TLSv1_2016 = MinimumProtocolVersion' "TLSv1_2016"

pattern MinimumProtocolVersion_TLSv1_2_2018 :: MinimumProtocolVersion
pattern MinimumProtocolVersion_TLSv1_2_2018 = MinimumProtocolVersion' "TLSv1.2_2018"

pattern MinimumProtocolVersion_TLSv1_2_2019 :: MinimumProtocolVersion
pattern MinimumProtocolVersion_TLSv1_2_2019 = MinimumProtocolVersion' "TLSv1.2_2019"

{-# COMPLETE
  MinimumProtocolVersion_SSLv3,
  MinimumProtocolVersion_TLSv1,
  MinimumProtocolVersion_TLSv1_1_2016,
  MinimumProtocolVersion_TLSv1_2016,
  MinimumProtocolVersion_TLSv1_2_2018,
  MinimumProtocolVersion_TLSv1_2_2019,
  MinimumProtocolVersion'
  #-}
