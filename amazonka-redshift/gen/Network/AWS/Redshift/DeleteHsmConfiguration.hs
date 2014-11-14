{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE FlexibleInstances          #-}
{-# LANGUAGE NoImplicitPrelude          #-}
{-# LANGUAGE OverloadedStrings          #-}
{-# LANGUAGE RecordWildCards            #-}
{-# LANGUAGE TypeFamilies               #-}

{-# OPTIONS_GHC -w                      #-}

-- Module      : Network.AWS.Redshift.DeleteHsmConfiguration
-- Copyright   : (c) 2013-2014 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : This Source Code Form is subject to the terms of
--               the Mozilla Public License, v. 2.0.
--               A copy of the MPL can be found in the LICENSE file or
--               you can obtain it at http://mozilla.org/MPL/2.0/.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)

-- | Deletes the specified Amazon Redshift HSM configuration.
module Network.AWS.Redshift.DeleteHsmConfiguration
    (
    -- * Request
      DeleteHsmConfiguration
    -- ** Request constructor
    , deleteHsmConfiguration
    -- ** Request lenses
    , dhcHsmConfigurationIdentifier

    -- * Response
    , DeleteHsmConfigurationResponse
    -- ** Response constructor
    , deleteHsmConfigurationResponse
    ) where

import Network.AWS.Prelude
import Network.AWS.Request.Query
import Network.AWS.Redshift.Types
import qualified GHC.Exts

newtype DeleteHsmConfiguration = DeleteHsmConfiguration
    { _dhcHsmConfigurationIdentifier :: Text
    } deriving (Eq, Ord, Show, Generic, Monoid, IsString)

-- | 'DeleteHsmConfiguration' constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'dhcHsmConfigurationIdentifier' @::@ 'Text'
--
deleteHsmConfiguration :: Text -- ^ 'dhcHsmConfigurationIdentifier'
                       -> DeleteHsmConfiguration
deleteHsmConfiguration p1 = DeleteHsmConfiguration
    { _dhcHsmConfigurationIdentifier = p1
    }

-- | The identifier of the Amazon Redshift HSM configuration to be deleted.
dhcHsmConfigurationIdentifier :: Lens' DeleteHsmConfiguration Text
dhcHsmConfigurationIdentifier =
    lens _dhcHsmConfigurationIdentifier
        (\s a -> s { _dhcHsmConfigurationIdentifier = a })

instance ToQuery DeleteHsmConfiguration

instance ToPath DeleteHsmConfiguration where
    toPath = const "/"

data DeleteHsmConfigurationResponse = DeleteHsmConfigurationResponse
    deriving (Eq, Ord, Show, Generic)

-- | 'DeleteHsmConfigurationResponse' constructor.
deleteHsmConfigurationResponse :: DeleteHsmConfigurationResponse
deleteHsmConfigurationResponse = DeleteHsmConfigurationResponse

instance AWSRequest DeleteHsmConfiguration where
    type Sv DeleteHsmConfiguration = Redshift
    type Rs DeleteHsmConfiguration = DeleteHsmConfigurationResponse

    request  = post "DeleteHsmConfiguration"
    response = nullaryResponse DeleteHsmConfigurationResponse
