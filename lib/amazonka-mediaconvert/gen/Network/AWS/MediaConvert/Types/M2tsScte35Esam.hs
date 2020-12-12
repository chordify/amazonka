{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.M2tsScte35Esam
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.M2tsScte35Esam
  ( M2tsScte35Esam (..),

    -- * Smart constructor
    mkM2tsScte35Esam,

    -- * Lenses
    mseScte35EsamPid,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | Settings for SCTE-35 signals from ESAM. Include this in your job settings to put SCTE-35 markers in your HLS and transport stream outputs at the insertion points that you specify in an ESAM XML document. Provide the document in the setting SCC XML (sccXml).
--
-- /See:/ 'mkM2tsScte35Esam' smart constructor.
newtype M2tsScte35Esam = M2tsScte35Esam'
  { scte35EsamPid ::
      Lude.Maybe Lude.Natural
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving newtype (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'M2tsScte35Esam' with the minimum fields required to make a request.
--
-- * 'scte35EsamPid' - Packet Identifier (PID) of the SCTE-35 stream in the transport stream generated by ESAM.
mkM2tsScte35Esam ::
  M2tsScte35Esam
mkM2tsScte35Esam = M2tsScte35Esam' {scte35EsamPid = Lude.Nothing}

-- | Packet Identifier (PID) of the SCTE-35 stream in the transport stream generated by ESAM.
--
-- /Note:/ Consider using 'scte35EsamPid' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mseScte35EsamPid :: Lens.Lens' M2tsScte35Esam (Lude.Maybe Lude.Natural)
mseScte35EsamPid = Lens.lens (scte35EsamPid :: M2tsScte35Esam -> Lude.Maybe Lude.Natural) (\s a -> s {scte35EsamPid = a} :: M2tsScte35Esam)
{-# DEPRECATED mseScte35EsamPid "Use generic-lens or generic-optics with 'scte35EsamPid' instead." #-}

instance Lude.FromJSON M2tsScte35Esam where
  parseJSON =
    Lude.withObject
      "M2tsScte35Esam"
      (\x -> M2tsScte35Esam' Lude.<$> (x Lude..:? "scte35EsamPid"))

instance Lude.ToJSON M2tsScte35Esam where
  toJSON M2tsScte35Esam' {..} =
    Lude.object
      (Lude.catMaybes [("scte35EsamPid" Lude..=) Lude.<$> scte35EsamPid])
