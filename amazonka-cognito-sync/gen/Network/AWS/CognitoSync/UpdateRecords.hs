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
-- Module      : Network.AWS.CognitoSync.UpdateRecords
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Posts updates to records and adds and deletes records for a dataset and
-- user.
--
-- The sync count in the record patch is your last known sync count for
-- that record. The server will reject an UpdateRecords request with a
-- ResourceConflictException if you try to patch a record with a new value
-- but a stale sync count.
--
-- For example, if the sync count on the server is 5 for a key called
-- highScore and you try and submit a new highScore with sync count of 4,
-- the request will be rejected. To obtain the current sync count for a
-- record, call ListRecords. On a successful update of the record, the
-- response returns the new sync count for that record. You should present
-- that sync count the next time you try to update that same record. When
-- the record does not exist, specify the sync count as 0.
--
-- This API can be called with temporary user credentials provided by
-- Cognito Identity or with developer credentials.
module Network.AWS.CognitoSync.UpdateRecords
  ( -- * Creating a Request
    UpdateRecords (..),
    newUpdateRecords,

    -- * Request Lenses
    updateRecords_recordPatches,
    updateRecords_deviceId,
    updateRecords_clientContext,
    updateRecords_identityPoolId,
    updateRecords_identityId,
    updateRecords_datasetName,
    updateRecords_syncSessionToken,

    -- * Destructuring the Response
    UpdateRecordsResponse (..),
    newUpdateRecordsResponse,

    -- * Response Lenses
    updateRecordsResponse_records,
    updateRecordsResponse_httpStatus,
  )
where

