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
-- Module      : Network.AWS.SSM.Types.OpsEntity
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.OpsEntity where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.SSM.Types.OpsEntityItem

-- | The result of the query.
--
-- /See:/ 'newOpsEntity' smart constructor.
data OpsEntity = OpsEntity'
  { -- | The data returned by the query.
    data' :: Prelude.Maybe (Prelude.HashMap Prelude.Text OpsEntityItem),
    -- | The query ID.
    id :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'OpsEntity' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'data'', 'opsEntity_data' - The data returned by the query.
--
-- 'id', 'opsEntity_id' - The query ID.
newOpsEntity ::
  OpsEntity
newOpsEntity =
  OpsEntity'
    { data' = Prelude.Nothing,
      id = Prelude.Nothing
    }

-- | The data returned by the query.
opsEntity_data :: Lens.Lens' OpsEntity (Prelude.Maybe (Prelude.HashMap Prelude.Text OpsEntityItem))
opsEntity_data = Lens.lens (\OpsEntity' {data'} -> data') (\s@OpsEntity' {} a -> s {data' = a} :: OpsEntity) Prelude.. Lens.mapping Prelude._Coerce

-- | The query ID.
opsEntity_id :: Lens.Lens' OpsEntity (Prelude.Maybe Prelude.Text)
opsEntity_id = Lens.lens (\OpsEntity' {id} -> id) (\s@OpsEntity' {} a -> s {id = a} :: OpsEntity)

instance Prelude.FromJSON OpsEntity where
  parseJSON =
    Prelude.withObject
      "OpsEntity"
      ( \x ->
          OpsEntity'
            Prelude.<$> (x Prelude..:? "Data" Prelude..!= Prelude.mempty)
            Prelude.<*> (x Prelude..:? "Id")
      )

instance Prelude.Hashable OpsEntity

instance Prelude.NFData OpsEntity
