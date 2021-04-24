{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Config.Types.ComplianceByConfigRule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Config.Types.ComplianceByConfigRule where

import Network.AWS.Config.Types.Compliance
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Indicates whether an AWS Config rule is compliant. A rule is compliant if all of the resources that the rule evaluated comply with it. A rule is noncompliant if any of these resources do not comply.
--
--
--
-- /See:/ 'complianceByConfigRule' smart constructor.
data ComplianceByConfigRule = ComplianceByConfigRule'
  { _cbcrConfigRuleName ::
      !(Maybe Text),
    _cbcrCompliance ::
      !(Maybe Compliance)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ComplianceByConfigRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cbcrConfigRuleName' - The name of the AWS Config rule.
--
-- * 'cbcrCompliance' - Indicates whether the AWS Config rule is compliant.
complianceByConfigRule ::
  ComplianceByConfigRule
complianceByConfigRule =
  ComplianceByConfigRule'
    { _cbcrConfigRuleName =
        Nothing,
      _cbcrCompliance = Nothing
    }

-- | The name of the AWS Config rule.
cbcrConfigRuleName :: Lens' ComplianceByConfigRule (Maybe Text)
cbcrConfigRuleName = lens _cbcrConfigRuleName (\s a -> s {_cbcrConfigRuleName = a})

-- | Indicates whether the AWS Config rule is compliant.
cbcrCompliance :: Lens' ComplianceByConfigRule (Maybe Compliance)
cbcrCompliance = lens _cbcrCompliance (\s a -> s {_cbcrCompliance = a})

instance FromJSON ComplianceByConfigRule where
  parseJSON =
    withObject
      "ComplianceByConfigRule"
      ( \x ->
          ComplianceByConfigRule'
            <$> (x .:? "ConfigRuleName") <*> (x .:? "Compliance")
      )

instance Hashable ComplianceByConfigRule

instance NFData ComplianceByConfigRule
