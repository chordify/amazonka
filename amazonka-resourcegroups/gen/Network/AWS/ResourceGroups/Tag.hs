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
-- Module      : Network.AWS.ResourceGroups.Tag
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds tags to a resource group with the specified ARN. Existing tags on a
-- resource group are not changed if they are not specified in the request
-- parameters.
--
-- Do not store personally identifiable information (PII) or other
-- confidential or sensitive information in tags. We use tags to provide
-- you with billing and administration services. Tags are not intended to
-- be used for private or sensitive data.
--
-- __Minimum permissions__
--
-- To run this command, you must have the following permissions:
--
-- -   @resource-groups:Tag@
module Network.AWS.ResourceGroups.Tag
  ( -- * Creating a Request
    Tag (..),
    newTag,

    -- * Request Lenses
    tag_arn,
    tag_tags,

    -- * Destructuring the Response
    TagResponse (..),
    newTagResponse,

    -- * Response Lenses
    tagResponse_arn,
    tagResponse_tags,
    tagResponse_httpStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import Network.AWS.ResourceGroups.Types
import qualified Network.AWS.Response as Response

-- | /See:/ 'newTag' smart constructor.
data Tag = Tag'
  { -- | The ARN of the resource group to which to add tags.
    arn :: Prelude.Text,
    -- | The tags to add to the specified resource group. A tag is a
    -- string-to-string map of key-value pairs.
    tags :: Prelude.HashMap Prelude.Text Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'Tag' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'arn', 'tag_arn' - The ARN of the resource group to which to add tags.
--
-- 'tags', 'tag_tags' - The tags to add to the specified resource group. A tag is a
-- string-to-string map of key-value pairs.
newTag ::
  -- | 'arn'
  Prelude.Text ->
  Tag
newTag pArn_ =
  Tag' {arn = pArn_, tags = Prelude.mempty}

-- | The ARN of the resource group to which to add tags.
tag_arn :: Lens.Lens' Tag Prelude.Text
tag_arn = Lens.lens (\Tag' {arn} -> arn) (\s@Tag' {} a -> s {arn = a} :: Tag)

-- | The tags to add to the specified resource group. A tag is a
-- string-to-string map of key-value pairs.
tag_tags :: Lens.Lens' Tag (Prelude.HashMap Prelude.Text Prelude.Text)
tag_tags = Lens.lens (\Tag' {tags} -> tags) (\s@Tag' {} a -> s {tags = a} :: Tag) Prelude.. Prelude._Coerce

instance Prelude.AWSRequest Tag where
  type Rs Tag = TagResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          TagResponse'
            Prelude.<$> (x Prelude..?> "Arn")
            Prelude.<*> (x Prelude..?> "Tags" Prelude..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable Tag

instance Prelude.NFData Tag

instance Prelude.ToHeaders Tag where
  toHeaders = Prelude.const Prelude.mempty

instance Prelude.ToJSON Tag where
  toJSON Tag' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [Prelude.Just ("Tags" Prelude..= tags)]
      )

instance Prelude.ToPath Tag where
  toPath Tag' {..} =
    Prelude.mconcat
      ["/resources/", Prelude.toBS arn, "/tags"]

instance Prelude.ToQuery Tag where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newTagResponse' smart constructor.
data TagResponse = TagResponse'
  { -- | The ARN of the tagged resource.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The tags that have been added to the specified resource group.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'TagResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'arn', 'tagResponse_arn' - The ARN of the tagged resource.
--
-- 'tags', 'tagResponse_tags' - The tags that have been added to the specified resource group.
--
-- 'httpStatus', 'tagResponse_httpStatus' - The response's http status code.
newTagResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  TagResponse
newTagResponse pHttpStatus_ =
  TagResponse'
    { arn = Prelude.Nothing,
      tags = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The ARN of the tagged resource.
tagResponse_arn :: Lens.Lens' TagResponse (Prelude.Maybe Prelude.Text)
tagResponse_arn = Lens.lens (\TagResponse' {arn} -> arn) (\s@TagResponse' {} a -> s {arn = a} :: TagResponse)

-- | The tags that have been added to the specified resource group.
tagResponse_tags :: Lens.Lens' TagResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
tagResponse_tags = Lens.lens (\TagResponse' {tags} -> tags) (\s@TagResponse' {} a -> s {tags = a} :: TagResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | The response's http status code.
tagResponse_httpStatus :: Lens.Lens' TagResponse Prelude.Int
tagResponse_httpStatus = Lens.lens (\TagResponse' {httpStatus} -> httpStatus) (\s@TagResponse' {} a -> s {httpStatus = a} :: TagResponse)

instance Prelude.NFData TagResponse
