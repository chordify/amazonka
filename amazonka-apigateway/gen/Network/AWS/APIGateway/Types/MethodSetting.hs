{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.APIGateway.Types.MethodSetting
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.APIGateway.Types.MethodSetting where

import Network.AWS.APIGateway.Types.UnauthorizedCacheControlHeaderStrategy
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Specifies the method setting properties.
--
--
--
-- /See:/ 'methodSetting' smart constructor.
data MethodSetting = MethodSetting'
  { _msDataTraceEnabled ::
      !(Maybe Bool),
    _msRequireAuthorizationForCacheControl ::
      !(Maybe Bool),
    _msCacheDataEncrypted :: !(Maybe Bool),
    _msThrottlingRateLimit :: !(Maybe Double),
    _msThrottlingBurstLimit :: !(Maybe Int),
    _msCacheTtlInSeconds :: !(Maybe Int),
    _msCachingEnabled :: !(Maybe Bool),
    _msUnauthorizedCacheControlHeaderStrategy ::
      !( Maybe
           UnauthorizedCacheControlHeaderStrategy
       ),
    _msLoggingLevel :: !(Maybe Text),
    _msMetricsEnabled :: !(Maybe Bool)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'MethodSetting' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'msDataTraceEnabled' - Specifies whether data trace logging is enabled for this method, which affects the log entries pushed to Amazon CloudWatch Logs. The PATCH path for this setting is @/{method_setting_key}/logging/dataTrace@ , and the value is a Boolean.
--
-- * 'msRequireAuthorizationForCacheControl' - Specifies whether authorization is required for a cache invalidation request. The PATCH path for this setting is @/{method_setting_key}/caching/requireAuthorizationForCacheControl@ , and the value is a Boolean.
--
-- * 'msCacheDataEncrypted' - Specifies whether the cached responses are encrypted. The PATCH path for this setting is @/{method_setting_key}/caching/dataEncrypted@ , and the value is a Boolean.
--
-- * 'msThrottlingRateLimit' - Specifies the throttling rate limit. The PATCH path for this setting is @/{method_setting_key}/throttling/rateLimit@ , and the value is a double.
--
-- * 'msThrottlingBurstLimit' - Specifies the throttling burst limit. The PATCH path for this setting is @/{method_setting_key}/throttling/burstLimit@ , and the value is an integer.
--
-- * 'msCacheTtlInSeconds' - Specifies the time to live (TTL), in seconds, for cached responses. The higher the TTL, the longer the response will be cached. The PATCH path for this setting is @/{method_setting_key}/caching/ttlInSeconds@ , and the value is an integer.
--
-- * 'msCachingEnabled' - Specifies whether responses should be cached and returned for requests. A cache cluster must be enabled on the stage for responses to be cached. The PATCH path for this setting is @/{method_setting_key}/caching/enabled@ , and the value is a Boolean.
--
-- * 'msUnauthorizedCacheControlHeaderStrategy' - Specifies how to handle unauthorized requests for cache invalidation. The PATCH path for this setting is @/{method_setting_key}/caching/unauthorizedCacheControlHeaderStrategy@ , and the available values are @FAIL_WITH_403@ , @SUCCEED_WITH_RESPONSE_HEADER@ , @SUCCEED_WITHOUT_RESPONSE_HEADER@ .
--
-- * 'msLoggingLevel' - Specifies the logging level for this method, which affects the log entries pushed to Amazon CloudWatch Logs. The PATCH path for this setting is @/{method_setting_key}/logging/loglevel@ , and the available levels are @OFF@ , @ERROR@ , and @INFO@ . Choose @ERROR@ to write only error-level entries to CloudWatch Logs, or choose @INFO@ to include all @ERROR@ events as well as extra informational events.
--
-- * 'msMetricsEnabled' - Specifies whether Amazon CloudWatch metrics are enabled for this method. The PATCH path for this setting is @/{method_setting_key}/metrics/enabled@ , and the value is a Boolean.
methodSetting ::
  MethodSetting
methodSetting =
  MethodSetting'
    { _msDataTraceEnabled = Nothing,
      _msRequireAuthorizationForCacheControl = Nothing,
      _msCacheDataEncrypted = Nothing,
      _msThrottlingRateLimit = Nothing,
      _msThrottlingBurstLimit = Nothing,
      _msCacheTtlInSeconds = Nothing,
      _msCachingEnabled = Nothing,
      _msUnauthorizedCacheControlHeaderStrategy = Nothing,
      _msLoggingLevel = Nothing,
      _msMetricsEnabled = Nothing
    }

-- | Specifies whether data trace logging is enabled for this method, which affects the log entries pushed to Amazon CloudWatch Logs. The PATCH path for this setting is @/{method_setting_key}/logging/dataTrace@ , and the value is a Boolean.
msDataTraceEnabled :: Lens' MethodSetting (Maybe Bool)
msDataTraceEnabled = lens _msDataTraceEnabled (\s a -> s {_msDataTraceEnabled = a})

-- | Specifies whether authorization is required for a cache invalidation request. The PATCH path for this setting is @/{method_setting_key}/caching/requireAuthorizationForCacheControl@ , and the value is a Boolean.
msRequireAuthorizationForCacheControl :: Lens' MethodSetting (Maybe Bool)
msRequireAuthorizationForCacheControl = lens _msRequireAuthorizationForCacheControl (\s a -> s {_msRequireAuthorizationForCacheControl = a})

-- | Specifies whether the cached responses are encrypted. The PATCH path for this setting is @/{method_setting_key}/caching/dataEncrypted@ , and the value is a Boolean.
msCacheDataEncrypted :: Lens' MethodSetting (Maybe Bool)
msCacheDataEncrypted = lens _msCacheDataEncrypted (\s a -> s {_msCacheDataEncrypted = a})

-- | Specifies the throttling rate limit. The PATCH path for this setting is @/{method_setting_key}/throttling/rateLimit@ , and the value is a double.
msThrottlingRateLimit :: Lens' MethodSetting (Maybe Double)
msThrottlingRateLimit = lens _msThrottlingRateLimit (\s a -> s {_msThrottlingRateLimit = a})

-- | Specifies the throttling burst limit. The PATCH path for this setting is @/{method_setting_key}/throttling/burstLimit@ , and the value is an integer.
msThrottlingBurstLimit :: Lens' MethodSetting (Maybe Int)
msThrottlingBurstLimit = lens _msThrottlingBurstLimit (\s a -> s {_msThrottlingBurstLimit = a})

-- | Specifies the time to live (TTL), in seconds, for cached responses. The higher the TTL, the longer the response will be cached. The PATCH path for this setting is @/{method_setting_key}/caching/ttlInSeconds@ , and the value is an integer.
msCacheTtlInSeconds :: Lens' MethodSetting (Maybe Int)
msCacheTtlInSeconds = lens _msCacheTtlInSeconds (\s a -> s {_msCacheTtlInSeconds = a})

-- | Specifies whether responses should be cached and returned for requests. A cache cluster must be enabled on the stage for responses to be cached. The PATCH path for this setting is @/{method_setting_key}/caching/enabled@ , and the value is a Boolean.
msCachingEnabled :: Lens' MethodSetting (Maybe Bool)
msCachingEnabled = lens _msCachingEnabled (\s a -> s {_msCachingEnabled = a})

-- | Specifies how to handle unauthorized requests for cache invalidation. The PATCH path for this setting is @/{method_setting_key}/caching/unauthorizedCacheControlHeaderStrategy@ , and the available values are @FAIL_WITH_403@ , @SUCCEED_WITH_RESPONSE_HEADER@ , @SUCCEED_WITHOUT_RESPONSE_HEADER@ .
msUnauthorizedCacheControlHeaderStrategy :: Lens' MethodSetting (Maybe UnauthorizedCacheControlHeaderStrategy)
msUnauthorizedCacheControlHeaderStrategy = lens _msUnauthorizedCacheControlHeaderStrategy (\s a -> s {_msUnauthorizedCacheControlHeaderStrategy = a})

-- | Specifies the logging level for this method, which affects the log entries pushed to Amazon CloudWatch Logs. The PATCH path for this setting is @/{method_setting_key}/logging/loglevel@ , and the available levels are @OFF@ , @ERROR@ , and @INFO@ . Choose @ERROR@ to write only error-level entries to CloudWatch Logs, or choose @INFO@ to include all @ERROR@ events as well as extra informational events.
msLoggingLevel :: Lens' MethodSetting (Maybe Text)
msLoggingLevel = lens _msLoggingLevel (\s a -> s {_msLoggingLevel = a})

-- | Specifies whether Amazon CloudWatch metrics are enabled for this method. The PATCH path for this setting is @/{method_setting_key}/metrics/enabled@ , and the value is a Boolean.
msMetricsEnabled :: Lens' MethodSetting (Maybe Bool)
msMetricsEnabled = lens _msMetricsEnabled (\s a -> s {_msMetricsEnabled = a})

instance FromJSON MethodSetting where
  parseJSON =
    withObject
      "MethodSetting"
      ( \x ->
          MethodSetting'
            <$> (x .:? "dataTraceEnabled")
            <*> (x .:? "requireAuthorizationForCacheControl")
            <*> (x .:? "cacheDataEncrypted")
            <*> (x .:? "throttlingRateLimit")
            <*> (x .:? "throttlingBurstLimit")
            <*> (x .:? "cacheTtlInSeconds")
            <*> (x .:? "cachingEnabled")
            <*> (x .:? "unauthorizedCacheControlHeaderStrategy")
            <*> (x .:? "loggingLevel")
            <*> (x .:? "metricsEnabled")
      )

instance Hashable MethodSetting

instance NFData MethodSetting
