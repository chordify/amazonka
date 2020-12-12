{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ModelPackageValidationProfile
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ModelPackageValidationProfile
  ( ModelPackageValidationProfile (..),

    -- * Smart constructor
    mkModelPackageValidationProfile,

    -- * Lenses
    mpvpProfileName,
    mpvpTransformJobDefinition,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import Network.AWS.SageMaker.Types.TransformJobDefinition

-- | Contains data, such as the inputs and targeted instance types that are used in the process of validating the model package.
--
-- The data provided in the validation profile is made available to your buyers on AWS Marketplace.
--
-- /See:/ 'mkModelPackageValidationProfile' smart constructor.
data ModelPackageValidationProfile = ModelPackageValidationProfile'
  { profileName ::
      Lude.Text,
    transformJobDefinition ::
      TransformJobDefinition
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'ModelPackageValidationProfile' with the minimum fields required to make a request.
--
-- * 'profileName' - The name of the profile for the model package.
-- * 'transformJobDefinition' - The @TransformJobDefinition@ object that describes the transform job used for the validation of the model package.
mkModelPackageValidationProfile ::
  -- | 'profileName'
  Lude.Text ->
  -- | 'transformJobDefinition'
  TransformJobDefinition ->
  ModelPackageValidationProfile
mkModelPackageValidationProfile
  pProfileName_
  pTransformJobDefinition_ =
    ModelPackageValidationProfile'
      { profileName = pProfileName_,
        transformJobDefinition = pTransformJobDefinition_
      }

-- | The name of the profile for the model package.
--
-- /Note:/ Consider using 'profileName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mpvpProfileName :: Lens.Lens' ModelPackageValidationProfile Lude.Text
mpvpProfileName = Lens.lens (profileName :: ModelPackageValidationProfile -> Lude.Text) (\s a -> s {profileName = a} :: ModelPackageValidationProfile)
{-# DEPRECATED mpvpProfileName "Use generic-lens or generic-optics with 'profileName' instead." #-}

-- | The @TransformJobDefinition@ object that describes the transform job used for the validation of the model package.
--
-- /Note:/ Consider using 'transformJobDefinition' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mpvpTransformJobDefinition :: Lens.Lens' ModelPackageValidationProfile TransformJobDefinition
mpvpTransformJobDefinition = Lens.lens (transformJobDefinition :: ModelPackageValidationProfile -> TransformJobDefinition) (\s a -> s {transformJobDefinition = a} :: ModelPackageValidationProfile)
{-# DEPRECATED mpvpTransformJobDefinition "Use generic-lens or generic-optics with 'transformJobDefinition' instead." #-}

instance Lude.FromJSON ModelPackageValidationProfile where
  parseJSON =
    Lude.withObject
      "ModelPackageValidationProfile"
      ( \x ->
          ModelPackageValidationProfile'
            Lude.<$> (x Lude..: "ProfileName")
            Lude.<*> (x Lude..: "TransformJobDefinition")
      )

instance Lude.ToJSON ModelPackageValidationProfile where
  toJSON ModelPackageValidationProfile' {..} =
    Lude.object
      ( Lude.catMaybes
          [ Lude.Just ("ProfileName" Lude..= profileName),
            Lude.Just
              ("TransformJobDefinition" Lude..= transformJobDefinition)
          ]
      )
