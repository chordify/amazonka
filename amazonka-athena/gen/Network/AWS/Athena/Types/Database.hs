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
-- Module      : Network.AWS.Athena.Types.Database
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Athena.Types.Database where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains metadata information for a database in a data catalog.
--
-- /See:/ 'newDatabase' smart constructor.
data Database = Database'
  { -- | An optional description of the database.
    description :: Prelude.Maybe Prelude.Text,
    -- | A set of custom key\/value pairs.
    parameters :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The name of the database.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'Database' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'description', 'database_description' - An optional description of the database.
--
-- 'parameters', 'database_parameters' - A set of custom key\/value pairs.
--
-- 'name', 'database_name' - The name of the database.
newDatabase ::
  -- | 'name'
  Prelude.Text ->
  Database
newDatabase pName_ =
  Database'
    { description = Prelude.Nothing,
      parameters = Prelude.Nothing,
      name = pName_
    }

-- | An optional description of the database.
database_description :: Lens.Lens' Database (Prelude.Maybe Prelude.Text)
database_description = Lens.lens (\Database' {description} -> description) (\s@Database' {} a -> s {description = a} :: Database)

-- | A set of custom key\/value pairs.
database_parameters :: Lens.Lens' Database (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
database_parameters = Lens.lens (\Database' {parameters} -> parameters) (\s@Database' {} a -> s {parameters = a} :: Database) Prelude.. Lens.mapping Prelude._Coerce

-- | The name of the database.
database_name :: Lens.Lens' Database Prelude.Text
database_name = Lens.lens (\Database' {name} -> name) (\s@Database' {} a -> s {name = a} :: Database)

instance Prelude.FromJSON Database where
  parseJSON =
    Prelude.withObject
      "Database"
      ( \x ->
          Database'
            Prelude.<$> (x Prelude..:? "Description")
            Prelude.<*> ( x Prelude..:? "Parameters"
                            Prelude..!= Prelude.mempty
                        )
            Prelude.<*> (x Prelude..: "Name")
      )

instance Prelude.Hashable Database

instance Prelude.NFData Database
