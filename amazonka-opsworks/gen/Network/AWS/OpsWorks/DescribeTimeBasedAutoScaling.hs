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
-- Module      : Network.AWS.OpsWorks.DescribeTimeBasedAutoScaling
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes time-based auto scaling configurations for specified instances.
--
--
-- __Required Permissions__ : To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see <https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html Managing User Permissions> .
module Network.AWS.OpsWorks.DescribeTimeBasedAutoScaling
  ( -- * Creating a Request
    describeTimeBasedAutoScaling,
    DescribeTimeBasedAutoScaling,

    -- * Request Lenses
    dtbasInstanceIds,

    -- * Destructuring the Response
    describeTimeBasedAutoScalingResponse,
    DescribeTimeBasedAutoScalingResponse,

    -- * Response Lenses
    dtbasrrsTimeBasedAutoScalingConfigurations,
    dtbasrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.OpsWorks.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeTimeBasedAutoScaling' smart constructor.
newtype DescribeTimeBasedAutoScaling = DescribeTimeBasedAutoScaling'
  { _dtbasInstanceIds ::
      [Text]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeTimeBasedAutoScaling' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtbasInstanceIds' - An array of instance IDs.
describeTimeBasedAutoScaling ::
  DescribeTimeBasedAutoScaling
describeTimeBasedAutoScaling =
  DescribeTimeBasedAutoScaling'
    { _dtbasInstanceIds =
        mempty
    }

-- | An array of instance IDs.
dtbasInstanceIds :: Lens' DescribeTimeBasedAutoScaling [Text]
dtbasInstanceIds = lens _dtbasInstanceIds (\s a -> s {_dtbasInstanceIds = a}) . _Coerce

instance AWSRequest DescribeTimeBasedAutoScaling where
  type
    Rs DescribeTimeBasedAutoScaling =
      DescribeTimeBasedAutoScalingResponse
  request = postJSON opsWorks
  response =
    receiveJSON
      ( \s h x ->
          DescribeTimeBasedAutoScalingResponse'
            <$> ( x .?> "TimeBasedAutoScalingConfigurations"
                    .!@ mempty
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeTimeBasedAutoScaling

instance NFData DescribeTimeBasedAutoScaling

instance ToHeaders DescribeTimeBasedAutoScaling where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "OpsWorks_20130218.DescribeTimeBasedAutoScaling" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeTimeBasedAutoScaling where
  toJSON DescribeTimeBasedAutoScaling' {..} =
    object
      ( catMaybes
          [Just ("InstanceIds" .= _dtbasInstanceIds)]
      )

instance ToPath DescribeTimeBasedAutoScaling where
  toPath = const "/"

instance ToQuery DescribeTimeBasedAutoScaling where
  toQuery = const mempty

-- | Contains the response to a @DescribeTimeBasedAutoScaling@ request.
--
--
--
-- /See:/ 'describeTimeBasedAutoScalingResponse' smart constructor.
data DescribeTimeBasedAutoScalingResponse = DescribeTimeBasedAutoScalingResponse'
  { _dtbasrrsTimeBasedAutoScalingConfigurations ::
      !( Maybe
           [TimeBasedAutoScalingConfiguration]
       ),
    _dtbasrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeTimeBasedAutoScalingResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtbasrrsTimeBasedAutoScalingConfigurations' - An array of @TimeBasedAutoScalingConfiguration@ objects that describe the configuration for the specified instances.
--
-- * 'dtbasrrsResponseStatus' - -- | The response status code.
describeTimeBasedAutoScalingResponse ::
  -- | 'dtbasrrsResponseStatus'
  Int ->
  DescribeTimeBasedAutoScalingResponse
describeTimeBasedAutoScalingResponse pResponseStatus_ =
  DescribeTimeBasedAutoScalingResponse'
    { _dtbasrrsTimeBasedAutoScalingConfigurations =
        Nothing,
      _dtbasrrsResponseStatus =
        pResponseStatus_
    }

-- | An array of @TimeBasedAutoScalingConfiguration@ objects that describe the configuration for the specified instances.
dtbasrrsTimeBasedAutoScalingConfigurations :: Lens' DescribeTimeBasedAutoScalingResponse [TimeBasedAutoScalingConfiguration]
dtbasrrsTimeBasedAutoScalingConfigurations = lens _dtbasrrsTimeBasedAutoScalingConfigurations (\s a -> s {_dtbasrrsTimeBasedAutoScalingConfigurations = a}) . _Default . _Coerce

-- | -- | The response status code.
dtbasrrsResponseStatus :: Lens' DescribeTimeBasedAutoScalingResponse Int
dtbasrrsResponseStatus = lens _dtbasrrsResponseStatus (\s a -> s {_dtbasrrsResponseStatus = a})

instance NFData DescribeTimeBasedAutoScalingResponse
