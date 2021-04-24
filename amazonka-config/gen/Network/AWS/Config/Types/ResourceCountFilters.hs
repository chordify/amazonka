{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Config.Types.ResourceCountFilters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Config.Types.ResourceCountFilters where

import Network.AWS.Config.Types.ResourceType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Filters the resource count based on account ID, region, and resource type.
--
--
--
-- /See:/ 'resourceCountFilters' smart constructor.
data ResourceCountFilters = ResourceCountFilters'
  { _rcfAccountId ::
      !(Maybe Text),
    _rcfResourceType ::
      !(Maybe ResourceType),
    _rcfRegion :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ResourceCountFilters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcfAccountId' - The 12-digit ID of the account.
--
-- * 'rcfResourceType' - The type of the AWS resource.
--
-- * 'rcfRegion' - The region where the account is located.
resourceCountFilters ::
  ResourceCountFilters
resourceCountFilters =
  ResourceCountFilters'
    { _rcfAccountId = Nothing,
      _rcfResourceType = Nothing,
      _rcfRegion = Nothing
    }

-- | The 12-digit ID of the account.
rcfAccountId :: Lens' ResourceCountFilters (Maybe Text)
rcfAccountId = lens _rcfAccountId (\s a -> s {_rcfAccountId = a})

-- | The type of the AWS resource.
rcfResourceType :: Lens' ResourceCountFilters (Maybe ResourceType)
rcfResourceType = lens _rcfResourceType (\s a -> s {_rcfResourceType = a})

-- | The region where the account is located.
rcfRegion :: Lens' ResourceCountFilters (Maybe Text)
rcfRegion = lens _rcfRegion (\s a -> s {_rcfRegion = a})

instance Hashable ResourceCountFilters

instance NFData ResourceCountFilters

instance ToJSON ResourceCountFilters where
  toJSON ResourceCountFilters' {..} =
    object
      ( catMaybes
          [ ("AccountId" .=) <$> _rcfAccountId,
            ("ResourceType" .=) <$> _rcfResourceType,
            ("Region" .=) <$> _rcfRegion
          ]
      )
