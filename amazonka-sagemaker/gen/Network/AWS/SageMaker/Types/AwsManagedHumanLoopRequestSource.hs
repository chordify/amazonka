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
-- Module      : Network.AWS.SageMaker.Types.AwsManagedHumanLoopRequestSource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.AwsManagedHumanLoopRequestSource
  ( AwsManagedHumanLoopRequestSource
      ( ..,
        AwsManagedHumanLoopRequestSource_AWS_Rekognition_DetectModerationLabels_Image_V3,
        AwsManagedHumanLoopRequestSource_AWS_Textract_AnalyzeDocument_Forms_V1
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AwsManagedHumanLoopRequestSource = AwsManagedHumanLoopRequestSource'
  { fromAwsManagedHumanLoopRequestSource ::
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

pattern AwsManagedHumanLoopRequestSource_AWS_Rekognition_DetectModerationLabels_Image_V3 :: AwsManagedHumanLoopRequestSource
pattern AwsManagedHumanLoopRequestSource_AWS_Rekognition_DetectModerationLabels_Image_V3 = AwsManagedHumanLoopRequestSource' "AWS/Rekognition/DetectModerationLabels/Image/V3"

pattern AwsManagedHumanLoopRequestSource_AWS_Textract_AnalyzeDocument_Forms_V1 :: AwsManagedHumanLoopRequestSource
pattern AwsManagedHumanLoopRequestSource_AWS_Textract_AnalyzeDocument_Forms_V1 = AwsManagedHumanLoopRequestSource' "AWS/Textract/AnalyzeDocument/Forms/V1"

{-# COMPLETE
  AwsManagedHumanLoopRequestSource_AWS_Rekognition_DetectModerationLabels_Image_V3,
  AwsManagedHumanLoopRequestSource_AWS_Textract_AnalyzeDocument_Forms_V1,
  AwsManagedHumanLoopRequestSource'
  #-}
