{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.Column
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.Column
  ( Column (..),

    -- * Smart constructor
    mkColumn,

    -- * Lenses
    cParameters,
    cType,
    cComment,
    cName,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | A column in a @Table@ .
--
-- /See:/ 'mkColumn' smart constructor.
data Column = Column'
  { parameters ::
      Lude.Maybe (Lude.HashMap Lude.Text (Lude.Text)),
    type' :: Lude.Maybe Lude.Text,
    comment :: Lude.Maybe Lude.Text,
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

-- | Creates a value of 'Column' with the minimum fields required to make a request.
--
-- * 'comment' - A free-form text comment.
-- * 'name' - The name of the @Column@ .
-- * 'parameters' - These key-value pairs define properties associated with the column.
-- * 'type'' - The data type of the @Column@ .
mkColumn ::
  -- | 'name'
  Lude.Text ->
  Column
mkColumn pName_ =
  Column'
    { parameters = Lude.Nothing,
      type' = Lude.Nothing,
      comment = Lude.Nothing,
      name = pName_
    }

-- | These key-value pairs define properties associated with the column.
--
-- /Note:/ Consider using 'parameters' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cParameters :: Lens.Lens' Column (Lude.Maybe (Lude.HashMap Lude.Text (Lude.Text)))
cParameters = Lens.lens (parameters :: Column -> Lude.Maybe (Lude.HashMap Lude.Text (Lude.Text))) (\s a -> s {parameters = a} :: Column)
{-# DEPRECATED cParameters "Use generic-lens or generic-optics with 'parameters' instead." #-}

-- | The data type of the @Column@ .
--
-- /Note:/ Consider using 'type'' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cType :: Lens.Lens' Column (Lude.Maybe Lude.Text)
cType = Lens.lens (type' :: Column -> Lude.Maybe Lude.Text) (\s a -> s {type' = a} :: Column)
{-# DEPRECATED cType "Use generic-lens or generic-optics with 'type'' instead." #-}

-- | A free-form text comment.
--
-- /Note:/ Consider using 'comment' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cComment :: Lens.Lens' Column (Lude.Maybe Lude.Text)
cComment = Lens.lens (comment :: Column -> Lude.Maybe Lude.Text) (\s a -> s {comment = a} :: Column)
{-# DEPRECATED cComment "Use generic-lens or generic-optics with 'comment' instead." #-}

-- | The name of the @Column@ .
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cName :: Lens.Lens' Column Lude.Text
cName = Lens.lens (name :: Column -> Lude.Text) (\s a -> s {name = a} :: Column)
{-# DEPRECATED cName "Use generic-lens or generic-optics with 'name' instead." #-}

instance Lude.FromJSON Column where
  parseJSON =
    Lude.withObject
      "Column"
      ( \x ->
          Column'
            Lude.<$> (x Lude..:? "Parameters" Lude..!= Lude.mempty)
            Lude.<*> (x Lude..:? "Type")
            Lude.<*> (x Lude..:? "Comment")
            Lude.<*> (x Lude..: "Name")
      )

instance Lude.ToJSON Column where
  toJSON Column' {..} =
    Lude.object
      ( Lude.catMaybes
          [ ("Parameters" Lude..=) Lude.<$> parameters,
            ("Type" Lude..=) Lude.<$> type',
            ("Comment" Lude..=) Lude.<$> comment,
            Lude.Just ("Name" Lude..= name)
          ]
      )
