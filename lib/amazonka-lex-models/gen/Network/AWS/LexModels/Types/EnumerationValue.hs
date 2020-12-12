{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.LexModels.Types.EnumerationValue
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LexModels.Types.EnumerationValue
  ( EnumerationValue (..),

    -- * Smart constructor
    mkEnumerationValue,

    -- * Lenses
    evSynonyms,
    evValue,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | Each slot type can have a set of values. Each enumeration value represents a value the slot type can take.
--
-- For example, a pizza ordering bot could have a slot type that specifies the type of crust that the pizza should have. The slot type could include the values
--
--     * thick
--
--
--     * thin
--
--
--     * stuffed
--
--
--
-- /See:/ 'mkEnumerationValue' smart constructor.
data EnumerationValue = EnumerationValue'
  { synonyms ::
      Lude.Maybe [Lude.Text],
    value :: Lude.Text
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'EnumerationValue' with the minimum fields required to make a request.
--
-- * 'synonyms' - Additional values related to the slot type value.
-- * 'value' - The value of the slot type.
mkEnumerationValue ::
  -- | 'value'
  Lude.Text ->
  EnumerationValue
mkEnumerationValue pValue_ =
  EnumerationValue' {synonyms = Lude.Nothing, value = pValue_}

-- | Additional values related to the slot type value.
--
-- /Note:/ Consider using 'synonyms' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
evSynonyms :: Lens.Lens' EnumerationValue (Lude.Maybe [Lude.Text])
evSynonyms = Lens.lens (synonyms :: EnumerationValue -> Lude.Maybe [Lude.Text]) (\s a -> s {synonyms = a} :: EnumerationValue)
{-# DEPRECATED evSynonyms "Use generic-lens or generic-optics with 'synonyms' instead." #-}

-- | The value of the slot type.
--
-- /Note:/ Consider using 'value' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
evValue :: Lens.Lens' EnumerationValue Lude.Text
evValue = Lens.lens (value :: EnumerationValue -> Lude.Text) (\s a -> s {value = a} :: EnumerationValue)
{-# DEPRECATED evValue "Use generic-lens or generic-optics with 'value' instead." #-}

instance Lude.FromJSON EnumerationValue where
  parseJSON =
    Lude.withObject
      "EnumerationValue"
      ( \x ->
          EnumerationValue'
            Lude.<$> (x Lude..:? "synonyms" Lude..!= Lude.mempty)
            Lude.<*> (x Lude..: "value")
      )

instance Lude.ToJSON EnumerationValue where
  toJSON EnumerationValue' {..} =
    Lude.object
      ( Lude.catMaybes
          [ ("synonyms" Lude..=) Lude.<$> synonyms,
            Lude.Just ("value" Lude..= value)
          ]
      )
