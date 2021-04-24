{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MQ.Types.BrokerSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MQ.Types.BrokerSummary where

import Network.AWS.Lens
import Network.AWS.MQ.Types.BrokerState
import Network.AWS.MQ.Types.DeploymentMode
import Network.AWS.MQ.Types.EngineType
import Network.AWS.Prelude

-- | The Amazon Resource Name (ARN) of the broker.
--
-- /See:/ 'brokerSummary' smart constructor.
data BrokerSummary = BrokerSummary'
  { _bsBrokerName ::
      !(Maybe Text),
    _bsBrokerId :: !(Maybe Text),
    _bsEngineType :: !(Maybe EngineType),
    _bsBrokerState :: !(Maybe BrokerState),
    _bsHostInstanceType :: !(Maybe Text),
    _bsBrokerARN :: !(Maybe Text),
    _bsCreated :: !(Maybe POSIX),
    _bsDeploymentMode ::
      !(Maybe DeploymentMode)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'BrokerSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bsBrokerName' - The name of the broker. This value must be unique in your AWS account, 1-50 characters long, must contain only letters, numbers, dashes, and underscores, and must not contain whitespaces, brackets, wildcard characters, or special characters.
--
-- * 'bsBrokerId' - The unique ID that Amazon MQ generates for the broker.
--
-- * 'bsEngineType' - Required. The type of broker engine.
--
-- * 'bsBrokerState' - The status of the broker.
--
-- * 'bsHostInstanceType' - The broker's instance type.
--
-- * 'bsBrokerARN' - The Amazon Resource Name (ARN) of the broker.
--
-- * 'bsCreated' - The time when the broker was created.
--
-- * 'bsDeploymentMode' - Required. The deployment mode of the broker.
brokerSummary ::
  BrokerSummary
brokerSummary =
  BrokerSummary'
    { _bsBrokerName = Nothing,
      _bsBrokerId = Nothing,
      _bsEngineType = Nothing,
      _bsBrokerState = Nothing,
      _bsHostInstanceType = Nothing,
      _bsBrokerARN = Nothing,
      _bsCreated = Nothing,
      _bsDeploymentMode = Nothing
    }

-- | The name of the broker. This value must be unique in your AWS account, 1-50 characters long, must contain only letters, numbers, dashes, and underscores, and must not contain whitespaces, brackets, wildcard characters, or special characters.
bsBrokerName :: Lens' BrokerSummary (Maybe Text)
bsBrokerName = lens _bsBrokerName (\s a -> s {_bsBrokerName = a})

-- | The unique ID that Amazon MQ generates for the broker.
bsBrokerId :: Lens' BrokerSummary (Maybe Text)
bsBrokerId = lens _bsBrokerId (\s a -> s {_bsBrokerId = a})

-- | Required. The type of broker engine.
bsEngineType :: Lens' BrokerSummary (Maybe EngineType)
bsEngineType = lens _bsEngineType (\s a -> s {_bsEngineType = a})

-- | The status of the broker.
bsBrokerState :: Lens' BrokerSummary (Maybe BrokerState)
bsBrokerState = lens _bsBrokerState (\s a -> s {_bsBrokerState = a})

-- | The broker's instance type.
bsHostInstanceType :: Lens' BrokerSummary (Maybe Text)
bsHostInstanceType = lens _bsHostInstanceType (\s a -> s {_bsHostInstanceType = a})

-- | The Amazon Resource Name (ARN) of the broker.
bsBrokerARN :: Lens' BrokerSummary (Maybe Text)
bsBrokerARN = lens _bsBrokerARN (\s a -> s {_bsBrokerARN = a})

-- | The time when the broker was created.
bsCreated :: Lens' BrokerSummary (Maybe UTCTime)
bsCreated = lens _bsCreated (\s a -> s {_bsCreated = a}) . mapping _Time

-- | Required. The deployment mode of the broker.
bsDeploymentMode :: Lens' BrokerSummary (Maybe DeploymentMode)
bsDeploymentMode = lens _bsDeploymentMode (\s a -> s {_bsDeploymentMode = a})

instance FromJSON BrokerSummary where
  parseJSON =
    withObject
      "BrokerSummary"
      ( \x ->
          BrokerSummary'
            <$> (x .:? "brokerName")
            <*> (x .:? "brokerId")
            <*> (x .:? "engineType")
            <*> (x .:? "brokerState")
            <*> (x .:? "hostInstanceType")
            <*> (x .:? "brokerArn")
            <*> (x .:? "created")
            <*> (x .:? "deploymentMode")
      )

instance Hashable BrokerSummary

instance NFData BrokerSummary
