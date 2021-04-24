{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.APIGateway.Types.ClientCertificate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.APIGateway.Types.ClientCertificate where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents a client certificate used to configure client-side SSL authentication while sending requests to the integration endpoint.
--
--
-- Client certificates are used to authenticate an API by the backend server. To authenticate an API client (or user), use IAM roles and policies, a custom 'Authorizer' or an Amazon Cognito user pool.<https://docs.aws.amazon.com/apigateway/latest/developerguide/getting-started-client-side-ssl-authentication.html Use Client-Side Certificate>
--
-- /See:/ 'clientCertificate' smart constructor.
data ClientCertificate = ClientCertificate'
  { _ccCreatedDate ::
      !(Maybe POSIX),
    _ccExpirationDate :: !(Maybe POSIX),
    _ccPemEncodedCertificate ::
      !(Maybe Text),
    _ccTags :: !(Maybe (Map Text Text)),
    _ccClientCertificateId ::
      !(Maybe Text),
    _ccDescription :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ClientCertificate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccCreatedDate' - The timestamp when the client certificate was created.
--
-- * 'ccExpirationDate' - The timestamp when the client certificate will expire.
--
-- * 'ccPemEncodedCertificate' - The PEM-encoded public key of the client certificate, which can be used to configure certificate authentication in the integration endpoint .
--
-- * 'ccTags' - The collection of tags. Each tag element is associated with a given resource.
--
-- * 'ccClientCertificateId' - The identifier of the client certificate.
--
-- * 'ccDescription' - The description of the client certificate.
clientCertificate ::
  ClientCertificate
clientCertificate =
  ClientCertificate'
    { _ccCreatedDate = Nothing,
      _ccExpirationDate = Nothing,
      _ccPemEncodedCertificate = Nothing,
      _ccTags = Nothing,
      _ccClientCertificateId = Nothing,
      _ccDescription = Nothing
    }

-- | The timestamp when the client certificate was created.
ccCreatedDate :: Lens' ClientCertificate (Maybe UTCTime)
ccCreatedDate = lens _ccCreatedDate (\s a -> s {_ccCreatedDate = a}) . mapping _Time

-- | The timestamp when the client certificate will expire.
ccExpirationDate :: Lens' ClientCertificate (Maybe UTCTime)
ccExpirationDate = lens _ccExpirationDate (\s a -> s {_ccExpirationDate = a}) . mapping _Time

-- | The PEM-encoded public key of the client certificate, which can be used to configure certificate authentication in the integration endpoint .
ccPemEncodedCertificate :: Lens' ClientCertificate (Maybe Text)
ccPemEncodedCertificate = lens _ccPemEncodedCertificate (\s a -> s {_ccPemEncodedCertificate = a})

-- | The collection of tags. Each tag element is associated with a given resource.
ccTags :: Lens' ClientCertificate (HashMap Text Text)
ccTags = lens _ccTags (\s a -> s {_ccTags = a}) . _Default . _Map

-- | The identifier of the client certificate.
ccClientCertificateId :: Lens' ClientCertificate (Maybe Text)
ccClientCertificateId = lens _ccClientCertificateId (\s a -> s {_ccClientCertificateId = a})

-- | The description of the client certificate.
ccDescription :: Lens' ClientCertificate (Maybe Text)
ccDescription = lens _ccDescription (\s a -> s {_ccDescription = a})

instance FromJSON ClientCertificate where
  parseJSON =
    withObject
      "ClientCertificate"
      ( \x ->
          ClientCertificate'
            <$> (x .:? "createdDate")
            <*> (x .:? "expirationDate")
            <*> (x .:? "pemEncodedCertificate")
            <*> (x .:? "tags" .!= mempty)
            <*> (x .:? "clientCertificateId")
            <*> (x .:? "description")
      )

instance Hashable ClientCertificate

instance NFData ClientCertificate
