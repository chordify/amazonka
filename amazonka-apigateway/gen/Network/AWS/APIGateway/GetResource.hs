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
-- Module      : Network.AWS.APIGateway.GetResource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists information about a resource.
module Network.AWS.APIGateway.GetResource
  ( -- * Creating a Request
    GetResource (..),
    newGetResource,

    -- * Request Lenses
    getResource_embed,
    getResource_restApiId,
    getResource_resourceId,

    -- * Destructuring the Response
    Resource (..),
    newResource,

    -- * Response Lenses
    resource_id,
    resource_pathPart,
    resource_parentId,
    resource_resourceMethods,
    resource_path,
  )
where

import Network.AWS.APIGateway.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Request to list information about a resource.
--
-- /See:/ 'newGetResource' smart constructor.
data GetResource = GetResource'
  { -- | A query parameter to retrieve the specified resources embedded in the
    -- returned Resource representation in the response. This @embed@ parameter
    -- value is a list of comma-separated strings. Currently, the request
    -- supports only retrieval of the embedded Method resources this way. The
    -- query parameter value must be a single-valued list and contain the
    -- @\"methods\"@ string. For example,
    -- @GET \/restapis\/{restapi_id}\/resources\/{resource_id}?embed=methods@.
    embed :: Prelude.Maybe [Prelude.Text],
    -- | [Required] The string identifier of the associated RestApi.
    restApiId :: Prelude.Text,
    -- | [Required] The identifier for the Resource resource.
    resourceId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'GetResource' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'embed', 'getResource_embed' - A query parameter to retrieve the specified resources embedded in the
-- returned Resource representation in the response. This @embed@ parameter
-- value is a list of comma-separated strings. Currently, the request
-- supports only retrieval of the embedded Method resources this way. The
-- query parameter value must be a single-valued list and contain the
-- @\"methods\"@ string. For example,
-- @GET \/restapis\/{restapi_id}\/resources\/{resource_id}?embed=methods@.
--
-- 'restApiId', 'getResource_restApiId' - [Required] The string identifier of the associated RestApi.
--
-- 'resourceId', 'getResource_resourceId' - [Required] The identifier for the Resource resource.
newGetResource ::
  -- | 'restApiId'
  Prelude.Text ->
  -- | 'resourceId'
  Prelude.Text ->
  GetResource
newGetResource pRestApiId_ pResourceId_ =
  GetResource'
    { embed = Prelude.Nothing,
      restApiId = pRestApiId_,
      resourceId = pResourceId_
    }

-- | A query parameter to retrieve the specified resources embedded in the
-- returned Resource representation in the response. This @embed@ parameter
-- value is a list of comma-separated strings. Currently, the request
-- supports only retrieval of the embedded Method resources this way. The
-- query parameter value must be a single-valued list and contain the
-- @\"methods\"@ string. For example,
-- @GET \/restapis\/{restapi_id}\/resources\/{resource_id}?embed=methods@.
getResource_embed :: Lens.Lens' GetResource (Prelude.Maybe [Prelude.Text])
getResource_embed = Lens.lens (\GetResource' {embed} -> embed) (\s@GetResource' {} a -> s {embed = a} :: GetResource) Prelude.. Lens.mapping Prelude._Coerce

-- | [Required] The string identifier of the associated RestApi.
getResource_restApiId :: Lens.Lens' GetResource Prelude.Text
getResource_restApiId = Lens.lens (\GetResource' {restApiId} -> restApiId) (\s@GetResource' {} a -> s {restApiId = a} :: GetResource)

-- | [Required] The identifier for the Resource resource.
getResource_resourceId :: Lens.Lens' GetResource Prelude.Text
getResource_resourceId = Lens.lens (\GetResource' {resourceId} -> resourceId) (\s@GetResource' {} a -> s {resourceId = a} :: GetResource)

instance Prelude.AWSRequest GetResource where
  type Rs GetResource = Resource
  request = Request.get defaultService
  response =
    Response.receiveJSON
      (\s h x -> Prelude.eitherParseJSON x)

instance Prelude.Hashable GetResource

instance Prelude.NFData GetResource

instance Prelude.ToHeaders GetResource where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Accept"
              Prelude.=# ("application/json" :: Prelude.ByteString)
          ]
      )

instance Prelude.ToPath GetResource where
  toPath GetResource' {..} =
    Prelude.mconcat
      [ "/restapis/",
        Prelude.toBS restApiId,
        "/resources/",
        Prelude.toBS resourceId
      ]

instance Prelude.ToQuery GetResource where
  toQuery GetResource' {..} =
    Prelude.mconcat
      [ "embed"
          Prelude.=: Prelude.toQuery
            (Prelude.toQueryList "member" Prelude.<$> embed)
      ]
