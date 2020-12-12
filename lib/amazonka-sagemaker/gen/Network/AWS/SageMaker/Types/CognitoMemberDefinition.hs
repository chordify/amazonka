{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.CognitoMemberDefinition
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.CognitoMemberDefinition
  ( CognitoMemberDefinition (..),

    -- * Smart constructor
    mkCognitoMemberDefinition,

    -- * Lenses
    cmdUserPool,
    cmdUserGroup,
    cmdClientId,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | Identifies a Amazon Cognito user group. A user group can be used in on or more work teams.
--
-- /See:/ 'mkCognitoMemberDefinition' smart constructor.
data CognitoMemberDefinition = CognitoMemberDefinition'
  { userPool ::
      Lude.Text,
    userGroup :: Lude.Text,
    clientId :: Lude.Text
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'CognitoMemberDefinition' with the minimum fields required to make a request.
--
-- * 'clientId' - An identifier for an application client. You must create the app client ID using Amazon Cognito.
-- * 'userGroup' - An identifier for a user group.
-- * 'userPool' - An identifier for a user pool. The user pool must be in the same region as the service that you are calling.
mkCognitoMemberDefinition ::
  -- | 'userPool'
  Lude.Text ->
  -- | 'userGroup'
  Lude.Text ->
  -- | 'clientId'
  Lude.Text ->
  CognitoMemberDefinition
mkCognitoMemberDefinition pUserPool_ pUserGroup_ pClientId_ =
  CognitoMemberDefinition'
    { userPool = pUserPool_,
      userGroup = pUserGroup_,
      clientId = pClientId_
    }

-- | An identifier for a user pool. The user pool must be in the same region as the service that you are calling.
--
-- /Note:/ Consider using 'userPool' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cmdUserPool :: Lens.Lens' CognitoMemberDefinition Lude.Text
cmdUserPool = Lens.lens (userPool :: CognitoMemberDefinition -> Lude.Text) (\s a -> s {userPool = a} :: CognitoMemberDefinition)
{-# DEPRECATED cmdUserPool "Use generic-lens or generic-optics with 'userPool' instead." #-}

-- | An identifier for a user group.
--
-- /Note:/ Consider using 'userGroup' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cmdUserGroup :: Lens.Lens' CognitoMemberDefinition Lude.Text
cmdUserGroup = Lens.lens (userGroup :: CognitoMemberDefinition -> Lude.Text) (\s a -> s {userGroup = a} :: CognitoMemberDefinition)
{-# DEPRECATED cmdUserGroup "Use generic-lens or generic-optics with 'userGroup' instead." #-}

-- | An identifier for an application client. You must create the app client ID using Amazon Cognito.
--
-- /Note:/ Consider using 'clientId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cmdClientId :: Lens.Lens' CognitoMemberDefinition Lude.Text
cmdClientId = Lens.lens (clientId :: CognitoMemberDefinition -> Lude.Text) (\s a -> s {clientId = a} :: CognitoMemberDefinition)
{-# DEPRECATED cmdClientId "Use generic-lens or generic-optics with 'clientId' instead." #-}

instance Lude.FromJSON CognitoMemberDefinition where
  parseJSON =
    Lude.withObject
      "CognitoMemberDefinition"
      ( \x ->
          CognitoMemberDefinition'
            Lude.<$> (x Lude..: "UserPool")
            Lude.<*> (x Lude..: "UserGroup")
            Lude.<*> (x Lude..: "ClientId")
      )

instance Lude.ToJSON CognitoMemberDefinition where
  toJSON CognitoMemberDefinition' {..} =
    Lude.object
      ( Lude.catMaybes
          [ Lude.Just ("UserPool" Lude..= userPool),
            Lude.Just ("UserGroup" Lude..= userGroup),
            Lude.Just ("ClientId" Lude..= clientId)
          ]
      )
