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
-- Module      : Network.AWS.Inspector.Types.Exclusion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Inspector.Types.Exclusion where

import Network.AWS.Inspector.Types.Attribute
import Network.AWS.Inspector.Types.Scope
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains information about what was excluded from an assessment run.
--
-- /See:/ 'newExclusion' smart constructor.
data Exclusion = Exclusion'
  { -- | The system-defined attributes for the exclusion.
    attributes :: Prelude.Maybe [Attribute],
    -- | The ARN that specifies the exclusion.
    arn :: Prelude.Text,
    -- | The name of the exclusion.
    title :: Prelude.Text,
    -- | The description of the exclusion.
    description :: Prelude.Text,
    -- | The recommendation for the exclusion.
    recommendation :: Prelude.Text,
    -- | The AWS resources for which the exclusion pertains.
    scopes :: Prelude.NonEmpty Scope
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'Exclusion' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'attributes', 'exclusion_attributes' - The system-defined attributes for the exclusion.
--
-- 'arn', 'exclusion_arn' - The ARN that specifies the exclusion.
--
-- 'title', 'exclusion_title' - The name of the exclusion.
--
-- 'description', 'exclusion_description' - The description of the exclusion.
--
-- 'recommendation', 'exclusion_recommendation' - The recommendation for the exclusion.
--
-- 'scopes', 'exclusion_scopes' - The AWS resources for which the exclusion pertains.
newExclusion ::
  -- | 'arn'
  Prelude.Text ->
  -- | 'title'
  Prelude.Text ->
  -- | 'description'
  Prelude.Text ->
  -- | 'recommendation'
  Prelude.Text ->
  -- | 'scopes'
  Prelude.NonEmpty Scope ->
  Exclusion
newExclusion
  pArn_
  pTitle_
  pDescription_
  pRecommendation_
  pScopes_ =
    Exclusion'
      { attributes = Prelude.Nothing,
        arn = pArn_,
        title = pTitle_,
        description = pDescription_,
        recommendation = pRecommendation_,
        scopes = Prelude._Coerce Lens.# pScopes_
      }

-- | The system-defined attributes for the exclusion.
exclusion_attributes :: Lens.Lens' Exclusion (Prelude.Maybe [Attribute])
exclusion_attributes = Lens.lens (\Exclusion' {attributes} -> attributes) (\s@Exclusion' {} a -> s {attributes = a} :: Exclusion) Prelude.. Lens.mapping Prelude._Coerce

-- | The ARN that specifies the exclusion.
exclusion_arn :: Lens.Lens' Exclusion Prelude.Text
exclusion_arn = Lens.lens (\Exclusion' {arn} -> arn) (\s@Exclusion' {} a -> s {arn = a} :: Exclusion)

-- | The name of the exclusion.
exclusion_title :: Lens.Lens' Exclusion Prelude.Text
exclusion_title = Lens.lens (\Exclusion' {title} -> title) (\s@Exclusion' {} a -> s {title = a} :: Exclusion)

-- | The description of the exclusion.
exclusion_description :: Lens.Lens' Exclusion Prelude.Text
exclusion_description = Lens.lens (\Exclusion' {description} -> description) (\s@Exclusion' {} a -> s {description = a} :: Exclusion)

-- | The recommendation for the exclusion.
exclusion_recommendation :: Lens.Lens' Exclusion Prelude.Text
exclusion_recommendation = Lens.lens (\Exclusion' {recommendation} -> recommendation) (\s@Exclusion' {} a -> s {recommendation = a} :: Exclusion)

-- | The AWS resources for which the exclusion pertains.
exclusion_scopes :: Lens.Lens' Exclusion (Prelude.NonEmpty Scope)
exclusion_scopes = Lens.lens (\Exclusion' {scopes} -> scopes) (\s@Exclusion' {} a -> s {scopes = a} :: Exclusion) Prelude.. Prelude._Coerce

instance Prelude.FromJSON Exclusion where
  parseJSON =
    Prelude.withObject
      "Exclusion"
      ( \x ->
          Exclusion'
            Prelude.<$> ( x Prelude..:? "attributes"
                            Prelude..!= Prelude.mempty
                        )
            Prelude.<*> (x Prelude..: "arn")
            Prelude.<*> (x Prelude..: "title")
            Prelude.<*> (x Prelude..: "description")
            Prelude.<*> (x Prelude..: "recommendation")
            Prelude.<*> (x Prelude..: "scopes")
      )

instance Prelude.Hashable Exclusion

instance Prelude.NFData Exclusion
