{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Preset
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Preset
  ( Preset (..),

    -- * Smart constructor
    mkPreset,

    -- * Lenses
    pLastUpdated,
    pARN,
    pCreatedAt,
    pCategory,
    pType,
    pDescription,
    pSettings,
    pName,
  )
where

import qualified Network.AWS.Lens as Lens
import Network.AWS.MediaConvert.Types.PresetSettings
import Network.AWS.MediaConvert.Types.Type
import qualified Network.AWS.Prelude as Lude

-- | A preset is a collection of preconfigured media conversion settings that you want MediaConvert to apply to the output during the conversion process.
--
-- /See:/ 'mkPreset' smart constructor.
data Preset = Preset'
  { lastUpdated :: Lude.Maybe Lude.Timestamp,
    arn :: Lude.Maybe Lude.Text,
    createdAt :: Lude.Maybe Lude.Timestamp,
    category :: Lude.Maybe Lude.Text,
    type' :: Lude.Maybe Type,
    description :: Lude.Maybe Lude.Text,
    settings :: PresetSettings,
    name :: Lude.Text
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'Preset' with the minimum fields required to make a request.
--
-- * 'arn' - An identifier for this resource that is unique within all of AWS.
-- * 'category' - An optional category you create to organize your presets.
-- * 'createdAt' - The timestamp in epoch seconds for preset creation.
-- * 'description' - An optional description you create for each preset.
-- * 'lastUpdated' - The timestamp in epoch seconds when the preset was last updated.
-- * 'name' - A name you create for each preset. Each name must be unique within your account.
-- * 'settings' - Settings for preset
-- * 'type'' - A preset can be of two types: system or custom. System or built-in preset can't be modified or deleted by the user.
mkPreset ::
  -- | 'settings'
  PresetSettings ->
  -- | 'name'
  Lude.Text ->
  Preset
mkPreset pSettings_ pName_ =
  Preset'
    { lastUpdated = Lude.Nothing,
      arn = Lude.Nothing,
      createdAt = Lude.Nothing,
      category = Lude.Nothing,
      type' = Lude.Nothing,
      description = Lude.Nothing,
      settings = pSettings_,
      name = pName_
    }

-- | The timestamp in epoch seconds when the preset was last updated.
--
-- /Note:/ Consider using 'lastUpdated' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pLastUpdated :: Lens.Lens' Preset (Lude.Maybe Lude.Timestamp)
pLastUpdated = Lens.lens (lastUpdated :: Preset -> Lude.Maybe Lude.Timestamp) (\s a -> s {lastUpdated = a} :: Preset)
{-# DEPRECATED pLastUpdated "Use generic-lens or generic-optics with 'lastUpdated' instead." #-}

-- | An identifier for this resource that is unique within all of AWS.
--
-- /Note:/ Consider using 'arn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pARN :: Lens.Lens' Preset (Lude.Maybe Lude.Text)
pARN = Lens.lens (arn :: Preset -> Lude.Maybe Lude.Text) (\s a -> s {arn = a} :: Preset)
{-# DEPRECATED pARN "Use generic-lens or generic-optics with 'arn' instead." #-}

-- | The timestamp in epoch seconds for preset creation.
--
-- /Note:/ Consider using 'createdAt' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pCreatedAt :: Lens.Lens' Preset (Lude.Maybe Lude.Timestamp)
pCreatedAt = Lens.lens (createdAt :: Preset -> Lude.Maybe Lude.Timestamp) (\s a -> s {createdAt = a} :: Preset)
{-# DEPRECATED pCreatedAt "Use generic-lens or generic-optics with 'createdAt' instead." #-}

-- | An optional category you create to organize your presets.
--
-- /Note:/ Consider using 'category' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pCategory :: Lens.Lens' Preset (Lude.Maybe Lude.Text)
pCategory = Lens.lens (category :: Preset -> Lude.Maybe Lude.Text) (\s a -> s {category = a} :: Preset)
{-# DEPRECATED pCategory "Use generic-lens or generic-optics with 'category' instead." #-}

-- | A preset can be of two types: system or custom. System or built-in preset can't be modified or deleted by the user.
--
-- /Note:/ Consider using 'type'' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pType :: Lens.Lens' Preset (Lude.Maybe Type)
pType = Lens.lens (type' :: Preset -> Lude.Maybe Type) (\s a -> s {type' = a} :: Preset)
{-# DEPRECATED pType "Use generic-lens or generic-optics with 'type'' instead." #-}

-- | An optional description you create for each preset.
--
-- /Note:/ Consider using 'description' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pDescription :: Lens.Lens' Preset (Lude.Maybe Lude.Text)
pDescription = Lens.lens (description :: Preset -> Lude.Maybe Lude.Text) (\s a -> s {description = a} :: Preset)
{-# DEPRECATED pDescription "Use generic-lens or generic-optics with 'description' instead." #-}

-- | Settings for preset
--
-- /Note:/ Consider using 'settings' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pSettings :: Lens.Lens' Preset PresetSettings
pSettings = Lens.lens (settings :: Preset -> PresetSettings) (\s a -> s {settings = a} :: Preset)
{-# DEPRECATED pSettings "Use generic-lens or generic-optics with 'settings' instead." #-}

-- | A name you create for each preset. Each name must be unique within your account.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pName :: Lens.Lens' Preset Lude.Text
pName = Lens.lens (name :: Preset -> Lude.Text) (\s a -> s {name = a} :: Preset)
{-# DEPRECATED pName "Use generic-lens or generic-optics with 'name' instead." #-}

instance Lude.FromJSON Preset where
  parseJSON =
    Lude.withObject
      "Preset"
      ( \x ->
          Preset'
            Lude.<$> (x Lude..:? "lastUpdated")
            Lude.<*> (x Lude..:? "arn")
            Lude.<*> (x Lude..:? "createdAt")
            Lude.<*> (x Lude..:? "category")
            Lude.<*> (x Lude..:? "type")
            Lude.<*> (x Lude..:? "description")
            Lude.<*> (x Lude..: "settings")
            Lude.<*> (x Lude..: "name")
      )
