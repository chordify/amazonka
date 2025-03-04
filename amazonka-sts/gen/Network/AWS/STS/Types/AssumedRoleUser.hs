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
-- Module      : Network.AWS.STS.Types.AssumedRoleUser
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.STS.Types.AssumedRoleUser where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The identifiers for the temporary security credentials that the
-- operation returns.
--
-- /See:/ 'newAssumedRoleUser' smart constructor.
data AssumedRoleUser = AssumedRoleUser'
  { -- | A unique identifier that contains the role ID and the role session name
    -- of the role that is being assumed. The role ID is generated by AWS when
    -- the role is created.
    assumedRoleId :: Prelude.Text,
    -- | The ARN of the temporary security credentials that are returned from the
    -- AssumeRole action. For more information about ARNs and how to use them
    -- in policies, see
    -- <https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html IAM Identifiers>
    -- in the /IAM User Guide/.
    arn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'AssumedRoleUser' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'assumedRoleId', 'assumedRoleUser_assumedRoleId' - A unique identifier that contains the role ID and the role session name
-- of the role that is being assumed. The role ID is generated by AWS when
-- the role is created.
--
-- 'arn', 'assumedRoleUser_arn' - The ARN of the temporary security credentials that are returned from the
-- AssumeRole action. For more information about ARNs and how to use them
-- in policies, see
-- <https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html IAM Identifiers>
-- in the /IAM User Guide/.
newAssumedRoleUser ::
  -- | 'assumedRoleId'
  Prelude.Text ->
  -- | 'arn'
  Prelude.Text ->
  AssumedRoleUser
newAssumedRoleUser pAssumedRoleId_ pArn_ =
  AssumedRoleUser'
    { assumedRoleId = pAssumedRoleId_,
      arn = pArn_
    }

-- | A unique identifier that contains the role ID and the role session name
-- of the role that is being assumed. The role ID is generated by AWS when
-- the role is created.
assumedRoleUser_assumedRoleId :: Lens.Lens' AssumedRoleUser Prelude.Text
assumedRoleUser_assumedRoleId = Lens.lens (\AssumedRoleUser' {assumedRoleId} -> assumedRoleId) (\s@AssumedRoleUser' {} a -> s {assumedRoleId = a} :: AssumedRoleUser)

-- | The ARN of the temporary security credentials that are returned from the
-- AssumeRole action. For more information about ARNs and how to use them
-- in policies, see
-- <https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html IAM Identifiers>
-- in the /IAM User Guide/.
assumedRoleUser_arn :: Lens.Lens' AssumedRoleUser Prelude.Text
assumedRoleUser_arn = Lens.lens (\AssumedRoleUser' {arn} -> arn) (\s@AssumedRoleUser' {} a -> s {arn = a} :: AssumedRoleUser)

instance Prelude.FromXML AssumedRoleUser where
  parseXML x =
    AssumedRoleUser'
      Prelude.<$> (x Prelude..@ "AssumedRoleId")
      Prelude.<*> (x Prelude..@ "Arn")

instance Prelude.Hashable AssumedRoleUser

instance Prelude.NFData AssumedRoleUser
