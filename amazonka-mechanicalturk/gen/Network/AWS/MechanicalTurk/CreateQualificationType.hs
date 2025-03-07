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
-- Module      : Network.AWS.MechanicalTurk.CreateQualificationType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The @CreateQualificationType@ operation creates a new Qualification
-- type, which is represented by a @QualificationType@ data structure.
module Network.AWS.MechanicalTurk.CreateQualificationType
  ( -- * Creating a Request
    CreateQualificationType (..),
    newCreateQualificationType,

    -- * Request Lenses
    createQualificationType_retryDelayInSeconds,
    createQualificationType_autoGranted,
    createQualificationType_testDurationInSeconds,
    createQualificationType_test,
    createQualificationType_answerKey,
    createQualificationType_autoGrantedValue,
    createQualificationType_keywords,
    createQualificationType_name,
    createQualificationType_description,
    createQualificationType_qualificationTypeStatus,

    -- * Destructuring the Response
    CreateQualificationTypeResponse (..),
    newCreateQualificationTypeResponse,

    -- * Response Lenses
    createQualificationTypeResponse_qualificationType,
    createQualificationTypeResponse_httpStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import Network.AWS.MechanicalTurk.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCreateQualificationType' smart constructor.
data CreateQualificationType = CreateQualificationType'
  { -- | The number of seconds that a Worker must wait after requesting a
    -- Qualification of the Qualification type before the worker can retry the
    -- Qualification request.
    --
    -- Constraints: None. If not specified, retries are disabled and Workers
    -- can request a Qualification of this type only once, even if the Worker
    -- has not been granted the Qualification. It is not possible to disable
    -- retries for a Qualification type after it has been created with retries
    -- enabled. If you want to disable retries, you must delete existing
    -- retry-enabled Qualification type and then create a new Qualification
    -- type with retries disabled.
    retryDelayInSeconds :: Prelude.Maybe Prelude.Integer,
    -- | Specifies whether requests for the Qualification type are granted
    -- immediately, without prompting the Worker with a Qualification test.
    --
    -- Constraints: If the Test parameter is specified, this parameter cannot
    -- be true.
    autoGranted :: Prelude.Maybe Prelude.Bool,
    -- | The number of seconds the Worker has to complete the Qualification test,
    -- starting from the time the Worker requests the Qualification.
    testDurationInSeconds :: Prelude.Maybe Prelude.Integer,
    -- | The questions for the Qualification test a Worker must answer correctly
    -- to obtain a Qualification of this type. If this parameter is specified,
    -- @TestDurationInSeconds@ must also be specified.
    --
    -- Constraints: Must not be longer than 65535 bytes. Must be a QuestionForm
    -- data structure. This parameter cannot be specified if AutoGranted is
    -- true.
    --
    -- Constraints: None. If not specified, the Worker may request the
    -- Qualification without answering any questions.
    test :: Prelude.Maybe Prelude.Text,
    -- | The answers to the Qualification test specified in the Test parameter,
    -- in the form of an AnswerKey data structure.
    --
    -- Constraints: Must not be longer than 65535 bytes.
    --
    -- Constraints: None. If not specified, you must process Qualification
    -- requests manually.
    answerKey :: Prelude.Maybe Prelude.Text,
    -- | The Qualification value to use for automatically granted Qualifications.
    -- This parameter is used only if the AutoGranted parameter is true.
    autoGrantedValue :: Prelude.Maybe Prelude.Int,
    -- | One or more words or phrases that describe the Qualification type,
    -- separated by commas. The keywords of a type make the type easier to find
    -- during a search.
    keywords :: Prelude.Maybe Prelude.Text,
    -- | The name you give to the Qualification type. The type name is used to
    -- represent the Qualification to Workers, and to find the type using a
    -- Qualification type search. It must be unique across all of your
    -- Qualification types.
    name :: Prelude.Text,
    -- | A long description for the Qualification type. On the Amazon Mechanical
    -- Turk website, the long description is displayed when a Worker examines a
    -- Qualification type.
    description :: Prelude.Text,
    -- | The initial status of the Qualification type.
    --
    -- Constraints: Valid values are: Active | Inactive
    qualificationTypeStatus :: QualificationTypeStatus
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'CreateQualificationType' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'retryDelayInSeconds', 'createQualificationType_retryDelayInSeconds' - The number of seconds that a Worker must wait after requesting a
-- Qualification of the Qualification type before the worker can retry the
-- Qualification request.
--
-- Constraints: None. If not specified, retries are disabled and Workers
-- can request a Qualification of this type only once, even if the Worker
-- has not been granted the Qualification. It is not possible to disable
-- retries for a Qualification type after it has been created with retries
-- enabled. If you want to disable retries, you must delete existing
-- retry-enabled Qualification type and then create a new Qualification
-- type with retries disabled.
--
-- 'autoGranted', 'createQualificationType_autoGranted' - Specifies whether requests for the Qualification type are granted
-- immediately, without prompting the Worker with a Qualification test.
--
-- Constraints: If the Test parameter is specified, this parameter cannot
-- be true.
--
-- 'testDurationInSeconds', 'createQualificationType_testDurationInSeconds' - The number of seconds the Worker has to complete the Qualification test,
-- starting from the time the Worker requests the Qualification.
--
-- 'test', 'createQualificationType_test' - The questions for the Qualification test a Worker must answer correctly
-- to obtain a Qualification of this type. If this parameter is specified,
-- @TestDurationInSeconds@ must also be specified.
--
-- Constraints: Must not be longer than 65535 bytes. Must be a QuestionForm
-- data structure. This parameter cannot be specified if AutoGranted is
-- true.
--
-- Constraints: None. If not specified, the Worker may request the
-- Qualification without answering any questions.
--
-- 'answerKey', 'createQualificationType_answerKey' - The answers to the Qualification test specified in the Test parameter,
-- in the form of an AnswerKey data structure.
--
-- Constraints: Must not be longer than 65535 bytes.
--
-- Constraints: None. If not specified, you must process Qualification
-- requests manually.
--
-- 'autoGrantedValue', 'createQualificationType_autoGrantedValue' - The Qualification value to use for automatically granted Qualifications.
-- This parameter is used only if the AutoGranted parameter is true.
--
-- 'keywords', 'createQualificationType_keywords' - One or more words or phrases that describe the Qualification type,
-- separated by commas. The keywords of a type make the type easier to find
-- during a search.
--
-- 'name', 'createQualificationType_name' - The name you give to the Qualification type. The type name is used to
-- represent the Qualification to Workers, and to find the type using a
-- Qualification type search. It must be unique across all of your
-- Qualification types.
--
-- 'description', 'createQualificationType_description' - A long description for the Qualification type. On the Amazon Mechanical
-- Turk website, the long description is displayed when a Worker examines a
-- Qualification type.
--
-- 'qualificationTypeStatus', 'createQualificationType_qualificationTypeStatus' - The initial status of the Qualification type.
--
-- Constraints: Valid values are: Active | Inactive
newCreateQualificationType ::
  -- | 'name'
  Prelude.Text ->
  -- | 'description'
  Prelude.Text ->
  -- | 'qualificationTypeStatus'
  QualificationTypeStatus ->
  CreateQualificationType
newCreateQualificationType
  pName_
  pDescription_
  pQualificationTypeStatus_ =
    CreateQualificationType'
      { retryDelayInSeconds =
          Prelude.Nothing,
        autoGranted = Prelude.Nothing,
        testDurationInSeconds = Prelude.Nothing,
        test = Prelude.Nothing,
        answerKey = Prelude.Nothing,
        autoGrantedValue = Prelude.Nothing,
        keywords = Prelude.Nothing,
        name = pName_,
        description = pDescription_,
        qualificationTypeStatus =
          pQualificationTypeStatus_
      }

-- | The number of seconds that a Worker must wait after requesting a
-- Qualification of the Qualification type before the worker can retry the
-- Qualification request.
--
-- Constraints: None. If not specified, retries are disabled and Workers
-- can request a Qualification of this type only once, even if the Worker
-- has not been granted the Qualification. It is not possible to disable
-- retries for a Qualification type after it has been created with retries
-- enabled. If you want to disable retries, you must delete existing
-- retry-enabled Qualification type and then create a new Qualification
-- type with retries disabled.
createQualificationType_retryDelayInSeconds :: Lens.Lens' CreateQualificationType (Prelude.Maybe Prelude.Integer)
createQualificationType_retryDelayInSeconds = Lens.lens (\CreateQualificationType' {retryDelayInSeconds} -> retryDelayInSeconds) (\s@CreateQualificationType' {} a -> s {retryDelayInSeconds = a} :: CreateQualificationType)

-- | Specifies whether requests for the Qualification type are granted
-- immediately, without prompting the Worker with a Qualification test.
--
-- Constraints: If the Test parameter is specified, this parameter cannot
-- be true.
createQualificationType_autoGranted :: Lens.Lens' CreateQualificationType (Prelude.Maybe Prelude.Bool)
createQualificationType_autoGranted = Lens.lens (\CreateQualificationType' {autoGranted} -> autoGranted) (\s@CreateQualificationType' {} a -> s {autoGranted = a} :: CreateQualificationType)

-- | The number of seconds the Worker has to complete the Qualification test,
-- starting from the time the Worker requests the Qualification.
createQualificationType_testDurationInSeconds :: Lens.Lens' CreateQualificationType (Prelude.Maybe Prelude.Integer)
createQualificationType_testDurationInSeconds = Lens.lens (\CreateQualificationType' {testDurationInSeconds} -> testDurationInSeconds) (\s@CreateQualificationType' {} a -> s {testDurationInSeconds = a} :: CreateQualificationType)

-- | The questions for the Qualification test a Worker must answer correctly
-- to obtain a Qualification of this type. If this parameter is specified,
-- @TestDurationInSeconds@ must also be specified.
--
-- Constraints: Must not be longer than 65535 bytes. Must be a QuestionForm
-- data structure. This parameter cannot be specified if AutoGranted is
-- true.
--
-- Constraints: None. If not specified, the Worker may request the
-- Qualification without answering any questions.
createQualificationType_test :: Lens.Lens' CreateQualificationType (Prelude.Maybe Prelude.Text)
createQualificationType_test = Lens.lens (\CreateQualificationType' {test} -> test) (\s@CreateQualificationType' {} a -> s {test = a} :: CreateQualificationType)

-- | The answers to the Qualification test specified in the Test parameter,
-- in the form of an AnswerKey data structure.
--
-- Constraints: Must not be longer than 65535 bytes.
--
-- Constraints: None. If not specified, you must process Qualification
-- requests manually.
createQualificationType_answerKey :: Lens.Lens' CreateQualificationType (Prelude.Maybe Prelude.Text)
createQualificationType_answerKey = Lens.lens (\CreateQualificationType' {answerKey} -> answerKey) (\s@CreateQualificationType' {} a -> s {answerKey = a} :: CreateQualificationType)

-- | The Qualification value to use for automatically granted Qualifications.
-- This parameter is used only if the AutoGranted parameter is true.
createQualificationType_autoGrantedValue :: Lens.Lens' CreateQualificationType (Prelude.Maybe Prelude.Int)
createQualificationType_autoGrantedValue = Lens.lens (\CreateQualificationType' {autoGrantedValue} -> autoGrantedValue) (\s@CreateQualificationType' {} a -> s {autoGrantedValue = a} :: CreateQualificationType)

-- | One or more words or phrases that describe the Qualification type,
-- separated by commas. The keywords of a type make the type easier to find
-- during a search.
createQualificationType_keywords :: Lens.Lens' CreateQualificationType (Prelude.Maybe Prelude.Text)
createQualificationType_keywords = Lens.lens (\CreateQualificationType' {keywords} -> keywords) (\s@CreateQualificationType' {} a -> s {keywords = a} :: CreateQualificationType)

-- | The name you give to the Qualification type. The type name is used to
-- represent the Qualification to Workers, and to find the type using a
-- Qualification type search. It must be unique across all of your
-- Qualification types.
createQualificationType_name :: Lens.Lens' CreateQualificationType Prelude.Text
createQualificationType_name = Lens.lens (\CreateQualificationType' {name} -> name) (\s@CreateQualificationType' {} a -> s {name = a} :: CreateQualificationType)

-- | A long description for the Qualification type. On the Amazon Mechanical
-- Turk website, the long description is displayed when a Worker examines a
-- Qualification type.
createQualificationType_description :: Lens.Lens' CreateQualificationType Prelude.Text
createQualificationType_description = Lens.lens (\CreateQualificationType' {description} -> description) (\s@CreateQualificationType' {} a -> s {description = a} :: CreateQualificationType)

-- | The initial status of the Qualification type.
--
-- Constraints: Valid values are: Active | Inactive
createQualificationType_qualificationTypeStatus :: Lens.Lens' CreateQualificationType QualificationTypeStatus
createQualificationType_qualificationTypeStatus = Lens.lens (\CreateQualificationType' {qualificationTypeStatus} -> qualificationTypeStatus) (\s@CreateQualificationType' {} a -> s {qualificationTypeStatus = a} :: CreateQualificationType)

instance Prelude.AWSRequest CreateQualificationType where
  type
    Rs CreateQualificationType =
      CreateQualificationTypeResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateQualificationTypeResponse'
            Prelude.<$> (x Prelude..?> "QualificationType")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateQualificationType

instance Prelude.NFData CreateQualificationType

instance Prelude.ToHeaders CreateQualificationType where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "MTurkRequesterServiceV20170117.CreateQualificationType" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON CreateQualificationType where
  toJSON CreateQualificationType' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("RetryDelayInSeconds" Prelude..=)
              Prelude.<$> retryDelayInSeconds,
            ("AutoGranted" Prelude..=) Prelude.<$> autoGranted,
            ("TestDurationInSeconds" Prelude..=)
              Prelude.<$> testDurationInSeconds,
            ("Test" Prelude..=) Prelude.<$> test,
            ("AnswerKey" Prelude..=) Prelude.<$> answerKey,
            ("AutoGrantedValue" Prelude..=)
              Prelude.<$> autoGrantedValue,
            ("Keywords" Prelude..=) Prelude.<$> keywords,
            Prelude.Just ("Name" Prelude..= name),
            Prelude.Just ("Description" Prelude..= description),
            Prelude.Just
              ( "QualificationTypeStatus"
                  Prelude..= qualificationTypeStatus
              )
          ]
      )

