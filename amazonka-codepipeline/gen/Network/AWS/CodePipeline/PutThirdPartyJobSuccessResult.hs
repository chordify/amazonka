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
-- Module      : Network.AWS.CodePipeline.PutThirdPartyJobSuccessResult
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Represents the success of a third party job as returned to the pipeline
-- by a job worker. Used for partner actions only.
module Network.AWS.CodePipeline.PutThirdPartyJobSuccessResult
  ( -- * Creating a Request
    PutThirdPartyJobSuccessResult (..),
    newPutThirdPartyJobSuccessResult,

    -- * Request Lenses
    putThirdPartyJobSuccessResult_executionDetails,
    putThirdPartyJobSuccessResult_currentRevision,
    putThirdPartyJobSuccessResult_continuationToken,
    putThirdPartyJobSuccessResult_jobId,
    putThirdPartyJobSuccessResult_clientToken,

    -- * Destructuring the Response
    PutThirdPartyJobSuccessResultResponse (..),
    newPutThirdPartyJobSuccessResultResponse,
  )
where

import Network.AWS.CodePipeline.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Represents the input of a @PutThirdPartyJobSuccessResult@ action.
--
-- /See:/ 'newPutThirdPartyJobSuccessResult' smart constructor.
data PutThirdPartyJobSuccessResult = PutThirdPartyJobSuccessResult'
  { -- | The details of the actions taken and results produced on an artifact as
    -- it passes through stages in the pipeline.
    executionDetails :: Prelude.Maybe ExecutionDetails,
    -- | Represents information about a current revision.
    currentRevision :: Prelude.Maybe CurrentRevision,
    -- | A token generated by a job worker, such as an AWS CodeDeploy deployment
    -- ID, that a successful job provides to identify a partner action in
    -- progress. Future jobs use this token to identify the running instance of
    -- the action. It can be reused to return more information about the
    -- progress of the partner action. When the action is complete, no
    -- continuation token should be supplied.
    continuationToken :: Prelude.Maybe Prelude.Text,
    -- | The ID of the job that successfully completed. This is the same ID
    -- returned from @PollForThirdPartyJobs@.
    jobId :: Prelude.Text,
    -- | The clientToken portion of the clientId and clientToken pair used to
    -- verify that the calling entity is allowed access to the job and its
    -- details.
    clientToken :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'PutThirdPartyJobSuccessResult' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'executionDetails', 'putThirdPartyJobSuccessResult_executionDetails' - The details of the actions taken and results produced on an artifact as
-- it passes through stages in the pipeline.
--
-- 'currentRevision', 'putThirdPartyJobSuccessResult_currentRevision' - Represents information about a current revision.
--
-- 'continuationToken', 'putThirdPartyJobSuccessResult_continuationToken' - A token generated by a job worker, such as an AWS CodeDeploy deployment
-- ID, that a successful job provides to identify a partner action in
-- progress. Future jobs use this token to identify the running instance of
-- the action. It can be reused to return more information about the
-- progress of the partner action. When the action is complete, no
-- continuation token should be supplied.
--
-- 'jobId', 'putThirdPartyJobSuccessResult_jobId' - The ID of the job that successfully completed. This is the same ID
-- returned from @PollForThirdPartyJobs@.
--
-- 'clientToken', 'putThirdPartyJobSuccessResult_clientToken' - The clientToken portion of the clientId and clientToken pair used to
-- verify that the calling entity is allowed access to the job and its
-- details.
newPutThirdPartyJobSuccessResult ::
  -- | 'jobId'
  Prelude.Text ->
  -- | 'clientToken'
  Prelude.Text ->
  PutThirdPartyJobSuccessResult
newPutThirdPartyJobSuccessResult
  pJobId_
  pClientToken_ =
    PutThirdPartyJobSuccessResult'
      { executionDetails =
          Prelude.Nothing,
        currentRevision = Prelude.Nothing,
        continuationToken = Prelude.Nothing,
        jobId = pJobId_,
        clientToken = pClientToken_
      }

-- | The details of the actions taken and results produced on an artifact as
-- it passes through stages in the pipeline.
putThirdPartyJobSuccessResult_executionDetails :: Lens.Lens' PutThirdPartyJobSuccessResult (Prelude.Maybe ExecutionDetails)
putThirdPartyJobSuccessResult_executionDetails = Lens.lens (\PutThirdPartyJobSuccessResult' {executionDetails} -> executionDetails) (\s@PutThirdPartyJobSuccessResult' {} a -> s {executionDetails = a} :: PutThirdPartyJobSuccessResult)

-- | Represents information about a current revision.
putThirdPartyJobSuccessResult_currentRevision :: Lens.Lens' PutThirdPartyJobSuccessResult (Prelude.Maybe CurrentRevision)
putThirdPartyJobSuccessResult_currentRevision = Lens.lens (\PutThirdPartyJobSuccessResult' {currentRevision} -> currentRevision) (\s@PutThirdPartyJobSuccessResult' {} a -> s {currentRevision = a} :: PutThirdPartyJobSuccessResult)

-- | A token generated by a job worker, such as an AWS CodeDeploy deployment
-- ID, that a successful job provides to identify a partner action in
-- progress. Future jobs use this token to identify the running instance of
-- the action. It can be reused to return more information about the
-- progress of the partner action. When the action is complete, no
-- continuation token should be supplied.
putThirdPartyJobSuccessResult_continuationToken :: Lens.Lens' PutThirdPartyJobSuccessResult (Prelude.Maybe Prelude.Text)
putThirdPartyJobSuccessResult_continuationToken = Lens.lens (\PutThirdPartyJobSuccessResult' {continuationToken} -> continuationToken) (\s@PutThirdPartyJobSuccessResult' {} a -> s {continuationToken = a} :: PutThirdPartyJobSuccessResult)

-- | The ID of the job that successfully completed. This is the same ID
-- returned from @PollForThirdPartyJobs@.
putThirdPartyJobSuccessResult_jobId :: Lens.Lens' PutThirdPartyJobSuccessResult Prelude.Text
putThirdPartyJobSuccessResult_jobId = Lens.lens (\PutThirdPartyJobSuccessResult' {jobId} -> jobId) (\s@PutThirdPartyJobSuccessResult' {} a -> s {jobId = a} :: PutThirdPartyJobSuccessResult)

-- | The clientToken portion of the clientId and clientToken pair used to
-- verify that the calling entity is allowed access to the job and its
-- details.
putThirdPartyJobSuccessResult_clientToken :: Lens.Lens' PutThirdPartyJobSuccessResult Prelude.Text
putThirdPartyJobSuccessResult_clientToken = Lens.lens (\PutThirdPartyJobSuccessResult' {clientToken} -> clientToken) (\s@PutThirdPartyJobSuccessResult' {} a -> s {clientToken = a} :: PutThirdPartyJobSuccessResult)

instance
  Prelude.AWSRequest
    PutThirdPartyJobSuccessResult
  where
  type
    Rs PutThirdPartyJobSuccessResult =
      PutThirdPartyJobSuccessResultResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveNull
      PutThirdPartyJobSuccessResultResponse'

instance
  Prelude.Hashable
    PutThirdPartyJobSuccessResult

instance Prelude.NFData PutThirdPartyJobSuccessResult

instance
  Prelude.ToHeaders
    PutThirdPartyJobSuccessResult
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "CodePipeline_20150709.PutThirdPartyJobSuccessResult" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON PutThirdPartyJobSuccessResult where
  toJSON PutThirdPartyJobSuccessResult' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("executionDetails" Prelude..=)
              Prelude.<$> executionDetails,
            ("currentRevision" Prelude..=)
              Prelude.<$> currentRevision,
            ("continuationToken" Prelude..=)
              Prelude.<$> continuationToken,
            Prelude.Just ("jobId" Prelude..= jobId),
            Prelude.Just ("clientToken" Prelude..= clientToken)
          ]
      )

instance Prelude.ToPath PutThirdPartyJobSuccessResult where
  toPath = Prelude.const "/"

instance
  Prelude.ToQuery
    PutThirdPartyJobSuccessResult
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newPutThirdPartyJobSuccessResultResponse' smart constructor.
data PutThirdPartyJobSuccessResultResponse = PutThirdPartyJobSuccessResultResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'PutThirdPartyJobSuccessResultResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newPutThirdPartyJobSuccessResultResponse ::
  PutThirdPartyJobSuccessResultResponse
newPutThirdPartyJobSuccessResultResponse =
  PutThirdPartyJobSuccessResultResponse'

instance
  Prelude.NFData
    PutThirdPartyJobSuccessResultResponse
