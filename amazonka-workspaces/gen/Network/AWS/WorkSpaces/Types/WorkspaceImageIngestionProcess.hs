{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkSpaces.Types.WorkspaceImageIngestionProcess
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkSpaces.Types.WorkspaceImageIngestionProcess
  ( WorkspaceImageIngestionProcess
      ( ..,
        WorkspaceImageIngestionProcess_BYOL_GRAPHICS,
        WorkspaceImageIngestionProcess_BYOL_GRAPHICSPRO,
        WorkspaceImageIngestionProcess_BYOL_REGULAR,
        WorkspaceImageIngestionProcess_BYOL_REGULAR_WSP
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype WorkspaceImageIngestionProcess = WorkspaceImageIngestionProcess'
  { fromWorkspaceImageIngestionProcess ::
      Prelude.Text
  }
  deriving
    ( Prelude.Show,
      Prelude.Read,
      Prelude.Eq,
      Prelude.Ord,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic,
      Prelude.Hashable,
      Prelude.NFData,
      Prelude.FromText,
      Prelude.ToText,
      Prelude.ToByteString,
      Prelude.ToLog,
      Prelude.ToHeader,
      Prelude.ToQuery,
      Prelude.FromJSON,
      Prelude.FromJSONKey,
      Prelude.ToJSON,
      Prelude.ToJSONKey,
      Prelude.FromXML,
      Prelude.ToXML
    )

pattern WorkspaceImageIngestionProcess_BYOL_GRAPHICS :: WorkspaceImageIngestionProcess
pattern WorkspaceImageIngestionProcess_BYOL_GRAPHICS = WorkspaceImageIngestionProcess' "BYOL_GRAPHICS"

pattern WorkspaceImageIngestionProcess_BYOL_GRAPHICSPRO :: WorkspaceImageIngestionProcess
pattern WorkspaceImageIngestionProcess_BYOL_GRAPHICSPRO = WorkspaceImageIngestionProcess' "BYOL_GRAPHICSPRO"

pattern WorkspaceImageIngestionProcess_BYOL_REGULAR :: WorkspaceImageIngestionProcess
pattern WorkspaceImageIngestionProcess_BYOL_REGULAR = WorkspaceImageIngestionProcess' "BYOL_REGULAR"

pattern WorkspaceImageIngestionProcess_BYOL_REGULAR_WSP :: WorkspaceImageIngestionProcess
pattern WorkspaceImageIngestionProcess_BYOL_REGULAR_WSP = WorkspaceImageIngestionProcess' "BYOL_REGULAR_WSP"

{-# COMPLETE
  WorkspaceImageIngestionProcess_BYOL_GRAPHICS,
  WorkspaceImageIngestionProcess_BYOL_GRAPHICSPRO,
  WorkspaceImageIngestionProcess_BYOL_REGULAR,
  WorkspaceImageIngestionProcess_BYOL_REGULAR_WSP,
  WorkspaceImageIngestionProcess'
  #-}