instance Prelude.ToPath CreateQualificationType where
  toPath = Prelude.const "/"

instance Prelude.ToQuery CreateQualificationType where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateQualificationTypeResponse' smart constructor.
data CreateQualificationTypeResponse = CreateQualificationTypeResponse'
  { -- | The created Qualification type, returned as a QualificationType data
    -- structure.
    qualificationType :: Prelude.Maybe QualificationType,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'CreateQualificationTypeResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'qualificationType', 'createQualificationTypeResponse_qualificationType' - The created Qualification type, returned as a QualificationType data
-- structure.
--
-- 'httpStatus', 'createQualificationTypeResponse_httpStatus' - The response's http status code.
newCreateQualificationTypeResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateQualificationTypeResponse
newCreateQualificationTypeResponse pHttpStatus_ =
  CreateQualificationTypeResponse'
    { qualificationType =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The created Qualification type, returned as a QualificationType data
-- structure.
createQualificationTypeResponse_qualificationType :: Lens.Lens' CreateQualificationTypeResponse (Prelude.Maybe QualificationType)
createQualificationTypeResponse_qualificationType = Lens.lens (\CreateQualificationTypeResponse' {qualificationType} -> qualificationType) (\s@CreateQualificationTypeResponse' {} a -> s {qualificationType = a} :: CreateQualificationTypeResponse)

-- | The response's http status code.
createQualificationTypeResponse_httpStatus :: Lens.Lens' CreateQualificationTypeResponse Prelude.Int
createQualificationTypeResponse_httpStatus = Lens.lens (\CreateQualificationTypeResponse' {httpStatus} -> httpStatus) (\s@CreateQualificationTypeResponse' {} a -> s {httpStatus = a} :: CreateQualificationTypeResponse)

instance
  Prelude.NFData
    CreateQualificationTypeResponse
