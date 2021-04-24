{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Config.PutConfigRule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds or updates an AWS Config rule for evaluating whether your AWS resources comply with your desired configurations.
--
--
-- You can use this action for custom AWS Config rules and AWS managed Config rules. A custom AWS Config rule is a rule that you develop and maintain. An AWS managed Config rule is a customizable, predefined rule that AWS Config provides.
--
-- If you are adding a new custom AWS Config rule, you must first create the AWS Lambda function that the rule invokes to evaluate your resources. When you use the @PutConfigRule@ action to add the rule to AWS Config, you must specify the Amazon Resource Name (ARN) that AWS Lambda assigns to the function. Specify the ARN for the @SourceIdentifier@ key. This key is part of the @Source@ object, which is part of the @ConfigRule@ object.
--
-- If you are adding an AWS managed Config rule, specify the rule's identifier for the @SourceIdentifier@ key. To reference AWS managed Config rule identifiers, see <https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_use-managed-rules.html About AWS Managed Config Rules> .
--
-- For any new rule that you add, specify the @ConfigRuleName@ in the @ConfigRule@ object. Do not specify the @ConfigRuleArn@ or the @ConfigRuleId@ . These values are generated by AWS Config for new rules.
--
-- If you are updating a rule that you added previously, you can specify the rule by @ConfigRuleName@ , @ConfigRuleId@ , or @ConfigRuleArn@ in the @ConfigRule@ data type that you use in this request.
--
-- The maximum number of rules that AWS Config supports is 150.
--
-- For information about requesting a rule limit increase, see <http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_config AWS Config Limits> in the /AWS General Reference Guide/ .
--
-- For more information about developing and using AWS Config rules, see <https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config.html Evaluating AWS Resource Configurations with AWS Config> in the /AWS Config Developer Guide/ .
module Network.AWS.Config.PutConfigRule
  ( -- * Creating a Request
    putConfigRule,
    PutConfigRule,

    -- * Request Lenses
    pcrTags,
    pcrConfigRule,

    -- * Destructuring the Response
    putConfigRuleResponse,
    PutConfigRuleResponse,
  )
where

import Network.AWS.Config.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'putConfigRule' smart constructor.
data PutConfigRule = PutConfigRule'
  { _pcrTags ::
      !(Maybe [Tag]),
    _pcrConfigRule :: !ConfigRule
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PutConfigRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcrTags' - An array of tag object.
--
-- * 'pcrConfigRule' - The rule that you want to add to your account.
putConfigRule ::
  -- | 'pcrConfigRule'
  ConfigRule ->
  PutConfigRule
putConfigRule pConfigRule_ =
  PutConfigRule'
    { _pcrTags = Nothing,
      _pcrConfigRule = pConfigRule_
    }

-- | An array of tag object.
pcrTags :: Lens' PutConfigRule [Tag]
pcrTags = lens _pcrTags (\s a -> s {_pcrTags = a}) . _Default . _Coerce

-- | The rule that you want to add to your account.
pcrConfigRule :: Lens' PutConfigRule ConfigRule
pcrConfigRule = lens _pcrConfigRule (\s a -> s {_pcrConfigRule = a})

instance AWSRequest PutConfigRule where
  type Rs PutConfigRule = PutConfigRuleResponse
  request = postJSON config
  response = receiveNull PutConfigRuleResponse'

instance Hashable PutConfigRule

instance NFData PutConfigRule

instance ToHeaders PutConfigRule where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("StarlingDoveService.PutConfigRule" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON PutConfigRule where
  toJSON PutConfigRule' {..} =
    object
      ( catMaybes
          [ ("Tags" .=) <$> _pcrTags,
            Just ("ConfigRule" .= _pcrConfigRule)
          ]
      )

instance ToPath PutConfigRule where
  toPath = const "/"

instance ToQuery PutConfigRule where
  toQuery = const mempty

-- | /See:/ 'putConfigRuleResponse' smart constructor.
data PutConfigRuleResponse = PutConfigRuleResponse'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'PutConfigRuleResponse' with the minimum fields required to make a request.
putConfigRuleResponse ::
  PutConfigRuleResponse
putConfigRuleResponse = PutConfigRuleResponse'

instance NFData PutConfigRuleResponse
