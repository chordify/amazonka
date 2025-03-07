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
-- Module      : Network.AWS.DMS.MoveReplicationTask
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Moves a replication task from its current replication instance to a
-- different target replication instance using the specified parameters.
-- The target replication instance must be created with the same or later
-- AWS DMS version as the current replication instance.
module Network.AWS.DMS.MoveReplicationTask
  ( -- * Creating a Request
    MoveReplicationTask (..),
    newMoveReplicationTask,

    -- * Request Lenses
    moveReplicationTask_replicationTaskArn,
    moveReplicationTask_targetReplicationInstanceArn,

    -- * Destructuring the Response
    MoveReplicationTaskResponse (..),
    newMoveReplicationTaskResponse,

    -- * Response Lenses
    moveReplicationTaskResponse_replicationTask,
    moveReplicationTaskResponse_httpStatus,
  )
where

import Network.AWS.DMS.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- |
--
-- /See:/ 'newMoveReplicationTask' smart constructor.
data MoveReplicationTask = MoveReplicationTask'
  { -- | The Amazon Resource Name (ARN) of the task that you want to move.
    replicationTaskArn :: Prelude.Text,
    -- | The ARN of the replication instance where you want to move the task to.
    targetReplicationInstanceArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'MoveReplicationTask' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'replicationTaskArn', 'moveReplicationTask_replicationTaskArn' - The Amazon Resource Name (ARN) of the task that you want to move.
--
-- 'targetReplicationInstanceArn', 'moveReplicationTask_targetReplicationInstanceArn' - The ARN of the replication instance where you want to move the task to.
newMoveReplicationTask ::
  -- | 'replicationTaskArn'
  Prelude.Text ->
  -- | 'targetReplicationInstanceArn'
  Prelude.Text ->
  MoveReplicationTask
newMoveReplicationTask
  pReplicationTaskArn_
  pTargetReplicationInstanceArn_ =
    MoveReplicationTask'
      { replicationTaskArn =
          pReplicationTaskArn_,
        targetReplicationInstanceArn =
          pTargetReplicationInstanceArn_
      }

-- | The Amazon Resource Name (ARN) of the task that you want to move.
moveReplicationTask_replicationTaskArn :: Lens.Lens' MoveReplicationTask Prelude.Text
moveReplicationTask_replicationTaskArn = Lens.lens (\MoveReplicationTask' {replicationTaskArn} -> replicationTaskArn) (\s@MoveReplicationTask' {} a -> s {replicationTaskArn = a} :: MoveReplicationTask)

-- | The ARN of the replication instance where you want to move the task to.
moveReplicationTask_targetReplicationInstanceArn :: Lens.Lens' MoveReplicationTask Prelude.Text
moveReplicationTask_targetReplicationInstanceArn = Lens.lens (\MoveReplicationTask' {targetReplicationInstanceArn} -> targetReplicationInstanceArn) (\s@MoveReplicationTask' {} a -> s {targetReplicationInstanceArn = a} :: MoveReplicationTask)

instance Prelude.AWSRequest MoveReplicationTask where
  type
    Rs MoveReplicationTask =
      MoveReplicationTaskResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          MoveReplicationTaskResponse'
            Prelude.<$> (x Prelude..?> "ReplicationTask")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable MoveReplicationTask

instance Prelude.NFData MoveReplicationTask

instance Prelude.ToHeaders MoveReplicationTask where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "AmazonDMSv20160101.MoveReplicationTask" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON MoveReplicationTask where
  toJSON MoveReplicationTask' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("ReplicationTaskArn" Prelude..= replicationTaskArn),
            Prelude.Just
              ( "TargetReplicationInstanceArn"
                  Prelude..= targetReplicationInstanceArn
              )
          ]
      )

instance Prelude.ToPath MoveReplicationTask where
  toPath = Prelude.const "/"

instance Prelude.ToQuery MoveReplicationTask where
  toQuery = Prelude.const Prelude.mempty

-- |
--
-- /See:/ 'newMoveReplicationTaskResponse' smart constructor.
data MoveReplicationTaskResponse = MoveReplicationTaskResponse'
  { -- | The replication task that was moved.
    replicationTask :: Prelude.Maybe ReplicationTask,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'MoveReplicationTaskResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'replicationTask', 'moveReplicationTaskResponse_replicationTask' - The replication task that was moved.
--
-- 'httpStatus', 'moveReplicationTaskResponse_httpStatus' - The response's http status code.
newMoveReplicationTaskResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  MoveReplicationTaskResponse
newMoveReplicationTaskResponse pHttpStatus_ =
  MoveReplicationTaskResponse'
    { replicationTask =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The replication task that was moved.
moveReplicationTaskResponse_replicationTask :: Lens.Lens' MoveReplicationTaskResponse (Prelude.Maybe ReplicationTask)
moveReplicationTaskResponse_replicationTask = Lens.lens (\MoveReplicationTaskResponse' {replicationTask} -> replicationTask) (\s@MoveReplicationTaskResponse' {} a -> s {replicationTask = a} :: MoveReplicationTaskResponse)

-- | The response's http status code.
moveReplicationTaskResponse_httpStatus :: Lens.Lens' MoveReplicationTaskResponse Prelude.Int
moveReplicationTaskResponse_httpStatus = Lens.lens (\MoveReplicationTaskResponse' {httpStatus} -> httpStatus) (\s@MoveReplicationTaskResponse' {} a -> s {httpStatus = a} :: MoveReplicationTaskResponse)

instance Prelude.NFData MoveReplicationTaskResponse