import Network.AWS.CognitoSync.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | A request to post updates to records or add and delete records for a
-- dataset and user.
--
-- /See:/ 'newUpdateRecords' smart constructor.
data UpdateRecords = UpdateRecords'
  { -- | A list of patch operations.
    recordPatches :: Prelude.Maybe [RecordPatch],
    -- | The unique ID generated for this device by Cognito.
    deviceId :: Prelude.Maybe Prelude.Text,
    -- | Intended to supply a device ID that will populate the lastModifiedBy
    -- field referenced in other methods. The ClientContext field is not yet
    -- implemented.
    clientContext :: Prelude.Maybe Prelude.Text,
    -- | A name-spaced GUID (for example,
    -- us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
    -- Cognito. GUID generation is unique within a region.
    identityPoolId :: Prelude.Text,
    -- | A name-spaced GUID (for example,
    -- us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
    -- Cognito. GUID generation is unique within a region.
    identityId :: Prelude.Text,
    -- | A string of up to 128 characters. Allowed characters are a-z, A-Z, 0-9,
    -- \'_\' (underscore), \'-\' (dash), and \'.\' (dot).
    datasetName :: Prelude.Text,
    -- | The SyncSessionToken returned by a previous call to ListRecords for this
    -- dataset and identity.
    syncSessionToken :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'UpdateRecords' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'recordPatches', 'updateRecords_recordPatches' - A list of patch operations.
--
-- 'deviceId', 'updateRecords_deviceId' - The unique ID generated for this device by Cognito.
--
-- 'clientContext', 'updateRecords_clientContext' - Intended to supply a device ID that will populate the lastModifiedBy
-- field referenced in other methods. The ClientContext field is not yet
-- implemented.
--
-- 'identityPoolId', 'updateRecords_identityPoolId' - A name-spaced GUID (for example,
-- us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
-- Cognito. GUID generation is unique within a region.
--
-- 'identityId', 'updateRecords_identityId' - A name-spaced GUID (for example,
-- us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
-- Cognito. GUID generation is unique within a region.
--
-- 'datasetName', 'updateRecords_datasetName' - A string of up to 128 characters. Allowed characters are a-z, A-Z, 0-9,
-- \'_\' (underscore), \'-\' (dash), and \'.\' (dot).
--
-- 'syncSessionToken', 'updateRecords_syncSessionToken' - The SyncSessionToken returned by a previous call to ListRecords for this
-- dataset and identity.
newUpdateRecords ::
  -- | 'identityPoolId'
  Prelude.Text ->
  -- | 'identityId'
  Prelude.Text ->
  -- | 'datasetName'
  Prelude.Text ->
  -- | 'syncSessionToken'
  Prelude.Text ->
  UpdateRecords
newUpdateRecords
  pIdentityPoolId_
  pIdentityId_
  pDatasetName_
  pSyncSessionToken_ =
    UpdateRecords'
      { recordPatches = Prelude.Nothing,
        deviceId = Prelude.Nothing,
        clientContext = Prelude.Nothing,
        identityPoolId = pIdentityPoolId_,
        identityId = pIdentityId_,
        datasetName = pDatasetName_,
        syncSessionToken = pSyncSessionToken_
      }

-- | A list of patch operations.
updateRecords_recordPatches :: Lens.Lens' UpdateRecords (Prelude.Maybe [RecordPatch])
updateRecords_recordPatches = Lens.lens (\UpdateRecords' {recordPatches} -> recordPatches) (\s@UpdateRecords' {} a -> s {recordPatches = a} :: UpdateRecords) Prelude.. Lens.mapping Prelude._Coerce

-- | The unique ID generated for this device by Cognito.
updateRecords_deviceId :: Lens.Lens' UpdateRecords (Prelude.Maybe Prelude.Text)
updateRecords_deviceId = Lens.lens (\UpdateRecords' {deviceId} -> deviceId) (\s@UpdateRecords' {} a -> s {deviceId = a} :: UpdateRecords)

-- | Intended to supply a device ID that will populate the lastModifiedBy
-- field referenced in other methods. The ClientContext field is not yet
-- implemented.
updateRecords_clientContext :: Lens.Lens' UpdateRecords (Prelude.Maybe Prelude.Text)
updateRecords_clientContext = Lens.lens (\UpdateRecords' {clientContext} -> clientContext) (\s@UpdateRecords' {} a -> s {clientContext = a} :: UpdateRecords)

-- | A name-spaced GUID (for example,
-- us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
-- Cognito. GUID generation is unique within a region.
updateRecords_identityPoolId :: Lens.Lens' UpdateRecords Prelude.Text
updateRecords_identityPoolId = Lens.lens (\UpdateRecords' {identityPoolId} -> identityPoolId) (\s@UpdateRecords' {} a -> s {identityPoolId = a} :: UpdateRecords)

-- | A name-spaced GUID (for example,
-- us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
-- Cognito. GUID generation is unique within a region.
updateRecords_identityId :: Lens.Lens' UpdateRecords Prelude.Text
updateRecords_identityId = Lens.lens (\UpdateRecords' {identityId} -> identityId) (\s@UpdateRecords' {} a -> s {identityId = a} :: UpdateRecords)

-- | A string of up to 128 characters. Allowed characters are a-z, A-Z, 0-9,
-- \'_\' (underscore), \'-\' (dash), and \'.\' (dot).
updateRecords_datasetName :: Lens.Lens' UpdateRecords Prelude.Text
updateRecords_datasetName = Lens.lens (\UpdateRecords' {datasetName} -> datasetName) (\s@UpdateRecords' {} a -> s {datasetName = a} :: UpdateRecords)

-- | The SyncSessionToken returned by a previous call to ListRecords for this
-- dataset and identity.
updateRecords_syncSessionToken :: Lens.Lens' UpdateRecords Prelude.Text
updateRecords_syncSessionToken = Lens.lens (\UpdateRecords' {syncSessionToken} -> syncSessionToken) (\s@UpdateRecords' {} a -> s {syncSessionToken = a} :: UpdateRecords)

instance Prelude.AWSRequest UpdateRecords where
  type Rs UpdateRecords = UpdateRecordsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateRecordsResponse'
            Prelude.<$> (x Prelude..?> "Records" Prelude..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateRecords

instance Prelude.NFData UpdateRecords

instance Prelude.ToHeaders UpdateRecords where
  toHeaders UpdateRecords' {..} =
    Prelude.mconcat
      [ "x-amz-Client-Context" Prelude.=# clientContext,
        "Content-Type"
          Prelude.=# ("application/x-amz-json-1.1" :: Prelude.ByteString)
      ]

instance Prelude.ToJSON UpdateRecords where
  toJSON UpdateRecords' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("RecordPatches" Prelude..=)
              Prelude.<$> recordPatches,
            ("DeviceId" Prelude..=) Prelude.<$> deviceId,
            Prelude.Just
              ("SyncSessionToken" Prelude..= syncSessionToken)
          ]
      )

instance Prelude.ToPath UpdateRecords where
  toPath UpdateRecords' {..} =
    Prelude.mconcat
      [ "/identitypools/",
        Prelude.toBS identityPoolId,
        "/identities/",
        Prelude.toBS identityId,
        "/datasets/",
        Prelude.toBS datasetName
      ]

instance Prelude.ToQuery UpdateRecords where
  toQuery = Prelude.const Prelude.mempty

-- | Returned for a successful UpdateRecordsRequest.
--
-- /See:/ 'newUpdateRecordsResponse' smart constructor.
data UpdateRecordsResponse = UpdateRecordsResponse'
  { -- | A list of records that have been updated.
    records :: Prelude.Maybe [Record],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'UpdateRecordsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'records', 'updateRecordsResponse_records' - A list of records that have been updated.
--
-- 'httpStatus', 'updateRecordsResponse_httpStatus' - The response's http status code.
newUpdateRecordsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateRecordsResponse
newUpdateRecordsResponse pHttpStatus_ =
  UpdateRecordsResponse'
    { records = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A list of records that have been updated.
updateRecordsResponse_records :: Lens.Lens' UpdateRecordsResponse (Prelude.Maybe [Record])
updateRecordsResponse_records = Lens.lens (\UpdateRecordsResponse' {records} -> records) (\s@UpdateRecordsResponse' {} a -> s {records = a} :: UpdateRecordsResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | The response's http status code.
updateRecordsResponse_httpStatus :: Lens.Lens' UpdateRecordsResponse Prelude.Int
updateRecordsResponse_httpStatus = Lens.lens (\UpdateRecordsResponse' {httpStatus} -> httpStatus) (\s@UpdateRecordsResponse' {} a -> s {httpStatus = a} :: UpdateRecordsResponse)

instance Prelude.NFData UpdateRecordsResponse
