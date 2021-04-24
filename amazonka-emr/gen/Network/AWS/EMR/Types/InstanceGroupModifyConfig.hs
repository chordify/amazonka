{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EMR.Types.InstanceGroupModifyConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.InstanceGroupModifyConfig where

import Network.AWS.EMR.Types.Configuration
import Network.AWS.EMR.Types.ShrinkPolicy
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Modify the size or configurations of an instance group.
--
--
--
-- /See:/ 'instanceGroupModifyConfig' smart constructor.
data InstanceGroupModifyConfig = InstanceGroupModifyConfig'
  { _igmcConfigurations ::
      !( Maybe
           [Configuration]
       ),
    _igmcShrinkPolicy ::
      !( Maybe
           ShrinkPolicy
       ),
    _igmcEC2InstanceIdsToTerminate ::
      !(Maybe [Text]),
    _igmcInstanceCount ::
      !(Maybe Int),
    _igmcInstanceGroupId ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'InstanceGroupModifyConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmcConfigurations' - A list of new or modified configurations to apply for an instance group.
--
-- * 'igmcShrinkPolicy' - Policy for customizing shrink operations.
--
-- * 'igmcEC2InstanceIdsToTerminate' - The EC2 InstanceIds to terminate. After you terminate the instances, the instance group will not return to its original requested size.
--
-- * 'igmcInstanceCount' - Target size for the instance group.
--
-- * 'igmcInstanceGroupId' - Unique ID of the instance group to modify.
instanceGroupModifyConfig ::
  -- | 'igmcInstanceGroupId'
  Text ->
  InstanceGroupModifyConfig
instanceGroupModifyConfig pInstanceGroupId_ =
  InstanceGroupModifyConfig'
    { _igmcConfigurations =
        Nothing,
      _igmcShrinkPolicy = Nothing,
      _igmcEC2InstanceIdsToTerminate = Nothing,
      _igmcInstanceCount = Nothing,
      _igmcInstanceGroupId = pInstanceGroupId_
    }

-- | A list of new or modified configurations to apply for an instance group.
igmcConfigurations :: Lens' InstanceGroupModifyConfig [Configuration]
igmcConfigurations = lens _igmcConfigurations (\s a -> s {_igmcConfigurations = a}) . _Default . _Coerce

-- | Policy for customizing shrink operations.
igmcShrinkPolicy :: Lens' InstanceGroupModifyConfig (Maybe ShrinkPolicy)
igmcShrinkPolicy = lens _igmcShrinkPolicy (\s a -> s {_igmcShrinkPolicy = a})

-- | The EC2 InstanceIds to terminate. After you terminate the instances, the instance group will not return to its original requested size.
igmcEC2InstanceIdsToTerminate :: Lens' InstanceGroupModifyConfig [Text]
igmcEC2InstanceIdsToTerminate = lens _igmcEC2InstanceIdsToTerminate (\s a -> s {_igmcEC2InstanceIdsToTerminate = a}) . _Default . _Coerce

-- | Target size for the instance group.
igmcInstanceCount :: Lens' InstanceGroupModifyConfig (Maybe Int)
igmcInstanceCount = lens _igmcInstanceCount (\s a -> s {_igmcInstanceCount = a})

-- | Unique ID of the instance group to modify.
igmcInstanceGroupId :: Lens' InstanceGroupModifyConfig Text
igmcInstanceGroupId = lens _igmcInstanceGroupId (\s a -> s {_igmcInstanceGroupId = a})

instance Hashable InstanceGroupModifyConfig

instance NFData InstanceGroupModifyConfig

instance ToJSON InstanceGroupModifyConfig where
  toJSON InstanceGroupModifyConfig' {..} =
    object
      ( catMaybes
          [ ("Configurations" .=) <$> _igmcConfigurations,
            ("ShrinkPolicy" .=) <$> _igmcShrinkPolicy,
            ("EC2InstanceIdsToTerminate" .=)
              <$> _igmcEC2InstanceIdsToTerminate,
            ("InstanceCount" .=) <$> _igmcInstanceCount,
            Just ("InstanceGroupId" .= _igmcInstanceGroupId)
          ]
      )
