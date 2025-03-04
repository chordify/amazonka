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
-- Module      : Network.AWS.DeviceFarm.ListOfferingTransactions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of all historical purchases, renewals, and system renewal
-- transactions for an AWS account. The list is paginated and ordered by a
-- descending timestamp (most recent transactions are first). The API
-- returns a @NotEligible@ error if the user is not permitted to invoke the
-- operation. If you must be able to invoke this operation, contact
-- <mailto:aws-devicefarm-support@amazon.com aws-devicefarm-support\@amazon.com>.
--
-- This operation returns paginated results.
module Network.AWS.DeviceFarm.ListOfferingTransactions
  ( -- * Creating a Request
    ListOfferingTransactions (..),
    newListOfferingTransactions,

    -- * Request Lenses
    listOfferingTransactions_nextToken,

    -- * Destructuring the Response
    ListOfferingTransactionsResponse (..),
    newListOfferingTransactionsResponse,

    -- * Response Lenses
    listOfferingTransactionsResponse_offeringTransactions,
    listOfferingTransactionsResponse_nextToken,
    listOfferingTransactionsResponse_httpStatus,
  )
where

import Network.AWS.DeviceFarm.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Represents the request to list the offering transaction history.
--
-- /See:/ 'newListOfferingTransactions' smart constructor.
data ListOfferingTransactions = ListOfferingTransactions'
  { -- | An identifier that was returned from the previous call to this
    -- operation, which can be used to return the next set of items in the
    -- list.
    nextToken :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'ListOfferingTransactions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listOfferingTransactions_nextToken' - An identifier that was returned from the previous call to this
-- operation, which can be used to return the next set of items in the
-- list.
newListOfferingTransactions ::
  ListOfferingTransactions
newListOfferingTransactions =
  ListOfferingTransactions'
    { nextToken =
        Prelude.Nothing
    }

-- | An identifier that was returned from the previous call to this
-- operation, which can be used to return the next set of items in the
-- list.
listOfferingTransactions_nextToken :: Lens.Lens' ListOfferingTransactions (Prelude.Maybe Prelude.Text)
listOfferingTransactions_nextToken = Lens.lens (\ListOfferingTransactions' {nextToken} -> nextToken) (\s@ListOfferingTransactions' {} a -> s {nextToken = a} :: ListOfferingTransactions)

instance Pager.AWSPager ListOfferingTransactions where
  page rq rs
    | Pager.stop
        ( rs
            Lens.^? listOfferingTransactionsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Pager.stop
        ( rs
            Lens.^? listOfferingTransactionsResponse_offeringTransactions
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Lens.& listOfferingTransactions_nextToken
          Lens..~ rs
          Lens.^? listOfferingTransactionsResponse_nextToken
            Prelude.. Lens._Just

instance Prelude.AWSRequest ListOfferingTransactions where
  type
    Rs ListOfferingTransactions =
      ListOfferingTransactionsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListOfferingTransactionsResponse'
            Prelude.<$> ( x Prelude..?> "offeringTransactions"
                            Prelude..!@ Prelude.mempty
                        )
            Prelude.<*> (x Prelude..?> "nextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListOfferingTransactions

instance Prelude.NFData ListOfferingTransactions

instance Prelude.ToHeaders ListOfferingTransactions where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "DeviceFarm_20150623.ListOfferingTransactions" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON ListOfferingTransactions where
  toJSON ListOfferingTransactions' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [("nextToken" Prelude..=) Prelude.<$> nextToken]
      )

instance Prelude.ToPath ListOfferingTransactions where
  toPath = Prelude.const "/"

instance Prelude.ToQuery ListOfferingTransactions where
  toQuery = Prelude.const Prelude.mempty

-- | Returns the transaction log of the specified offerings.
--
-- /See:/ 'newListOfferingTransactionsResponse' smart constructor.
data ListOfferingTransactionsResponse = ListOfferingTransactionsResponse'
  { -- | The audit log of subscriptions you have purchased and modified through
    -- AWS Device Farm.
    offeringTransactions :: Prelude.Maybe [OfferingTransaction],
    -- | An identifier that was returned from the previous call to this
    -- operation, which can be used to return the next set of items in the
    -- list.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'ListOfferingTransactionsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'offeringTransactions', 'listOfferingTransactionsResponse_offeringTransactions' - The audit log of subscriptions you have purchased and modified through
-- AWS Device Farm.
--
-- 'nextToken', 'listOfferingTransactionsResponse_nextToken' - An identifier that was returned from the previous call to this
-- operation, which can be used to return the next set of items in the
-- list.
--
-- 'httpStatus', 'listOfferingTransactionsResponse_httpStatus' - The response's http status code.
newListOfferingTransactionsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListOfferingTransactionsResponse
newListOfferingTransactionsResponse pHttpStatus_ =
  ListOfferingTransactionsResponse'
    { offeringTransactions =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The audit log of subscriptions you have purchased and modified through
-- AWS Device Farm.
listOfferingTransactionsResponse_offeringTransactions :: Lens.Lens' ListOfferingTransactionsResponse (Prelude.Maybe [OfferingTransaction])
listOfferingTransactionsResponse_offeringTransactions = Lens.lens (\ListOfferingTransactionsResponse' {offeringTransactions} -> offeringTransactions) (\s@ListOfferingTransactionsResponse' {} a -> s {offeringTransactions = a} :: ListOfferingTransactionsResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | An identifier that was returned from the previous call to this
-- operation, which can be used to return the next set of items in the
-- list.
listOfferingTransactionsResponse_nextToken :: Lens.Lens' ListOfferingTransactionsResponse (Prelude.Maybe Prelude.Text)
listOfferingTransactionsResponse_nextToken = Lens.lens (\ListOfferingTransactionsResponse' {nextToken} -> nextToken) (\s@ListOfferingTransactionsResponse' {} a -> s {nextToken = a} :: ListOfferingTransactionsResponse)

-- | The response's http status code.
listOfferingTransactionsResponse_httpStatus :: Lens.Lens' ListOfferingTransactionsResponse Prelude.Int
listOfferingTransactionsResponse_httpStatus = Lens.lens (\ListOfferingTransactionsResponse' {httpStatus} -> httpStatus) (\s@ListOfferingTransactionsResponse' {} a -> s {httpStatus = a} :: ListOfferingTransactionsResponse)

instance
  Prelude.NFData
    ListOfferingTransactionsResponse
