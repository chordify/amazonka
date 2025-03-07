{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.OpsWorksCM.Types.Tag
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.OpsWorksCM.Types.Tag where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | A map that contains tag keys and tag values to attach to an AWS OpsWorks
-- for Chef Automate or AWS OpsWorks for Puppet Enterprise server. Leading
-- and trailing white spaces are trimmed from both the key and value. A
-- maximum of 50 user-applied tags is allowed for tag-supported AWS
-- OpsWorks-CM resources.
--
-- /See:/ 'newTag' smart constructor.
data Tag = Tag'
  { -- | A tag key, such as @Stage@ or @Name@. A tag key cannot be empty. The key
    -- can be a maximum of 127 characters, and can contain only Unicode
    -- letters, numbers, or separators, or the following special characters:
    -- @+ - = . _ : \/@
    key :: Prelude.Text,
    -- | An optional tag value, such as @Production@ or @test-owcm-server@. The
    -- value can be a maximum of 255 characters, and contain only Unicode
    -- letters, numbers, or separators, or the following special characters:
    -- @+ - = . _ : \/@
    value :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'Tag' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'key', 'tag_key' - A tag key, such as @Stage@ or @Name@. A tag key cannot be empty. The key
-- can be a maximum of 127 characters, and can contain only Unicode
-- letters, numbers, or separators, or the following special characters:
-- @+ - = . _ : \/@
--
-- 'value', 'tag_value' - An optional tag value, such as @Production@ or @test-owcm-server@. The
-- value can be a maximum of 255 characters, and contain only Unicode
-- letters, numbers, or separators, or the following special characters:
-- @+ - = . _ : \/@
newTag ::
  -- | 'key'
  Prelude.Text ->
  -- | 'value'
  Prelude.Text ->
  Tag
newTag pKey_ pValue_ =
  Tag' {key = pKey_, value = pValue_}

-- | A tag key, such as @Stage@ or @Name@. A tag key cannot be empty. The key
-- can be a maximum of 127 characters, and can contain only Unicode
-- letters, numbers, or separators, or the following special characters:
-- @+ - = . _ : \/@
tag_key :: Lens.Lens' Tag Prelude.Text
tag_key = Lens.lens (\Tag' {key} -> key) (\s@Tag' {} a -> s {key = a} :: Tag)

-- | An optional tag value, such as @Production@ or @test-owcm-server@. The
-- value can be a maximum of 255 characters, and contain only Unicode
-- letters, numbers, or separators, or the following special characters:
-- @+ - = . _ : \/@
tag_value :: Lens.Lens' Tag Prelude.Text
tag_value = Lens.lens (\Tag' {value} -> value) (\s@Tag' {} a -> s {value = a} :: Tag)

instance Prelude.FromJSON Tag where
  parseJSON =
    Prelude.withObject
      "Tag"
      ( \x ->
          Tag'
            Prelude.<$> (x Prelude..: "Key")
            Prelude.<*> (x Prelude..: "Value")
      )

instance Prelude.Hashable Tag

instance Prelude.NFData Tag

instance Prelude.ToJSON Tag where
  toJSON Tag' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ Prelude.Just ("Key" Prelude..= key),
            Prelude.Just ("Value" Prelude..= value)
          ]
      )
