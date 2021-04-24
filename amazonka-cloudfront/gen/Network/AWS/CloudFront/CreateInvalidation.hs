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
-- Module      : Network.AWS.CloudFront.CreateInvalidation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a new invalidation.
module Network.AWS.CloudFront.CreateInvalidation
  ( -- * Creating a Request
    createInvalidation,
    CreateInvalidation,

    -- * Request Lenses
    ciDistributionId,
    ciInvalidationBatch,

    -- * Destructuring the Response
    createInvalidationResponse,
    CreateInvalidationResponse,

    -- * Response Lenses
    cirrsInvalidation,
    cirrsLocation,
    cirrsResponseStatus,
  )
where

import Network.AWS.CloudFront.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The request to create an invalidation.
--
--
--
-- /See:/ 'createInvalidation' smart constructor.
data CreateInvalidation = CreateInvalidation'
  { _ciDistributionId ::
      !Text,
    _ciInvalidationBatch ::
      !InvalidationBatch
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateInvalidation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciDistributionId' - The distribution's id.
--
-- * 'ciInvalidationBatch' - The batch information for the invalidation.
createInvalidation ::
  -- | 'ciDistributionId'
  Text ->
  -- | 'ciInvalidationBatch'
  InvalidationBatch ->
  CreateInvalidation
createInvalidation
  pDistributionId_
  pInvalidationBatch_ =
    CreateInvalidation'
      { _ciDistributionId =
          pDistributionId_,
        _ciInvalidationBatch = pInvalidationBatch_
      }

-- | The distribution's id.
ciDistributionId :: Lens' CreateInvalidation Text
ciDistributionId = lens _ciDistributionId (\s a -> s {_ciDistributionId = a})

-- | The batch information for the invalidation.
ciInvalidationBatch :: Lens' CreateInvalidation InvalidationBatch
ciInvalidationBatch = lens _ciInvalidationBatch (\s a -> s {_ciInvalidationBatch = a})

instance AWSRequest CreateInvalidation where
  type
    Rs CreateInvalidation =
      CreateInvalidationResponse
  request = postXML cloudFront
  response =
    receiveXML
      ( \s h x ->
          CreateInvalidationResponse'
            <$> (parseXML x)
            <*> (h .#? "Location")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateInvalidation

instance NFData CreateInvalidation

instance ToElement CreateInvalidation where
  toElement =
    mkElement
      "{http://cloudfront.amazonaws.com/doc/2020-05-31/}InvalidationBatch"
      . _ciInvalidationBatch

instance ToHeaders CreateInvalidation where
  toHeaders = const mempty

instance ToPath CreateInvalidation where
  toPath CreateInvalidation' {..} =
    mconcat
      [ "/2020-05-31/distribution/",
        toBS _ciDistributionId,
        "/invalidation"
      ]

instance ToQuery CreateInvalidation where
  toQuery = const mempty

-- | The returned result of the corresponding request.
--
--
--
-- /See:/ 'createInvalidationResponse' smart constructor.
data CreateInvalidationResponse = CreateInvalidationResponse'
  { _cirrsInvalidation ::
      !( Maybe
           Invalidation
       ),
    _cirrsLocation ::
      !(Maybe Text),
    _cirrsResponseStatus ::
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

-- | Creates a value of 'CreateInvalidationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cirrsInvalidation' - The invalidation's information.
--
-- * 'cirrsLocation' - The fully qualified URI of the distribution and invalidation batch request, including the @Invalidation ID@ .
--
-- * 'cirrsResponseStatus' - -- | The response status code.
createInvalidationResponse ::
  -- | 'cirrsResponseStatus'
  Int ->
  CreateInvalidationResponse
createInvalidationResponse pResponseStatus_ =
  CreateInvalidationResponse'
    { _cirrsInvalidation =
        Nothing,
      _cirrsLocation = Nothing,
      _cirrsResponseStatus = pResponseStatus_
    }

-- | The invalidation's information.
cirrsInvalidation :: Lens' CreateInvalidationResponse (Maybe Invalidation)
cirrsInvalidation = lens _cirrsInvalidation (\s a -> s {_cirrsInvalidation = a})

-- | The fully qualified URI of the distribution and invalidation batch request, including the @Invalidation ID@ .
cirrsLocation :: Lens' CreateInvalidationResponse (Maybe Text)
cirrsLocation = lens _cirrsLocation (\s a -> s {_cirrsLocation = a})

-- | -- | The response status code.
cirrsResponseStatus :: Lens' CreateInvalidationResponse Int
cirrsResponseStatus = lens _cirrsResponseStatus (\s a -> s {_cirrsResponseStatus = a})

instance NFData CreateInvalidationResponse
