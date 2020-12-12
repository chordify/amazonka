{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Connect.Types.CurrentMetricName
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Connect.Types.CurrentMetricName
  ( CurrentMetricName
      ( CurrentMetricName',
        AgentsAfterContactWork,
        AgentsAvailable,
        AgentsError,
        AgentsNonProductive,
        AgentsOnCall,
        AgentsOnContact,
        AgentsOnline,
        AgentsStaffed,
        ContactsInQueue,
        ContactsScheduled,
        OldestContactAge,
        SlotsActive,
        SlotsAvailable
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

-- | The current metric names.
newtype CurrentMetricName = CurrentMetricName' Lude.Text
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving newtype
    ( Lude.Hashable,
      Lude.NFData,
      Lude.ToJSONKey,
      Lude.FromJSONKey,
      Lude.ToJSON,
      Lude.FromJSON,
      Lude.ToXML,
      Lude.FromXML,
      Lude.ToText,
      Lude.FromText,
      Lude.ToByteString,
      Lude.ToQuery,
      Lude.ToHeader
    )

pattern AgentsAfterContactWork :: CurrentMetricName
pattern AgentsAfterContactWork = CurrentMetricName' "AGENTS_AFTER_CONTACT_WORK"

pattern AgentsAvailable :: CurrentMetricName
pattern AgentsAvailable = CurrentMetricName' "AGENTS_AVAILABLE"

pattern AgentsError :: CurrentMetricName
pattern AgentsError = CurrentMetricName' "AGENTS_ERROR"

pattern AgentsNonProductive :: CurrentMetricName
pattern AgentsNonProductive = CurrentMetricName' "AGENTS_NON_PRODUCTIVE"

pattern AgentsOnCall :: CurrentMetricName
pattern AgentsOnCall = CurrentMetricName' "AGENTS_ON_CALL"

pattern AgentsOnContact :: CurrentMetricName
pattern AgentsOnContact = CurrentMetricName' "AGENTS_ON_CONTACT"

pattern AgentsOnline :: CurrentMetricName
pattern AgentsOnline = CurrentMetricName' "AGENTS_ONLINE"

pattern AgentsStaffed :: CurrentMetricName
pattern AgentsStaffed = CurrentMetricName' "AGENTS_STAFFED"

pattern ContactsInQueue :: CurrentMetricName
pattern ContactsInQueue = CurrentMetricName' "CONTACTS_IN_QUEUE"

pattern ContactsScheduled :: CurrentMetricName
pattern ContactsScheduled = CurrentMetricName' "CONTACTS_SCHEDULED"

pattern OldestContactAge :: CurrentMetricName
pattern OldestContactAge = CurrentMetricName' "OLDEST_CONTACT_AGE"

pattern SlotsActive :: CurrentMetricName
pattern SlotsActive = CurrentMetricName' "SLOTS_ACTIVE"

pattern SlotsAvailable :: CurrentMetricName
pattern SlotsAvailable = CurrentMetricName' "SLOTS_AVAILABLE"

{-# COMPLETE
  AgentsAfterContactWork,
  AgentsAvailable,
  AgentsError,
  AgentsNonProductive,
  AgentsOnCall,
  AgentsOnContact,
  AgentsOnline,
  AgentsStaffed,
  ContactsInQueue,
  ContactsScheduled,
  OldestContactAge,
  SlotsActive,
  SlotsAvailable,
  CurrentMetricName'
  #-}
