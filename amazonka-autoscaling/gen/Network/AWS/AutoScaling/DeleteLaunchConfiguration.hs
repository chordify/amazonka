{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE FlexibleInstances          #-}
{-# LANGUAGE NoImplicitPrelude          #-}
{-# LANGUAGE OverloadedStrings          #-}
{-# LANGUAGE RecordWildCards            #-}
{-# LANGUAGE TypeFamilies               #-}

{-# OPTIONS_GHC -w                      #-}

-- Module      : Network.AWS.AutoScaling.DeleteLaunchConfiguration
-- Copyright   : (c) 2013-2014 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : This Source Code Form is subject to the terms of
--               the Mozilla Public License, v. 2.0.
--               A copy of the MPL can be found in the LICENSE file or
--               you can obtain it at http://mozilla.org/MPL/2.0/.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)

-- | Deletes the specified LaunchConfiguration. The specified launch
-- configuration must not be attached to an Auto Scaling group. When this call
-- completes, the launch configuration is no longer available for use.
module Network.AWS.AutoScaling.DeleteLaunchConfiguration
    (
    -- * Request
      DeleteLaunchConfiguration
    -- ** Request constructor
    , deleteLaunchConfiguration
    -- ** Request lenses
    , dlcLaunchConfigurationName

    -- * Response
    , DeleteLaunchConfigurationResponse
    -- ** Response constructor
    , deleteLaunchConfigurationResponse
    ) where

import Network.AWS.Prelude
import Network.AWS.Request.Query
import Network.AWS.AutoScaling.Types
import qualified GHC.Exts

newtype DeleteLaunchConfiguration = DeleteLaunchConfiguration
    { _dlcLaunchConfigurationName :: Text
    } deriving (Eq, Ord, Show, Generic, Monoid, IsString)

-- | 'DeleteLaunchConfiguration' constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'dlcLaunchConfigurationName' @::@ 'Text'
--
deleteLaunchConfiguration :: Text -- ^ 'dlcLaunchConfigurationName'
                          -> DeleteLaunchConfiguration
deleteLaunchConfiguration p1 = DeleteLaunchConfiguration
    { _dlcLaunchConfigurationName = p1
    }

-- | The name of the launch configuration.
dlcLaunchConfigurationName :: Lens' DeleteLaunchConfiguration Text
dlcLaunchConfigurationName =
    lens _dlcLaunchConfigurationName
        (\s a -> s { _dlcLaunchConfigurationName = a })

instance ToQuery DeleteLaunchConfiguration

instance ToPath DeleteLaunchConfiguration where
    toPath = const "/"

data DeleteLaunchConfigurationResponse = DeleteLaunchConfigurationResponse
    deriving (Eq, Ord, Show, Generic)

-- | 'DeleteLaunchConfigurationResponse' constructor.
deleteLaunchConfigurationResponse :: DeleteLaunchConfigurationResponse
deleteLaunchConfigurationResponse = DeleteLaunchConfigurationResponse

instance AWSRequest DeleteLaunchConfiguration where
    type Sv DeleteLaunchConfiguration = AutoScaling
    type Rs DeleteLaunchConfiguration = DeleteLaunchConfigurationResponse

    request  = post "DeleteLaunchConfiguration"
    response = nullaryResponse DeleteLaunchConfigurationResponse
