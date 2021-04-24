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
-- Module      : Network.AWS.OpsWorksCM.DeleteBackup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a backup. You can delete both manual and automated backups. This operation is asynchronous.
--
--
-- An @InvalidStateException@ is thrown when a backup deletion is already in progress. A @ResourceNotFoundException@ is thrown when the backup does not exist. A @ValidationException@ is thrown when parameters of the request are not valid.
module Network.AWS.OpsWorksCM.DeleteBackup
  ( -- * Creating a Request
    deleteBackup,
    DeleteBackup,

    -- * Request Lenses
    dbBackupId,

    -- * Destructuring the Response
    deleteBackupResponse,
    DeleteBackupResponse,

    -- * Response Lenses
    dbrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.OpsWorksCM.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteBackup' smart constructor.
newtype DeleteBackup = DeleteBackup'
  { _dbBackupId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteBackup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dbBackupId' - The ID of the backup to delete. Run the DescribeBackups command to get a list of backup IDs. Backup IDs are in the format @ServerName-yyyyMMddHHmmssSSS@ .
deleteBackup ::
  -- | 'dbBackupId'
  Text ->
  DeleteBackup
deleteBackup pBackupId_ =
  DeleteBackup' {_dbBackupId = pBackupId_}

-- | The ID of the backup to delete. Run the DescribeBackups command to get a list of backup IDs. Backup IDs are in the format @ServerName-yyyyMMddHHmmssSSS@ .
dbBackupId :: Lens' DeleteBackup Text
dbBackupId = lens _dbBackupId (\s a -> s {_dbBackupId = a})

instance AWSRequest DeleteBackup where
  type Rs DeleteBackup = DeleteBackupResponse
  request = postJSON opsWorksCM
  response =
    receiveEmpty
      ( \s h x ->
          DeleteBackupResponse' <$> (pure (fromEnum s))
      )

instance Hashable DeleteBackup

instance NFData DeleteBackup

instance ToHeaders DeleteBackup where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "OpsWorksCM_V2016_11_01.DeleteBackup" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteBackup where
  toJSON DeleteBackup' {..} =
    object
      (catMaybes [Just ("BackupId" .= _dbBackupId)])

instance ToPath DeleteBackup where
  toPath = const "/"

instance ToQuery DeleteBackup where
  toQuery = const mempty

-- | /See:/ 'deleteBackupResponse' smart constructor.
newtype DeleteBackupResponse = DeleteBackupResponse'
  { _dbrrsResponseStatus ::
      Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteBackupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dbrrsResponseStatus' - -- | The response status code.
deleteBackupResponse ::
  -- | 'dbrrsResponseStatus'
  Int ->
  DeleteBackupResponse
deleteBackupResponse pResponseStatus_ =
  DeleteBackupResponse'
    { _dbrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
dbrrsResponseStatus :: Lens' DeleteBackupResponse Int
dbrrsResponseStatus = lens _dbrrsResponseStatus (\s a -> s {_dbrrsResponseStatus = a})

instance NFData DeleteBackupResponse
