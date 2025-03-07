{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoIdentityProvider.AdminConfirmSignUp
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Confirms user registration as an admin without using a confirmation
-- code. Works on any user.
--
-- Calling this action requires developer credentials.
module Network.AWS.CognitoIdentityProvider.AdminConfirmSignUp
  ( -- * Creating a Request
    AdminConfirmSignUp (..),
    newAdminConfirmSignUp,

    -- * Request Lenses
    adminConfirmSignUp_clientMetadata,
    adminConfirmSignUp_userPoolId,
    adminConfirmSignUp_username,

    -- * Destructuring the Response
    AdminConfirmSignUpResponse (..),
    newAdminConfirmSignUpResponse,

    -- * Response Lenses
    adminConfirmSignUpResponse_httpStatus,
  )
where

import Network.AWS.CognitoIdentityProvider.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Represents the request to confirm user registration.
--
-- /See:/ 'newAdminConfirmSignUp' smart constructor.
data AdminConfirmSignUp = AdminConfirmSignUp'
  { -- | A map of custom key-value pairs that you can provide as input for any
    -- custom workflows that this action triggers.
    --
    -- If your user pool configuration includes triggers, the
    -- AdminConfirmSignUp API action invokes the AWS Lambda function that is
    -- specified for the /post confirmation/ trigger. When Amazon Cognito
    -- invokes this function, it passes a JSON payload, which the function
    -- receives as input. In this payload, the @clientMetadata@ attribute
    -- provides the data that you assigned to the ClientMetadata parameter in
    -- your AdminConfirmSignUp request. In your function code in AWS Lambda,
    -- you can process the ClientMetadata value to enhance your workflow for
    -- your specific needs.
    --
    -- For more information, see
    -- <https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html Customizing User Pool Workflows with Lambda Triggers>
    -- in the /Amazon Cognito Developer Guide/.
    --
    -- Take the following limitations into consideration when you use the
    -- ClientMetadata parameter:
    --
    -- -   Amazon Cognito does not store the ClientMetadata value. This data is
    --     available only to AWS Lambda triggers that are assigned to a user
    --     pool to support custom workflows. If your user pool configuration
    --     does not include triggers, the ClientMetadata parameter serves no
    --     purpose.
    --
    -- -   Amazon Cognito does not validate the ClientMetadata value.
    --
    -- -   Amazon Cognito does not encrypt the the ClientMetadata value, so
    --     don\'t use it to provide sensitive information.
    clientMetadata :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The user pool ID for which you want to confirm user registration.
    userPoolId :: Prelude.Text,
    -- | The user name for which you want to confirm user registration.
    username :: Prelude.Sensitive Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'AdminConfirmSignUp' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clientMetadata', 'adminConfirmSignUp_clientMetadata' - A map of custom key-value pairs that you can provide as input for any
-- custom workflows that this action triggers.
--
-- If your user pool configuration includes triggers, the
-- AdminConfirmSignUp API action invokes the AWS Lambda function that is
-- specified for the /post confirmation/ trigger. When Amazon Cognito
-- invokes this function, it passes a JSON payload, which the function
-- receives as input. In this payload, the @clientMetadata@ attribute
-- provides the data that you assigned to the ClientMetadata parameter in
-- your AdminConfirmSignUp request. In your function code in AWS Lambda,
-- you can process the ClientMetadata value to enhance your workflow for
-- your specific needs.
--
-- For more information, see
-- <https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html Customizing User Pool Workflows with Lambda Triggers>
-- in the /Amazon Cognito Developer Guide/.
--
-- Take the following limitations into consideration when you use the
-- ClientMetadata parameter:
--
-- -   Amazon Cognito does not store the ClientMetadata value. This data is
--     available only to AWS Lambda triggers that are assigned to a user
--     pool to support custom workflows. If your user pool configuration
--     does not include triggers, the ClientMetadata parameter serves no
--     purpose.
--
-- -   Amazon Cognito does not validate the ClientMetadata value.
--
-- -   Amazon Cognito does not encrypt the the ClientMetadata value, so
--     don\'t use it to provide sensitive information.
--
-- 'userPoolId', 'adminConfirmSignUp_userPoolId' - The user pool ID for which you want to confirm user registration.
--
-- 'username', 'adminConfirmSignUp_username' - The user name for which you want to confirm user registration.
newAdminConfirmSignUp ::
  -- | 'userPoolId'
  Prelude.Text ->
  -- | 'username'
  Prelude.Text ->
  AdminConfirmSignUp
newAdminConfirmSignUp pUserPoolId_ pUsername_ =
  AdminConfirmSignUp'
    { clientMetadata =
        Prelude.Nothing,
      userPoolId = pUserPoolId_,
      username = Prelude._Sensitive Lens.# pUsername_
    }

-- | A map of custom key-value pairs that you can provide as input for any
-- custom workflows that this action triggers.
--
-- If your user pool configuration includes triggers, the
-- AdminConfirmSignUp API action invokes the AWS Lambda function that is
-- specified for the /post confirmation/ trigger. When Amazon Cognito
-- invokes this function, it passes a JSON payload, which the function
-- receives as input. In this payload, the @clientMetadata@ attribute
-- provides the data that you assigned to the ClientMetadata parameter in
-- your AdminConfirmSignUp request. In your function code in AWS Lambda,
-- you can process the ClientMetadata value to enhance your workflow for
-- your specific needs.
--
-- For more information, see
-- <https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html Customizing User Pool Workflows with Lambda Triggers>
-- in the /Amazon Cognito Developer Guide/.
--
-- Take the following limitations into consideration when you use the
-- ClientMetadata parameter:
--
-- -   Amazon Cognito does not store the ClientMetadata value. This data is
--     available only to AWS Lambda triggers that are assigned to a user
--     pool to support custom workflows. If your user pool configuration
--     does not include triggers, the ClientMetadata parameter serves no
--     purpose.
--
-- -   Amazon Cognito does not validate the ClientMetadata value.
--
-- -   Amazon Cognito does not encrypt the the ClientMetadata value, so
--     don\'t use it to provide sensitive information.
adminConfirmSignUp_clientMetadata :: Lens.Lens' AdminConfirmSignUp (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
adminConfirmSignUp_clientMetadata = Lens.lens (\AdminConfirmSignUp' {clientMetadata} -> clientMetadata) (\s@AdminConfirmSignUp' {} a -> s {clientMetadata = a} :: AdminConfirmSignUp) Prelude.. Lens.mapping Prelude._Coerce

-- | The user pool ID for which you want to confirm user registration.
adminConfirmSignUp_userPoolId :: Lens.Lens' AdminConfirmSignUp Prelude.Text
adminConfirmSignUp_userPoolId = Lens.lens (\AdminConfirmSignUp' {userPoolId} -> userPoolId) (\s@AdminConfirmSignUp' {} a -> s {userPoolId = a} :: AdminConfirmSignUp)

-- | The user name for which you want to confirm user registration.
adminConfirmSignUp_username :: Lens.Lens' AdminConfirmSignUp Prelude.Text
adminConfirmSignUp_username = Lens.lens (\AdminConfirmSignUp' {username} -> username) (\s@AdminConfirmSignUp' {} a -> s {username = a} :: AdminConfirmSignUp) Prelude.. Prelude._Sensitive

instance Prelude.AWSRequest AdminConfirmSignUp where
  type
    Rs AdminConfirmSignUp =
      AdminConfirmSignUpResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          AdminConfirmSignUpResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable AdminConfirmSignUp

instance Prelude.NFData AdminConfirmSignUp

instance Prelude.ToHeaders AdminConfirmSignUp where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "AWSCognitoIdentityProviderService.AdminConfirmSignUp" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON AdminConfirmSignUp where
  toJSON AdminConfirmSignUp' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("ClientMetadata" Prelude..=)
              Prelude.<$> clientMetadata,
            Prelude.Just ("UserPoolId" Prelude..= userPoolId),
            Prelude.Just ("Username" Prelude..= username)
          ]
      )

instance Prelude.ToPath AdminConfirmSignUp where
  toPath = Prelude.const "/"

instance Prelude.ToQuery AdminConfirmSignUp where
  toQuery = Prelude.const Prelude.mempty

-- | Represents the response from the server for the request to confirm
-- registration.
--
-- /See:/ 'newAdminConfirmSignUpResponse' smart constructor.
data AdminConfirmSignUpResponse = AdminConfirmSignUpResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'AdminConfirmSignUpResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'adminConfirmSignUpResponse_httpStatus' - The response's http status code.
newAdminConfirmSignUpResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  AdminConfirmSignUpResponse
newAdminConfirmSignUpResponse pHttpStatus_ =
  AdminConfirmSignUpResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
adminConfirmSignUpResponse_httpStatus :: Lens.Lens' AdminConfirmSignUpResponse Prelude.Int
adminConfirmSignUpResponse_httpStatus = Lens.lens (\AdminConfirmSignUpResponse' {httpStatus} -> httpStatus) (\s@AdminConfirmSignUpResponse' {} a -> s {httpStatus = a} :: AdminConfirmSignUpResponse)

instance Prelude.NFData AdminConfirmSignUpResponse
