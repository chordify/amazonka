{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Rekognition.Types.ProtectiveEquipmentSummarizationAttributes
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Rekognition.Types.ProtectiveEquipmentSummarizationAttributes
  ( ProtectiveEquipmentSummarizationAttributes (..),

    -- * Smart constructor
    mkProtectiveEquipmentSummarizationAttributes,

    -- * Lenses
    pesaMinConfidence,
    pesaRequiredEquipmentTypes,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import Network.AWS.Rekognition.Types.ProtectiveEquipmentType

-- | Specifies summary attributes to return from a call to 'DetectProtectiveEquipment' . You can specify which types of PPE to summarize. You can also specify a minimum confidence value for detections. Summary information is returned in the @Summary@ ('ProtectiveEquipmentSummary' ) field of the response from @DetectProtectiveEquipment@ . The summary includes which persons in an image were detected wearing the requested types of person protective equipment (PPE), which persons were detected as not wearing PPE, and the persons in which a determination could not be made. For more information, see 'ProtectiveEquipmentSummary' .
--
-- /See:/ 'mkProtectiveEquipmentSummarizationAttributes' smart constructor.
data ProtectiveEquipmentSummarizationAttributes = ProtectiveEquipmentSummarizationAttributes'
  { minConfidence ::
      Lude.Double,
    requiredEquipmentTypes ::
      [ProtectiveEquipmentType]
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'ProtectiveEquipmentSummarizationAttributes' with the minimum fields required to make a request.
--
-- * 'minConfidence' - The minimum confidence level for which you want summary information. The confidence level applies to person detection, body part detection, equipment detection, and body part coverage. Amazon Rekognition doesn't return summary information with a confidence than this specified value. There isn't a default value.
--
-- Specify a @MinConfidence@ value that is between 50-100% as @DetectProtectiveEquipment@ returns predictions only where the detection confidence is between 50% - 100%. If you specify a value that is less than 50%, the results are the same specifying a value of 50%.
--
-- * 'requiredEquipmentTypes' - An array of personal protective equipment types for which you want summary information. If a person is detected wearing a required requipment type, the person's ID is added to the @PersonsWithRequiredEquipment@ array field returned in 'ProtectiveEquipmentSummary' by @DetectProtectiveEquipment@ .
mkProtectiveEquipmentSummarizationAttributes ::
  -- | 'minConfidence'
  Lude.Double ->
  ProtectiveEquipmentSummarizationAttributes
mkProtectiveEquipmentSummarizationAttributes pMinConfidence_ =
  ProtectiveEquipmentSummarizationAttributes'
    { minConfidence =
        pMinConfidence_,
      requiredEquipmentTypes = Lude.mempty
    }

-- | The minimum confidence level for which you want summary information. The confidence level applies to person detection, body part detection, equipment detection, and body part coverage. Amazon Rekognition doesn't return summary information with a confidence than this specified value. There isn't a default value.
--
-- Specify a @MinConfidence@ value that is between 50-100% as @DetectProtectiveEquipment@ returns predictions only where the detection confidence is between 50% - 100%. If you specify a value that is less than 50%, the results are the same specifying a value of 50%.
--
--
-- /Note:/ Consider using 'minConfidence' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pesaMinConfidence :: Lens.Lens' ProtectiveEquipmentSummarizationAttributes Lude.Double
pesaMinConfidence = Lens.lens (minConfidence :: ProtectiveEquipmentSummarizationAttributes -> Lude.Double) (\s a -> s {minConfidence = a} :: ProtectiveEquipmentSummarizationAttributes)
{-# DEPRECATED pesaMinConfidence "Use generic-lens or generic-optics with 'minConfidence' instead." #-}

-- | An array of personal protective equipment types for which you want summary information. If a person is detected wearing a required requipment type, the person's ID is added to the @PersonsWithRequiredEquipment@ array field returned in 'ProtectiveEquipmentSummary' by @DetectProtectiveEquipment@ .
--
-- /Note:/ Consider using 'requiredEquipmentTypes' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pesaRequiredEquipmentTypes :: Lens.Lens' ProtectiveEquipmentSummarizationAttributes [ProtectiveEquipmentType]
pesaRequiredEquipmentTypes = Lens.lens (requiredEquipmentTypes :: ProtectiveEquipmentSummarizationAttributes -> [ProtectiveEquipmentType]) (\s a -> s {requiredEquipmentTypes = a} :: ProtectiveEquipmentSummarizationAttributes)
{-# DEPRECATED pesaRequiredEquipmentTypes "Use generic-lens or generic-optics with 'requiredEquipmentTypes' instead." #-}

instance Lude.ToJSON ProtectiveEquipmentSummarizationAttributes where
  toJSON ProtectiveEquipmentSummarizationAttributes' {..} =
    Lude.object
      ( Lude.catMaybes
          [ Lude.Just ("MinConfidence" Lude..= minConfidence),
            Lude.Just
              ("RequiredEquipmentTypes" Lude..= requiredEquipmentTypes)
          ]
      )
