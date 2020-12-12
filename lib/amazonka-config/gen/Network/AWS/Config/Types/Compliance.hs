{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Config.Types.Compliance
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Config.Types.Compliance
  ( Compliance (..),

    -- * Smart constructor
    mkCompliance,

    -- * Lenses
    cComplianceContributorCount,
    cComplianceType,
  )
where

import Network.AWS.Config.Types.ComplianceContributorCount
import Network.AWS.Config.Types.ComplianceType
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | Indicates whether an AWS resource or AWS Config rule is compliant and provides the number of contributors that affect the compliance.
--
-- /See:/ 'mkCompliance' smart constructor.
data Compliance = Compliance'
  { complianceContributorCount ::
      Lude.Maybe ComplianceContributorCount,
    complianceType :: Lude.Maybe ComplianceType
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'Compliance' with the minimum fields required to make a request.
--
-- * 'complianceContributorCount' - The number of AWS resources or AWS Config rules that cause a result of @NON_COMPLIANT@ , up to a maximum number.
-- * 'complianceType' - Indicates whether an AWS resource or AWS Config rule is compliant.
--
-- A resource is compliant if it complies with all of the AWS Config rules that evaluate it. A resource is noncompliant if it does not comply with one or more of these rules.
-- A rule is compliant if all of the resources that the rule evaluates comply with it. A rule is noncompliant if any of these resources do not comply.
-- AWS Config returns the @INSUFFICIENT_DATA@ value when no evaluation results are available for the AWS resource or AWS Config rule.
-- For the @Compliance@ data type, AWS Config supports only @COMPLIANT@ , @NON_COMPLIANT@ , and @INSUFFICIENT_DATA@ values. AWS Config does not support the @NOT_APPLICABLE@ value for the @Compliance@ data type.
mkCompliance ::
  Compliance
mkCompliance =
  Compliance'
    { complianceContributorCount = Lude.Nothing,
      complianceType = Lude.Nothing
    }

-- | The number of AWS resources or AWS Config rules that cause a result of @NON_COMPLIANT@ , up to a maximum number.
--
-- /Note:/ Consider using 'complianceContributorCount' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cComplianceContributorCount :: Lens.Lens' Compliance (Lude.Maybe ComplianceContributorCount)
cComplianceContributorCount = Lens.lens (complianceContributorCount :: Compliance -> Lude.Maybe ComplianceContributorCount) (\s a -> s {complianceContributorCount = a} :: Compliance)
{-# DEPRECATED cComplianceContributorCount "Use generic-lens or generic-optics with 'complianceContributorCount' instead." #-}

-- | Indicates whether an AWS resource or AWS Config rule is compliant.
--
-- A resource is compliant if it complies with all of the AWS Config rules that evaluate it. A resource is noncompliant if it does not comply with one or more of these rules.
-- A rule is compliant if all of the resources that the rule evaluates comply with it. A rule is noncompliant if any of these resources do not comply.
-- AWS Config returns the @INSUFFICIENT_DATA@ value when no evaluation results are available for the AWS resource or AWS Config rule.
-- For the @Compliance@ data type, AWS Config supports only @COMPLIANT@ , @NON_COMPLIANT@ , and @INSUFFICIENT_DATA@ values. AWS Config does not support the @NOT_APPLICABLE@ value for the @Compliance@ data type.
--
-- /Note:/ Consider using 'complianceType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cComplianceType :: Lens.Lens' Compliance (Lude.Maybe ComplianceType)
cComplianceType = Lens.lens (complianceType :: Compliance -> Lude.Maybe ComplianceType) (\s a -> s {complianceType = a} :: Compliance)
{-# DEPRECATED cComplianceType "Use generic-lens or generic-optics with 'complianceType' instead." #-}

instance Lude.FromJSON Compliance where
  parseJSON =
    Lude.withObject
      "Compliance"
      ( \x ->
          Compliance'
            Lude.<$> (x Lude..:? "ComplianceContributorCount")
            Lude.<*> (x Lude..:? "ComplianceType")
      )
