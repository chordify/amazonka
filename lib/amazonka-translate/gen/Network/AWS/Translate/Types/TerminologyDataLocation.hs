{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Translate.Types.TerminologyDataLocation
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Translate.Types.TerminologyDataLocation
  ( TerminologyDataLocation (..),

    -- * Smart constructor
    mkTerminologyDataLocation,

    -- * Lenses
    tdlRepositoryType,
    tdlLocation,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | The location of the custom terminology data.
--
-- /See:/ 'mkTerminologyDataLocation' smart constructor.
data TerminologyDataLocation = TerminologyDataLocation'
  { repositoryType ::
      Lude.Text,
    location :: Lude.Text
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'TerminologyDataLocation' with the minimum fields required to make a request.
--
-- * 'location' - The location of the custom terminology data.
-- * 'repositoryType' - The repository type for the custom terminology data.
mkTerminologyDataLocation ::
  -- | 'repositoryType'
  Lude.Text ->
  -- | 'location'
  Lude.Text ->
  TerminologyDataLocation
mkTerminologyDataLocation pRepositoryType_ pLocation_ =
  TerminologyDataLocation'
    { repositoryType = pRepositoryType_,
      location = pLocation_
    }

-- | The repository type for the custom terminology data.
--
-- /Note:/ Consider using 'repositoryType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tdlRepositoryType :: Lens.Lens' TerminologyDataLocation Lude.Text
tdlRepositoryType = Lens.lens (repositoryType :: TerminologyDataLocation -> Lude.Text) (\s a -> s {repositoryType = a} :: TerminologyDataLocation)
{-# DEPRECATED tdlRepositoryType "Use generic-lens or generic-optics with 'repositoryType' instead." #-}

-- | The location of the custom terminology data.
--
-- /Note:/ Consider using 'location' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tdlLocation :: Lens.Lens' TerminologyDataLocation Lude.Text
tdlLocation = Lens.lens (location :: TerminologyDataLocation -> Lude.Text) (\s a -> s {location = a} :: TerminologyDataLocation)
{-# DEPRECATED tdlLocation "Use generic-lens or generic-optics with 'location' instead." #-}

instance Lude.FromJSON TerminologyDataLocation where
  parseJSON =
    Lude.withObject
      "TerminologyDataLocation"
      ( \x ->
          TerminologyDataLocation'
            Lude.<$> (x Lude..: "RepositoryType") Lude.<*> (x Lude..: "Location")
      )
