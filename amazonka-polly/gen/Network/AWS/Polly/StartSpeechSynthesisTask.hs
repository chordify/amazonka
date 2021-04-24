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
-- Module      : Network.AWS.Polly.StartSpeechSynthesisTask
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Allows the creation of an asynchronous synthesis task, by starting a new @SpeechSynthesisTask@ . This operation requires all the standard information needed for speech synthesis, plus the name of an Amazon S3 bucket for the service to store the output of the synthesis task and two optional parameters (OutputS3KeyPrefix and SnsTopicArn). Once the synthesis task is created, this operation will return a SpeechSynthesisTask object, which will include an identifier of this task as well as the current status.
module Network.AWS.Polly.StartSpeechSynthesisTask
  ( -- * Creating a Request
    startSpeechSynthesisTask,
    StartSpeechSynthesisTask,

    -- * Request Lenses
    ssstLanguageCode,
    ssstSpeechMarkTypes,
    ssstLexiconNames,
    ssstTextType,
    ssstSampleRate,
    ssstEngine,
    ssstOutputS3KeyPrefix,
    ssstSNSTopicARN,
    ssstOutputFormat,
    ssstOutputS3BucketName,
    ssstText,
    ssstVoiceId,

    -- * Destructuring the Response
    startSpeechSynthesisTaskResponse,
    StartSpeechSynthesisTaskResponse,

    -- * Response Lenses
    ssstrrsSynthesisTask,
    ssstrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Polly.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'startSpeechSynthesisTask' smart constructor.
data StartSpeechSynthesisTask = StartSpeechSynthesisTask'
  { _ssstLanguageCode ::
      !(Maybe LanguageCode),
    _ssstSpeechMarkTypes ::
      !( Maybe
           [SpeechMarkType]
       ),
    _ssstLexiconNames ::
      !(Maybe [Text]),
    _ssstTextType ::
      !(Maybe TextType),
    _ssstSampleRate ::
      !(Maybe Text),
    _ssstEngine ::
      !(Maybe Engine),
    _ssstOutputS3KeyPrefix ::
      !(Maybe Text),
    _ssstSNSTopicARN ::
      !(Maybe Text),
    _ssstOutputFormat ::
      !OutputFormat,
    _ssstOutputS3BucketName ::
      !Text,
    _ssstText :: !Text,
    _ssstVoiceId ::
      !VoiceId
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'StartSpeechSynthesisTask' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssstLanguageCode' - Optional language code for the Speech Synthesis request. This is only necessary if using a bilingual voice, such as Aditi, which can be used for either Indian English (en-IN) or Hindi (hi-IN).  If a bilingual voice is used and no language code is specified, Amazon Polly will use the default language of the bilingual voice. The default language for any voice is the one returned by the <https://docs.aws.amazon.com/polly/latest/dg/API_DescribeVoices.html DescribeVoices> operation for the @LanguageCode@ parameter. For example, if no language code is specified, Aditi will use Indian English rather than Hindi.
--
-- * 'ssstSpeechMarkTypes' - The type of speech marks returned for the input text.
--
-- * 'ssstLexiconNames' - List of one or more pronunciation lexicon names you want the service to apply during synthesis. Lexicons are applied only if the language of the lexicon is the same as the language of the voice.
--
-- * 'ssstTextType' - Specifies whether the input text is plain text or SSML. The default value is plain text.
--
-- * 'ssstSampleRate' - The audio frequency specified in Hz. The valid values for mp3 and ogg_vorbis are "8000", "16000", "22050", and "24000". The default value for standard voices is "22050". The default value for neural voices is "24000". Valid values for pcm are "8000" and "16000" The default value is "16000".
--
-- * 'ssstEngine' - Specifies the engine (@standard@ or @neural@ ) for Amazon Polly to use when processing input text for speech synthesis. Using a voice that is not supported for the engine selected will result in an error.
--
-- * 'ssstOutputS3KeyPrefix' - The Amazon S3 key prefix for the output speech file.
--
-- * 'ssstSNSTopicARN' - ARN for the SNS topic optionally used for providing status notification for a speech synthesis task.
--
-- * 'ssstOutputFormat' - The format in which the returned output will be encoded. For audio stream, this will be mp3, ogg_vorbis, or pcm. For speech marks, this will be json.
--
-- * 'ssstOutputS3BucketName' - Amazon S3 bucket name to which the output file will be saved.
--
-- * 'ssstText' - The input text to synthesize. If you specify ssml as the TextType, follow the SSML format for the input text.
--
-- * 'ssstVoiceId' - Voice ID to use for the synthesis.
startSpeechSynthesisTask ::
  -- | 'ssstOutputFormat'
  OutputFormat ->
  -- | 'ssstOutputS3BucketName'
  Text ->
  -- | 'ssstText'
  Text ->
  -- | 'ssstVoiceId'
  VoiceId ->
  StartSpeechSynthesisTask
startSpeechSynthesisTask
  pOutputFormat_
  pOutputS3BucketName_
  pText_
  pVoiceId_ =
    StartSpeechSynthesisTask'
      { _ssstLanguageCode =
          Nothing,
        _ssstSpeechMarkTypes = Nothing,
        _ssstLexiconNames = Nothing,
        _ssstTextType = Nothing,
        _ssstSampleRate = Nothing,
        _ssstEngine = Nothing,
        _ssstOutputS3KeyPrefix = Nothing,
        _ssstSNSTopicARN = Nothing,
        _ssstOutputFormat = pOutputFormat_,
        _ssstOutputS3BucketName = pOutputS3BucketName_,
        _ssstText = pText_,
        _ssstVoiceId = pVoiceId_
      }

-- | Optional language code for the Speech Synthesis request. This is only necessary if using a bilingual voice, such as Aditi, which can be used for either Indian English (en-IN) or Hindi (hi-IN).  If a bilingual voice is used and no language code is specified, Amazon Polly will use the default language of the bilingual voice. The default language for any voice is the one returned by the <https://docs.aws.amazon.com/polly/latest/dg/API_DescribeVoices.html DescribeVoices> operation for the @LanguageCode@ parameter. For example, if no language code is specified, Aditi will use Indian English rather than Hindi.
ssstLanguageCode :: Lens' StartSpeechSynthesisTask (Maybe LanguageCode)
ssstLanguageCode = lens _ssstLanguageCode (\s a -> s {_ssstLanguageCode = a})

-- | The type of speech marks returned for the input text.
ssstSpeechMarkTypes :: Lens' StartSpeechSynthesisTask [SpeechMarkType]
ssstSpeechMarkTypes = lens _ssstSpeechMarkTypes (\s a -> s {_ssstSpeechMarkTypes = a}) . _Default . _Coerce

-- | List of one or more pronunciation lexicon names you want the service to apply during synthesis. Lexicons are applied only if the language of the lexicon is the same as the language of the voice.
ssstLexiconNames :: Lens' StartSpeechSynthesisTask [Text]
ssstLexiconNames = lens _ssstLexiconNames (\s a -> s {_ssstLexiconNames = a}) . _Default . _Coerce

-- | Specifies whether the input text is plain text or SSML. The default value is plain text.
ssstTextType :: Lens' StartSpeechSynthesisTask (Maybe TextType)
ssstTextType = lens _ssstTextType (\s a -> s {_ssstTextType = a})

-- | The audio frequency specified in Hz. The valid values for mp3 and ogg_vorbis are "8000", "16000", "22050", and "24000". The default value for standard voices is "22050". The default value for neural voices is "24000". Valid values for pcm are "8000" and "16000" The default value is "16000".
ssstSampleRate :: Lens' StartSpeechSynthesisTask (Maybe Text)
ssstSampleRate = lens _ssstSampleRate (\s a -> s {_ssstSampleRate = a})

-- | Specifies the engine (@standard@ or @neural@ ) for Amazon Polly to use when processing input text for speech synthesis. Using a voice that is not supported for the engine selected will result in an error.
ssstEngine :: Lens' StartSpeechSynthesisTask (Maybe Engine)
ssstEngine = lens _ssstEngine (\s a -> s {_ssstEngine = a})

-- | The Amazon S3 key prefix for the output speech file.
ssstOutputS3KeyPrefix :: Lens' StartSpeechSynthesisTask (Maybe Text)
ssstOutputS3KeyPrefix = lens _ssstOutputS3KeyPrefix (\s a -> s {_ssstOutputS3KeyPrefix = a})

-- | ARN for the SNS topic optionally used for providing status notification for a speech synthesis task.
ssstSNSTopicARN :: Lens' StartSpeechSynthesisTask (Maybe Text)
ssstSNSTopicARN = lens _ssstSNSTopicARN (\s a -> s {_ssstSNSTopicARN = a})

-- | The format in which the returned output will be encoded. For audio stream, this will be mp3, ogg_vorbis, or pcm. For speech marks, this will be json.
ssstOutputFormat :: Lens' StartSpeechSynthesisTask OutputFormat
ssstOutputFormat = lens _ssstOutputFormat (\s a -> s {_ssstOutputFormat = a})

-- | Amazon S3 bucket name to which the output file will be saved.
ssstOutputS3BucketName :: Lens' StartSpeechSynthesisTask Text
ssstOutputS3BucketName = lens _ssstOutputS3BucketName (\s a -> s {_ssstOutputS3BucketName = a})

-- | The input text to synthesize. If you specify ssml as the TextType, follow the SSML format for the input text.
ssstText :: Lens' StartSpeechSynthesisTask Text
ssstText = lens _ssstText (\s a -> s {_ssstText = a})

-- | Voice ID to use for the synthesis.
ssstVoiceId :: Lens' StartSpeechSynthesisTask VoiceId
ssstVoiceId = lens _ssstVoiceId (\s a -> s {_ssstVoiceId = a})

instance AWSRequest StartSpeechSynthesisTask where
  type
    Rs StartSpeechSynthesisTask =
      StartSpeechSynthesisTaskResponse
  request = postJSON polly
  response =
    receiveJSON
      ( \s h x ->
          StartSpeechSynthesisTaskResponse'
            <$> (x .?> "SynthesisTask") <*> (pure (fromEnum s))
      )

instance Hashable StartSpeechSynthesisTask

instance NFData StartSpeechSynthesisTask

instance ToHeaders StartSpeechSynthesisTask where
  toHeaders = const mempty

instance ToJSON StartSpeechSynthesisTask where
  toJSON StartSpeechSynthesisTask' {..} =
    object
      ( catMaybes
          [ ("LanguageCode" .=) <$> _ssstLanguageCode,
            ("SpeechMarkTypes" .=) <$> _ssstSpeechMarkTypes,
            ("LexiconNames" .=) <$> _ssstLexiconNames,
            ("TextType" .=) <$> _ssstTextType,
            ("SampleRate" .=) <$> _ssstSampleRate,
            ("Engine" .=) <$> _ssstEngine,
            ("OutputS3KeyPrefix" .=) <$> _ssstOutputS3KeyPrefix,
            ("SnsTopicArn" .=) <$> _ssstSNSTopicARN,
            Just ("OutputFormat" .= _ssstOutputFormat),
            Just
              ("OutputS3BucketName" .= _ssstOutputS3BucketName),
            Just ("Text" .= _ssstText),
            Just ("VoiceId" .= _ssstVoiceId)
          ]
      )

instance ToPath StartSpeechSynthesisTask where
  toPath = const "/v1/synthesisTasks"

instance ToQuery StartSpeechSynthesisTask where
  toQuery = const mempty

-- | /See:/ 'startSpeechSynthesisTaskResponse' smart constructor.
data StartSpeechSynthesisTaskResponse = StartSpeechSynthesisTaskResponse'
  { _ssstrrsSynthesisTask ::
      !( Maybe
           SynthesisTask
       ),
    _ssstrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'StartSpeechSynthesisTaskResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssstrrsSynthesisTask' - SynthesisTask object that provides information and attributes about a newly submitted speech synthesis task.
--
-- * 'ssstrrsResponseStatus' - -- | The response status code.
startSpeechSynthesisTaskResponse ::
  -- | 'ssstrrsResponseStatus'
  Int ->
  StartSpeechSynthesisTaskResponse
startSpeechSynthesisTaskResponse pResponseStatus_ =
  StartSpeechSynthesisTaskResponse'
    { _ssstrrsSynthesisTask =
        Nothing,
      _ssstrrsResponseStatus = pResponseStatus_
    }

-- | SynthesisTask object that provides information and attributes about a newly submitted speech synthesis task.
ssstrrsSynthesisTask :: Lens' StartSpeechSynthesisTaskResponse (Maybe SynthesisTask)
ssstrrsSynthesisTask = lens _ssstrrsSynthesisTask (\s a -> s {_ssstrrsSynthesisTask = a})

-- | -- | The response status code.
ssstrrsResponseStatus :: Lens' StartSpeechSynthesisTaskResponse Int
ssstrrsResponseStatus = lens _ssstrrsResponseStatus (\s a -> s {_ssstrrsResponseStatus = a})

instance NFData StartSpeechSynthesisTaskResponse
