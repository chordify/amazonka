{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodePipeline.Types.ListWebhookItem
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodePipeline.Types.ListWebhookItem
  ( ListWebhookItem (..),

    -- * Smart constructor
    mkListWebhookItem,

    -- * Lenses
    lwiArn,
    lwiErrorCode,
    lwiLastTriggered,
    lwiErrorMessage,
    lwiTags,
    lwiDefinition,
    lwiUrl,
  )
where

import Network.AWS.CodePipeline.Types.Tag
import Network.AWS.CodePipeline.Types.WebhookDefinition
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | The detail returned for each webhook after listing webhooks, such as the webhook URL, the webhook name, and the webhook ARN.
--
-- /See:/ 'mkListWebhookItem' smart constructor.
data ListWebhookItem = ListWebhookItem'
  { arn ::
      Lude.Maybe Lude.Text,
    errorCode :: Lude.Maybe Lude.Text,
    lastTriggered :: Lude.Maybe Lude.Timestamp,
    errorMessage :: Lude.Maybe Lude.Text,
    tags :: Lude.Maybe [Tag],
    definition :: WebhookDefinition,
    url :: Lude.Text
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'ListWebhookItem' with the minimum fields required to make a request.
--
-- * 'arn' - The Amazon Resource Name (ARN) of the webhook.
-- * 'definition' - The detail returned for each webhook, such as the webhook authentication type and filter rules.
-- * 'errorCode' - The number code of the error.
-- * 'errorMessage' - The text of the error message about the webhook.
-- * 'lastTriggered' - The date and time a webhook was last successfully triggered, in timestamp format.
-- * 'tags' - Specifies the tags applied to the webhook.
-- * 'url' - A unique URL generated by CodePipeline. When a POST request is made to this URL, the defined pipeline is started as long as the body of the post request satisfies the defined authentication and filtering conditions. Deleting and re-creating a webhook makes the old URL invalid and generates a new one.
mkListWebhookItem ::
  -- | 'definition'
  WebhookDefinition ->
  -- | 'url'
  Lude.Text ->
  ListWebhookItem
mkListWebhookItem pDefinition_ pUrl_ =
  ListWebhookItem'
    { arn = Lude.Nothing,
      errorCode = Lude.Nothing,
      lastTriggered = Lude.Nothing,
      errorMessage = Lude.Nothing,
      tags = Lude.Nothing,
      definition = pDefinition_,
      url = pUrl_
    }

-- | The Amazon Resource Name (ARN) of the webhook.
--
-- /Note:/ Consider using 'arn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lwiArn :: Lens.Lens' ListWebhookItem (Lude.Maybe Lude.Text)
lwiArn = Lens.lens (arn :: ListWebhookItem -> Lude.Maybe Lude.Text) (\s a -> s {arn = a} :: ListWebhookItem)
{-# DEPRECATED lwiArn "Use generic-lens or generic-optics with 'arn' instead." #-}

-- | The number code of the error.
--
-- /Note:/ Consider using 'errorCode' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lwiErrorCode :: Lens.Lens' ListWebhookItem (Lude.Maybe Lude.Text)
lwiErrorCode = Lens.lens (errorCode :: ListWebhookItem -> Lude.Maybe Lude.Text) (\s a -> s {errorCode = a} :: ListWebhookItem)
{-# DEPRECATED lwiErrorCode "Use generic-lens or generic-optics with 'errorCode' instead." #-}

-- | The date and time a webhook was last successfully triggered, in timestamp format.
--
-- /Note:/ Consider using 'lastTriggered' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lwiLastTriggered :: Lens.Lens' ListWebhookItem (Lude.Maybe Lude.Timestamp)
lwiLastTriggered = Lens.lens (lastTriggered :: ListWebhookItem -> Lude.Maybe Lude.Timestamp) (\s a -> s {lastTriggered = a} :: ListWebhookItem)
{-# DEPRECATED lwiLastTriggered "Use generic-lens or generic-optics with 'lastTriggered' instead." #-}

-- | The text of the error message about the webhook.
--
-- /Note:/ Consider using 'errorMessage' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lwiErrorMessage :: Lens.Lens' ListWebhookItem (Lude.Maybe Lude.Text)
lwiErrorMessage = Lens.lens (errorMessage :: ListWebhookItem -> Lude.Maybe Lude.Text) (\s a -> s {errorMessage = a} :: ListWebhookItem)
{-# DEPRECATED lwiErrorMessage "Use generic-lens or generic-optics with 'errorMessage' instead." #-}

-- | Specifies the tags applied to the webhook.
--
-- /Note:/ Consider using 'tags' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lwiTags :: Lens.Lens' ListWebhookItem (Lude.Maybe [Tag])
lwiTags = Lens.lens (tags :: ListWebhookItem -> Lude.Maybe [Tag]) (\s a -> s {tags = a} :: ListWebhookItem)
{-# DEPRECATED lwiTags "Use generic-lens or generic-optics with 'tags' instead." #-}

-- | The detail returned for each webhook, such as the webhook authentication type and filter rules.
--
-- /Note:/ Consider using 'definition' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lwiDefinition :: Lens.Lens' ListWebhookItem WebhookDefinition
lwiDefinition = Lens.lens (definition :: ListWebhookItem -> WebhookDefinition) (\s a -> s {definition = a} :: ListWebhookItem)
{-# DEPRECATED lwiDefinition "Use generic-lens or generic-optics with 'definition' instead." #-}

-- | A unique URL generated by CodePipeline. When a POST request is made to this URL, the defined pipeline is started as long as the body of the post request satisfies the defined authentication and filtering conditions. Deleting and re-creating a webhook makes the old URL invalid and generates a new one.
--
-- /Note:/ Consider using 'url' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lwiUrl :: Lens.Lens' ListWebhookItem Lude.Text
lwiUrl = Lens.lens (url :: ListWebhookItem -> Lude.Text) (\s a -> s {url = a} :: ListWebhookItem)
{-# DEPRECATED lwiUrl "Use generic-lens or generic-optics with 'url' instead." #-}

instance Lude.FromJSON ListWebhookItem where
  parseJSON =
    Lude.withObject
      "ListWebhookItem"
      ( \x ->
          ListWebhookItem'
            Lude.<$> (x Lude..:? "arn")
            Lude.<*> (x Lude..:? "errorCode")
            Lude.<*> (x Lude..:? "lastTriggered")
            Lude.<*> (x Lude..:? "errorMessage")
            Lude.<*> (x Lude..:? "tags" Lude..!= Lude.mempty)
            Lude.<*> (x Lude..: "definition")
            Lude.<*> (x Lude..: "url")
      )
