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
-- Module      : Network.AWS.MediaConvert.Types.BillingTagsSource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.BillingTagsSource
  ( BillingTagsSource
      ( ..,
        BillingTagsSource_JOB,
        BillingTagsSource_JOB_TEMPLATE,
        BillingTagsSource_PRESET,
        BillingTagsSource_QUEUE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | The tag type that AWS Billing and Cost Management will use to sort your
-- AWS Elemental MediaConvert costs on any billing report that you set up.
newtype BillingTagsSource = BillingTagsSource'
  { fromBillingTagsSource ::
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

pattern BillingTagsSource_JOB :: BillingTagsSource
pattern BillingTagsSource_JOB = BillingTagsSource' "JOB"

pattern BillingTagsSource_JOB_TEMPLATE :: BillingTagsSource
pattern BillingTagsSource_JOB_TEMPLATE = BillingTagsSource' "JOB_TEMPLATE"

pattern BillingTagsSource_PRESET :: BillingTagsSource
pattern BillingTagsSource_PRESET = BillingTagsSource' "PRESET"

pattern BillingTagsSource_QUEUE :: BillingTagsSource
pattern BillingTagsSource_QUEUE = BillingTagsSource' "QUEUE"

{-# COMPLETE
  BillingTagsSource_JOB,
  BillingTagsSource_JOB_TEMPLATE,
  BillingTagsSource_PRESET,
  BillingTagsSource_QUEUE,
  BillingTagsSource'
  #-}
