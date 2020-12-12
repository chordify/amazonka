{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.KinesisVideoArchivedMedia.Types.HLSFragmentSelector
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisVideoArchivedMedia.Types.HLSFragmentSelector
  ( HLSFragmentSelector (..),

    -- * Smart constructor
    mkHLSFragmentSelector,

    -- * Lenses
    hlsfsFragmentSelectorType,
    hlsfsTimestampRange,
  )
where

import Network.AWS.KinesisVideoArchivedMedia.Types.HLSFragmentSelectorType
import Network.AWS.KinesisVideoArchivedMedia.Types.HLSTimestampRange
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | Contains the range of timestamps for the requested media, and the source of the timestamps.
--
-- /See:/ 'mkHLSFragmentSelector' smart constructor.
data HLSFragmentSelector = HLSFragmentSelector'
  { fragmentSelectorType ::
      Lude.Maybe HLSFragmentSelectorType,
    timestampRange :: Lude.Maybe HLSTimestampRange
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'HLSFragmentSelector' with the minimum fields required to make a request.
--
-- * 'fragmentSelectorType' - The source of the timestamps for the requested media.
--
-- When @FragmentSelectorType@ is set to @PRODUCER_TIMESTAMP@ and 'GetHLSStreamingSessionURLInput$PlaybackMode' is @ON_DEMAND@ or @LIVE_REPLAY@ , the first fragment ingested with a producer timestamp within the specified 'FragmentSelector$TimestampRange' is included in the media playlist. In addition, the fragments with producer timestamps within the @TimestampRange@ ingested immediately following the first fragment (up to the 'GetHLSStreamingSessionURLInput$MaxMediaPlaylistFragmentResults' value) are included.
-- Fragments that have duplicate producer timestamps are deduplicated. This means that if producers are producing a stream of fragments with producer timestamps that are approximately equal to the true clock time, the HLS media playlists will contain all of the fragments within the requested timestamp range. If some fragments are ingested within the same time range and very different points in time, only the oldest ingested collection of fragments are returned.
-- When @FragmentSelectorType@ is set to @PRODUCER_TIMESTAMP@ and 'GetHLSStreamingSessionURLInput$PlaybackMode' is @LIVE@ , the producer timestamps are used in the MP4 fragments and for deduplication. But the most recently ingested fragments based on server timestamps are included in the HLS media playlist. This means that even if fragments ingested in the past have producer timestamps with values now, they are not included in the HLS media playlist.
-- The default is @SERVER_TIMESTAMP@ .
-- * 'timestampRange' - The start and end of the timestamp range for the requested media.
--
-- This value should not be present if @PlaybackType@ is @LIVE@ .
mkHLSFragmentSelector ::
  HLSFragmentSelector
mkHLSFragmentSelector =
  HLSFragmentSelector'
    { fragmentSelectorType = Lude.Nothing,
      timestampRange = Lude.Nothing
    }

-- | The source of the timestamps for the requested media.
--
-- When @FragmentSelectorType@ is set to @PRODUCER_TIMESTAMP@ and 'GetHLSStreamingSessionURLInput$PlaybackMode' is @ON_DEMAND@ or @LIVE_REPLAY@ , the first fragment ingested with a producer timestamp within the specified 'FragmentSelector$TimestampRange' is included in the media playlist. In addition, the fragments with producer timestamps within the @TimestampRange@ ingested immediately following the first fragment (up to the 'GetHLSStreamingSessionURLInput$MaxMediaPlaylistFragmentResults' value) are included.
-- Fragments that have duplicate producer timestamps are deduplicated. This means that if producers are producing a stream of fragments with producer timestamps that are approximately equal to the true clock time, the HLS media playlists will contain all of the fragments within the requested timestamp range. If some fragments are ingested within the same time range and very different points in time, only the oldest ingested collection of fragments are returned.
-- When @FragmentSelectorType@ is set to @PRODUCER_TIMESTAMP@ and 'GetHLSStreamingSessionURLInput$PlaybackMode' is @LIVE@ , the producer timestamps are used in the MP4 fragments and for deduplication. But the most recently ingested fragments based on server timestamps are included in the HLS media playlist. This means that even if fragments ingested in the past have producer timestamps with values now, they are not included in the HLS media playlist.
-- The default is @SERVER_TIMESTAMP@ .
--
-- /Note:/ Consider using 'fragmentSelectorType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
hlsfsFragmentSelectorType :: Lens.Lens' HLSFragmentSelector (Lude.Maybe HLSFragmentSelectorType)
hlsfsFragmentSelectorType = Lens.lens (fragmentSelectorType :: HLSFragmentSelector -> Lude.Maybe HLSFragmentSelectorType) (\s a -> s {fragmentSelectorType = a} :: HLSFragmentSelector)
{-# DEPRECATED hlsfsFragmentSelectorType "Use generic-lens or generic-optics with 'fragmentSelectorType' instead." #-}

-- | The start and end of the timestamp range for the requested media.
--
-- This value should not be present if @PlaybackType@ is @LIVE@ .
--
-- /Note:/ Consider using 'timestampRange' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
hlsfsTimestampRange :: Lens.Lens' HLSFragmentSelector (Lude.Maybe HLSTimestampRange)
hlsfsTimestampRange = Lens.lens (timestampRange :: HLSFragmentSelector -> Lude.Maybe HLSTimestampRange) (\s a -> s {timestampRange = a} :: HLSFragmentSelector)
{-# DEPRECATED hlsfsTimestampRange "Use generic-lens or generic-optics with 'timestampRange' instead." #-}

instance Lude.ToJSON HLSFragmentSelector where
  toJSON HLSFragmentSelector' {..} =
    Lude.object
      ( Lude.catMaybes
          [ ("FragmentSelectorType" Lude..=) Lude.<$> fragmentSelectorType,
            ("TimestampRange" Lude..=) Lude.<$> timestampRange
          ]
      )
