{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.APIGateway.Types.SDKConfigurationProperty
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.APIGateway.Types.SDKConfigurationProperty where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | A configuration property of an SDK type.
--
--
--
-- /See:/ 'sdkConfigurationProperty' smart constructor.
data SDKConfigurationProperty = SDKConfigurationProperty'
  { _scpRequired ::
      !(Maybe Bool),
    _scpFriendlyName ::
      !(Maybe Text),
    _scpName ::
      !(Maybe Text),
    _scpDescription ::
      !(Maybe Text),
    _scpDefaultValue ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'SDKConfigurationProperty' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scpRequired' - A boolean flag of an 'SdkType' configuration property to indicate if the associated SDK configuration property is required (@true@ ) or not (@false@ ).
--
-- * 'scpFriendlyName' - The user-friendly name of an 'SdkType' configuration property.
--
-- * 'scpName' - The name of a an 'SdkType' configuration property.
--
-- * 'scpDescription' - The description of an 'SdkType' configuration property.
--
-- * 'scpDefaultValue' - The default value of an 'SdkType' configuration property.
sdkConfigurationProperty ::
  SDKConfigurationProperty
sdkConfigurationProperty =
  SDKConfigurationProperty'
    { _scpRequired = Nothing,
      _scpFriendlyName = Nothing,
      _scpName = Nothing,
      _scpDescription = Nothing,
      _scpDefaultValue = Nothing
    }

-- | A boolean flag of an 'SdkType' configuration property to indicate if the associated SDK configuration property is required (@true@ ) or not (@false@ ).
scpRequired :: Lens' SDKConfigurationProperty (Maybe Bool)
scpRequired = lens _scpRequired (\s a -> s {_scpRequired = a})

-- | The user-friendly name of an 'SdkType' configuration property.
scpFriendlyName :: Lens' SDKConfigurationProperty (Maybe Text)
scpFriendlyName = lens _scpFriendlyName (\s a -> s {_scpFriendlyName = a})

-- | The name of a an 'SdkType' configuration property.
scpName :: Lens' SDKConfigurationProperty (Maybe Text)
scpName = lens _scpName (\s a -> s {_scpName = a})

-- | The description of an 'SdkType' configuration property.
scpDescription :: Lens' SDKConfigurationProperty (Maybe Text)
scpDescription = lens _scpDescription (\s a -> s {_scpDescription = a})

-- | The default value of an 'SdkType' configuration property.
scpDefaultValue :: Lens' SDKConfigurationProperty (Maybe Text)
scpDefaultValue = lens _scpDefaultValue (\s a -> s {_scpDefaultValue = a})

instance FromJSON SDKConfigurationProperty where
  parseJSON =
    withObject
      "SDKConfigurationProperty"
      ( \x ->
          SDKConfigurationProperty'
            <$> (x .:? "required")
            <*> (x .:? "friendlyName")
            <*> (x .:? "name")
            <*> (x .:? "description")
            <*> (x .:? "defaultValue")
      )

instance Hashable SDKConfigurationProperty

instance NFData SDKConfigurationProperty
