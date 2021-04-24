{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EMR.Types.InstanceGroupStateChangeReason
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.InstanceGroupStateChangeReason where

import Network.AWS.EMR.Types.InstanceGroupStateChangeReasonCode
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The status change reason details for the instance group.
--
--
--
-- /See:/ 'instanceGroupStateChangeReason' smart constructor.
data InstanceGroupStateChangeReason = InstanceGroupStateChangeReason'
  { _igscrMessage ::
      !( Maybe
           Text
       ),
    _igscrCode ::
      !( Maybe
           InstanceGroupStateChangeReasonCode
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'InstanceGroupStateChangeReason' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igscrMessage' - The status change reason description.
--
-- * 'igscrCode' - The programmable code for the state change reason.
instanceGroupStateChangeReason ::
  InstanceGroupStateChangeReason
instanceGroupStateChangeReason =
  InstanceGroupStateChangeReason'
    { _igscrMessage =
        Nothing,
      _igscrCode = Nothing
    }

-- | The status change reason description.
igscrMessage :: Lens' InstanceGroupStateChangeReason (Maybe Text)
igscrMessage = lens _igscrMessage (\s a -> s {_igscrMessage = a})

-- | The programmable code for the state change reason.
igscrCode :: Lens' InstanceGroupStateChangeReason (Maybe InstanceGroupStateChangeReasonCode)
igscrCode = lens _igscrCode (\s a -> s {_igscrCode = a})

instance FromJSON InstanceGroupStateChangeReason where
  parseJSON =
    withObject
      "InstanceGroupStateChangeReason"
      ( \x ->
          InstanceGroupStateChangeReason'
            <$> (x .:? "Message") <*> (x .:? "Code")
      )

instance Hashable InstanceGroupStateChangeReason

instance NFData InstanceGroupStateChangeReason
