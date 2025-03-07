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
-- Module      : Network.AWS.WorkDocs.Types.LocaleType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkDocs.Types.LocaleType
  ( LocaleType
      ( ..,
        LocaleType_De,
        LocaleType_Default,
        LocaleType_En,
        LocaleType_Es,
        LocaleType_Fr,
        LocaleType_Ja,
        LocaleType_Ko,
        LocaleType_Pt_BR,
        LocaleType_Ru,
        LocaleType_Zh_CN,
        LocaleType_Zh_TW
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype LocaleType = LocaleType'
  { fromLocaleType ::
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

pattern LocaleType_De :: LocaleType
pattern LocaleType_De = LocaleType' "de"

pattern LocaleType_Default :: LocaleType
pattern LocaleType_Default = LocaleType' "default"

pattern LocaleType_En :: LocaleType
pattern LocaleType_En = LocaleType' "en"

pattern LocaleType_Es :: LocaleType
pattern LocaleType_Es = LocaleType' "es"

pattern LocaleType_Fr :: LocaleType
pattern LocaleType_Fr = LocaleType' "fr"

pattern LocaleType_Ja :: LocaleType
pattern LocaleType_Ja = LocaleType' "ja"

pattern LocaleType_Ko :: LocaleType
pattern LocaleType_Ko = LocaleType' "ko"

pattern LocaleType_Pt_BR :: LocaleType
pattern LocaleType_Pt_BR = LocaleType' "pt_BR"

pattern LocaleType_Ru :: LocaleType
pattern LocaleType_Ru = LocaleType' "ru"

pattern LocaleType_Zh_CN :: LocaleType
pattern LocaleType_Zh_CN = LocaleType' "zh_CN"

pattern LocaleType_Zh_TW :: LocaleType
pattern LocaleType_Zh_TW = LocaleType' "zh_TW"

{-# COMPLETE
  LocaleType_De,
  LocaleType_Default,
  LocaleType_En,
  LocaleType_Es,
  LocaleType_Fr,
  LocaleType_Ja,
  LocaleType_Ko,
  LocaleType_Pt_BR,
  LocaleType_Ru,
  LocaleType_Zh_CN,
  LocaleType_Zh_TW,
  LocaleType'
  #-}
