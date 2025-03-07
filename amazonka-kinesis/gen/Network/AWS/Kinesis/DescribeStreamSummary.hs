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
-- Module      : Network.AWS.Kinesis.DescribeStreamSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides a summarized description of the specified Kinesis data stream
-- without the shard list.
--
-- The information returned includes the stream name, Amazon Resource Name
-- (ARN), status, record retention period, approximate creation time,
-- monitoring, encryption details, and open shard count.
--
-- DescribeStreamSummary has a limit of 20 transactions per second per
-- account.
module Network.AWS.Kinesis.DescribeStreamSummary
  ( -- * Creating a Request
    DescribeStreamSummary (..),
    newDescribeStreamSummary,

    -- * Request Lenses
    describeStreamSummary_streamName,

    -- * Destructuring the Response
    DescribeStreamSummaryResponse (..),
    newDescribeStreamSummaryResponse,

    -- * Response Lenses
    describeStreamSummaryResponse_httpStatus,
    describeStreamSummaryResponse_streamDescriptionSummary,
  )
where

import Network.AWS.Kinesis.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeStreamSummary' smart constructor.
data DescribeStreamSummary = DescribeStreamSummary'
  { -- | The name of the stream to describe.
    streamName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DescribeStreamSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'streamName', 'describeStreamSummary_streamName' - The name of the stream to describe.
newDescribeStreamSummary ::
  -- | 'streamName'
  Prelude.Text ->
  DescribeStreamSummary
newDescribeStreamSummary pStreamName_ =
  DescribeStreamSummary' {streamName = pStreamName_}

-- | The name of the stream to describe.
describeStreamSummary_streamName :: Lens.Lens' DescribeStreamSummary Prelude.Text
describeStreamSummary_streamName = Lens.lens (\DescribeStreamSummary' {streamName} -> streamName) (\s@DescribeStreamSummary' {} a -> s {streamName = a} :: DescribeStreamSummary)

instance Prelude.AWSRequest DescribeStreamSummary where
  type
    Rs DescribeStreamSummary =
      DescribeStreamSummaryResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeStreamSummaryResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Prelude..:> "StreamDescriptionSummary")
      )

instance Prelude.Hashable DescribeStreamSummary

instance Prelude.NFData DescribeStreamSummary

instance Prelude.ToHeaders DescribeStreamSummary where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "Kinesis_20131202.DescribeStreamSummary" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON DescribeStreamSummary where
  toJSON DescribeStreamSummary' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [Prelude.Just ("StreamName" Prelude..= streamName)]
      )

instance Prelude.ToPath DescribeStreamSummary where
  toPath = Prelude.const "/"

instance Prelude.ToQuery DescribeStreamSummary where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeStreamSummaryResponse' smart constructor.
data DescribeStreamSummaryResponse = DescribeStreamSummaryResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | A StreamDescriptionSummary containing information about the stream.
    streamDescriptionSummary :: StreamDescriptionSummary
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DescribeStreamSummaryResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'describeStreamSummaryResponse_httpStatus' - The response's http status code.
--
-- 'streamDescriptionSummary', 'describeStreamSummaryResponse_streamDescriptionSummary' - A StreamDescriptionSummary containing information about the stream.
newDescribeStreamSummaryResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'streamDescriptionSummary'
  StreamDescriptionSummary ->
  DescribeStreamSummaryResponse
newDescribeStreamSummaryResponse
  pHttpStatus_
  pStreamDescriptionSummary_ =
    DescribeStreamSummaryResponse'
      { httpStatus =
          pHttpStatus_,
        streamDescriptionSummary =
          pStreamDescriptionSummary_
      }

-- | The response's http status code.
describeStreamSummaryResponse_httpStatus :: Lens.Lens' DescribeStreamSummaryResponse Prelude.Int
describeStreamSummaryResponse_httpStatus = Lens.lens (\DescribeStreamSummaryResponse' {httpStatus} -> httpStatus) (\s@DescribeStreamSummaryResponse' {} a -> s {httpStatus = a} :: DescribeStreamSummaryResponse)

-- | A StreamDescriptionSummary containing information about the stream.
describeStreamSummaryResponse_streamDescriptionSummary :: Lens.Lens' DescribeStreamSummaryResponse StreamDescriptionSummary
describeStreamSummaryResponse_streamDescriptionSummary = Lens.lens (\DescribeStreamSummaryResponse' {streamDescriptionSummary} -> streamDescriptionSummary) (\s@DescribeStreamSummaryResponse' {} a -> s {streamDescriptionSummary = a} :: DescribeStreamSummaryResponse)

instance Prelude.NFData DescribeStreamSummaryResponse
