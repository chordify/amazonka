{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodePipeline.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodePipeline.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _InvalidWebhookAuthenticationParametersException,
    _TooManyTagsException,
    _NotLatestPipelineExecutionException,
    _PipelineNameInUseException,
    _ApprovalAlreadyCompletedException,
    _OutputVariablesSizeExceededException,
    _InvalidArnException,
    _InvalidStructureException,
    _InvalidBlockerDeclarationException,
    _PipelineExecutionNotStoppableException,
    _InvalidActionDeclarationException,
    _InvalidWebhookFilterPatternException,
    _DuplicatedStopRequestException,
    _ConcurrentModificationException,
    _ActionTypeNotFoundException,
    _InvalidNextTokenException,
    _InvalidTagsException,
    _InvalidNonceException,
    _ActionTypeAlreadyExistsException,
    _WebhookNotFoundException,
    _PipelineVersionNotFoundException,
    _ValidationException,
    _StageNotRetryableException,
    _InvalidClientTokenException,
    _PipelineExecutionNotFoundException,
    _LimitExceededException,
    _ConflictException,
    _InvalidJobException,
    _InvalidJobStateException,
    _ResourceNotFoundException,
    _PipelineNotFoundException,
    _JobNotFoundException,
    _StageNotFoundException,
    _RequestFailedException,
    _ActionNotFoundException,
    _InvalidStageDeclarationException,
    _InvalidApprovalTokenException,

    -- * ActionCategory
    ActionCategory (..),

    -- * ActionConfigurationPropertyType
    ActionConfigurationPropertyType (..),

    -- * ActionExecutionStatus
    ActionExecutionStatus (..),

    -- * ActionOwner
    ActionOwner (..),

    -- * ApprovalStatus
    ApprovalStatus (..),

    -- * ArtifactLocationType
    ArtifactLocationType (..),

    -- * ArtifactStoreType
    ArtifactStoreType (..),

    -- * BlockerType
    BlockerType (..),

    -- * EncryptionKeyType
    EncryptionKeyType (..),

    -- * ExecutorType
    ExecutorType (..),

    -- * FailureType
    FailureType (..),

    -- * JobStatus
    JobStatus (..),

    -- * PipelineExecutionStatus
    PipelineExecutionStatus (..),

    -- * StageExecutionStatus
    StageExecutionStatus (..),

    -- * StageRetryMode
    StageRetryMode (..),

    -- * StageTransitionType
    StageTransitionType (..),

    -- * TriggerType
    TriggerType (..),

    -- * WebhookAuthenticationType
    WebhookAuthenticationType (..),

    -- * AWSSessionCredentials
    AWSSessionCredentials (..),
    newAWSSessionCredentials,
    aWSSessionCredentials_accessKeyId,
    aWSSessionCredentials_secretAccessKey,
    aWSSessionCredentials_sessionToken,

    -- * ActionConfiguration
    ActionConfiguration (..),
    newActionConfiguration,
    actionConfiguration_configuration,

    -- * ActionConfigurationProperty
    ActionConfigurationProperty (..),
    newActionConfigurationProperty,
    actionConfigurationProperty_description,
    actionConfigurationProperty_type,
    actionConfigurationProperty_queryable,
    actionConfigurationProperty_name,
    actionConfigurationProperty_required,
    actionConfigurationProperty_key,
    actionConfigurationProperty_secret,

    -- * ActionContext
    ActionContext (..),
    newActionContext,
    actionContext_actionExecutionId,
    actionContext_name,

    -- * ActionDeclaration
    ActionDeclaration (..),
    newActionDeclaration,
    actionDeclaration_roleArn,
    actionDeclaration_configuration,
    actionDeclaration_runOrder,
    actionDeclaration_namespace,
    actionDeclaration_inputArtifacts,
    actionDeclaration_region,
    actionDeclaration_outputArtifacts,
    actionDeclaration_name,
    actionDeclaration_actionTypeId,

    -- * ActionExecution
    ActionExecution (..),
    newActionExecution,
    actionExecution_status,
    actionExecution_actionExecutionId,
    actionExecution_lastStatusChange,
    actionExecution_percentComplete,
    actionExecution_externalExecutionId,
    actionExecution_externalExecutionUrl,
    actionExecution_lastUpdatedBy,
    actionExecution_summary,
    actionExecution_token,
    actionExecution_errorDetails,

    -- * ActionExecutionDetail
    ActionExecutionDetail (..),
    newActionExecutionDetail,
    actionExecutionDetail_status,
    actionExecutionDetail_actionName,
    actionExecutionDetail_actionExecutionId,
    actionExecutionDetail_input,
    actionExecutionDetail_lastUpdateTime,
    actionExecutionDetail_stageName,
    actionExecutionDetail_startTime,
    actionExecutionDetail_output,
    actionExecutionDetail_pipelineVersion,
    actionExecutionDetail_pipelineExecutionId,

    -- * ActionExecutionFilter
    ActionExecutionFilter (..),
    newActionExecutionFilter,
    actionExecutionFilter_pipelineExecutionId,

    -- * ActionExecutionInput
    ActionExecutionInput (..),
    newActionExecutionInput,
    actionExecutionInput_roleArn,
    actionExecutionInput_configuration,
    actionExecutionInput_resolvedConfiguration,
    actionExecutionInput_namespace,
    actionExecutionInput_actionTypeId,
    actionExecutionInput_inputArtifacts,
    actionExecutionInput_region,

    -- * ActionExecutionOutput
    ActionExecutionOutput (..),
    newActionExecutionOutput,
    actionExecutionOutput_executionResult,
    actionExecutionOutput_outputVariables,
    actionExecutionOutput_outputArtifacts,

    -- * ActionExecutionResult
    ActionExecutionResult (..),
    newActionExecutionResult,
    actionExecutionResult_externalExecutionId,
    actionExecutionResult_externalExecutionUrl,
    actionExecutionResult_externalExecutionSummary,

    -- * ActionRevision
    ActionRevision (..),
    newActionRevision,
    actionRevision_revisionId,
    actionRevision_revisionChangeId,
    actionRevision_created,

    -- * ActionState
    ActionState (..),
    newActionState,
    actionState_actionName,
    actionState_latestExecution,
    actionState_currentRevision,
    actionState_entityUrl,
    actionState_revisionUrl,

    -- * ActionType
    ActionType (..),
    newActionType,
    actionType_actionConfigurationProperties,
    actionType_settings,
    actionType_id,
    actionType_inputArtifactDetails,
    actionType_outputArtifactDetails,

    -- * ActionTypeArtifactDetails
    ActionTypeArtifactDetails (..),
    newActionTypeArtifactDetails,
    actionTypeArtifactDetails_minimumCount,
    actionTypeArtifactDetails_maximumCount,

    -- * ActionTypeDeclaration
    ActionTypeDeclaration (..),
    newActionTypeDeclaration,
    actionTypeDeclaration_permissions,
    actionTypeDeclaration_urls,
    actionTypeDeclaration_properties,
    actionTypeDeclaration_description,
    actionTypeDeclaration_executor,
    actionTypeDeclaration_id,
    actionTypeDeclaration_inputArtifactDetails,
    actionTypeDeclaration_outputArtifactDetails,

    -- * ActionTypeExecutor
    ActionTypeExecutor (..),
    newActionTypeExecutor,
    actionTypeExecutor_policyStatementsTemplate,
    actionTypeExecutor_jobTimeout,
    actionTypeExecutor_configuration,
    actionTypeExecutor_type,

    -- * ActionTypeId
    ActionTypeId (..),
    newActionTypeId,
    actionTypeId_category,
    actionTypeId_owner,
    actionTypeId_provider,
    actionTypeId_version,

    -- * ActionTypeIdentifier
    ActionTypeIdentifier (..),
    newActionTypeIdentifier,
    actionTypeIdentifier_category,
    actionTypeIdentifier_owner,
    actionTypeIdentifier_provider,
    actionTypeIdentifier_version,

    -- * ActionTypePermissions
    ActionTypePermissions (..),
    newActionTypePermissions,
    actionTypePermissions_allowedAccounts,

    -- * ActionTypeProperty
    ActionTypeProperty (..),
    newActionTypeProperty,
    actionTypeProperty_description,
    actionTypeProperty_queryable,
    actionTypeProperty_name,
    actionTypeProperty_optional,
    actionTypeProperty_key,
    actionTypeProperty_noEcho,

    -- * ActionTypeSettings
    ActionTypeSettings (..),
    newActionTypeSettings,
    actionTypeSettings_executionUrlTemplate,
    actionTypeSettings_entityUrlTemplate,
    actionTypeSettings_revisionUrlTemplate,
    actionTypeSettings_thirdPartyConfigurationUrl,

    -- * ActionTypeUrls
    ActionTypeUrls (..),
    newActionTypeUrls,
    actionTypeUrls_executionUrlTemplate,
    actionTypeUrls_entityUrlTemplate,
    actionTypeUrls_revisionUrlTemplate,
    actionTypeUrls_configurationUrl,

    -- * ApprovalResult
    ApprovalResult (..),
    newApprovalResult,
    approvalResult_summary,
    approvalResult_status,

    -- * Artifact
    Artifact (..),
    newArtifact,
    artifact_name,
    artifact_revision,
    artifact_location,

    -- * ArtifactDetail
    ArtifactDetail (..),
    newArtifactDetail,
    artifactDetail_s3location,
    artifactDetail_name,

    -- * ArtifactDetails
    ArtifactDetails (..),
    newArtifactDetails,
    artifactDetails_minimumCount,
    artifactDetails_maximumCount,

    -- * ArtifactLocation
    ArtifactLocation (..),
    newArtifactLocation,
    artifactLocation_s3Location,
    artifactLocation_type,

    -- * ArtifactRevision
    ArtifactRevision (..),
    newArtifactRevision,
    artifactRevision_revisionId,
    artifactRevision_revisionChangeIdentifier,
    artifactRevision_name,
    artifactRevision_revisionSummary,
    artifactRevision_created,
    artifactRevision_revisionUrl,

    -- * ArtifactStore
    ArtifactStore (..),
    newArtifactStore,
    artifactStore_encryptionKey,
    artifactStore_type,
    artifactStore_location,

    -- * BlockerDeclaration
    BlockerDeclaration (..),
    newBlockerDeclaration,
    blockerDeclaration_name,
    blockerDeclaration_type,

    -- * CurrentRevision
    CurrentRevision (..),
    newCurrentRevision,
    currentRevision_revisionSummary,
    currentRevision_created,
    currentRevision_revision,
    currentRevision_changeIdentifier,

    -- * EncryptionKey
    EncryptionKey (..),
    newEncryptionKey,
    encryptionKey_id,
    encryptionKey_type,

    -- * ErrorDetails
    ErrorDetails (..),
    newErrorDetails,
    errorDetails_message,
    errorDetails_code,

    -- * ExecutionDetails
    ExecutionDetails (..),
    newExecutionDetails,
    executionDetails_percentComplete,
    executionDetails_externalExecutionId,
    executionDetails_summary,

    -- * ExecutionTrigger
    ExecutionTrigger (..),
    newExecutionTrigger,
    executionTrigger_triggerDetail,
    executionTrigger_triggerType,

    -- * ExecutorConfiguration
    ExecutorConfiguration (..),
    newExecutorConfiguration,
    executorConfiguration_jobWorkerExecutorConfiguration,
    executorConfiguration_lambdaExecutorConfiguration,

    -- * FailureDetails
    FailureDetails (..),
    newFailureDetails,
    failureDetails_externalExecutionId,
    failureDetails_type,
    failureDetails_message,

    -- * InputArtifact
    InputArtifact (..),
    newInputArtifact,
    inputArtifact_name,

    -- * Job
    Job (..),
    newJob,
    job_accountId,
    job_nonce,
    job_data,
    job_id,

    -- * JobData
    JobData (..),
    newJobData,
    jobData_artifactCredentials,
    jobData_encryptionKey,
    jobData_actionConfiguration,
    jobData_actionTypeId,
    jobData_inputArtifacts,
    jobData_pipelineContext,
    jobData_continuationToken,
    jobData_outputArtifacts,

    -- * JobDetails
    JobDetails (..),
    newJobDetails,
    jobDetails_accountId,
    jobDetails_data,
    jobDetails_id,

    -- * JobWorkerExecutorConfiguration
    JobWorkerExecutorConfiguration (..),
    newJobWorkerExecutorConfiguration,
    jobWorkerExecutorConfiguration_pollingAccounts,
    jobWorkerExecutorConfiguration_pollingServicePrincipals,

    -- * LambdaExecutorConfiguration
    LambdaExecutorConfiguration (..),
    newLambdaExecutorConfiguration,
    lambdaExecutorConfiguration_lambdaFunctionArn,

    -- * ListWebhookItem
    ListWebhookItem (..),
    newListWebhookItem,
    listWebhookItem_lastTriggered,
    listWebhookItem_arn,
    listWebhookItem_tags,
    listWebhookItem_errorMessage,
    listWebhookItem_errorCode,
    listWebhookItem_definition,
    listWebhookItem_url,

    -- * OutputArtifact
    OutputArtifact (..),
    newOutputArtifact,
    outputArtifact_name,

    -- * PipelineContext
    PipelineContext (..),
    newPipelineContext,
    pipelineContext_pipelineArn,
    pipelineContext_stage,
    pipelineContext_action,
    pipelineContext_pipelineName,
    pipelineContext_pipelineExecutionId,

    -- * PipelineDeclaration
    PipelineDeclaration (..),
    newPipelineDeclaration,
    pipelineDeclaration_version,
    pipelineDeclaration_artifactStores,
    pipelineDeclaration_artifactStore,
    pipelineDeclaration_name,
    pipelineDeclaration_roleArn,
    pipelineDeclaration_stages,

    -- * PipelineExecution
    PipelineExecution (..),
    newPipelineExecution,
    pipelineExecution_status,
    pipelineExecution_artifactRevisions,
    pipelineExecution_pipelineVersion,
    pipelineExecution_statusSummary,
    pipelineExecution_pipelineName,
    pipelineExecution_pipelineExecutionId,

    -- * PipelineExecutionSummary
    PipelineExecutionSummary (..),
    newPipelineExecutionSummary,
    pipelineExecutionSummary_status,
    pipelineExecutionSummary_lastUpdateTime,
    pipelineExecutionSummary_trigger,
    pipelineExecutionSummary_startTime,
    pipelineExecutionSummary_stopTrigger,
    pipelineExecutionSummary_sourceRevisions,
    pipelineExecutionSummary_pipelineExecutionId,

    -- * PipelineMetadata
    PipelineMetadata (..),
    newPipelineMetadata,
    pipelineMetadata_pipelineArn,
    pipelineMetadata_created,
    pipelineMetadata_updated,

    -- * PipelineSummary
    PipelineSummary (..),
    newPipelineSummary,
    pipelineSummary_version,
    pipelineSummary_name,
    pipelineSummary_created,
    pipelineSummary_updated,

    -- * S3ArtifactLocation
    S3ArtifactLocation (..),
    newS3ArtifactLocation,
    s3ArtifactLocation_bucketName,
    s3ArtifactLocation_objectKey,

    -- * S3Location
    S3Location (..),
    newS3Location,
    s3Location_key,
    s3Location_bucket,

    -- * SourceRevision
    SourceRevision (..),
    newSourceRevision,
    sourceRevision_revisionId,
    sourceRevision_revisionSummary,
    sourceRevision_revisionUrl,
    sourceRevision_actionName,

    -- * StageContext
    StageContext (..),
    newStageContext,
    stageContext_name,

    -- * StageDeclaration
    StageDeclaration (..),
    newStageDeclaration,
    stageDeclaration_blockers,
    stageDeclaration_name,
    stageDeclaration_actions,

    -- * StageExecution
    StageExecution (..),
    newStageExecution,
    stageExecution_pipelineExecutionId,
    stageExecution_status,

    -- * StageState
    StageState (..),
    newStageState,
    stageState_inboundExecution,
    stageState_latestExecution,
    stageState_stageName,
    stageState_inboundTransitionState,
    stageState_actionStates,

    -- * StopExecutionTrigger
    StopExecutionTrigger (..),
    newStopExecutionTrigger,
    stopExecutionTrigger_reason,

    -- * Tag
    Tag (..),
    newTag,
    tag_key,
    tag_value,

    -- * ThirdPartyJob
    ThirdPartyJob (..),
    newThirdPartyJob,
    thirdPartyJob_clientId,
    thirdPartyJob_jobId,

    -- * ThirdPartyJobData
    ThirdPartyJobData (..),
    newThirdPartyJobData,
    thirdPartyJobData_artifactCredentials,
    thirdPartyJobData_encryptionKey,
    thirdPartyJobData_actionConfiguration,
    thirdPartyJobData_actionTypeId,
    thirdPartyJobData_inputArtifacts,
    thirdPartyJobData_pipelineContext,
    thirdPartyJobData_continuationToken,
    thirdPartyJobData_outputArtifacts,

    -- * ThirdPartyJobDetails
    ThirdPartyJobDetails (..),
    newThirdPartyJobDetails,
    thirdPartyJobDetails_nonce,
    thirdPartyJobDetails_data,
    thirdPartyJobDetails_id,

    -- * TransitionState
    TransitionState (..),
    newTransitionState,
    transitionState_lastChangedBy,
    transitionState_enabled,
    transitionState_disabledReason,
    transitionState_lastChangedAt,

    -- * WebhookAuthConfiguration
    WebhookAuthConfiguration (..),
    newWebhookAuthConfiguration,
    webhookAuthConfiguration_allowedIPRange,
    webhookAuthConfiguration_secretToken,

    -- * WebhookDefinition
    WebhookDefinition (..),
    newWebhookDefinition,
    webhookDefinition_name,
    webhookDefinition_targetPipeline,
    webhookDefinition_targetAction,
    webhookDefinition_filters,
    webhookDefinition_authentication,
    webhookDefinition_authenticationConfiguration,

    -- * WebhookFilterRule
    WebhookFilterRule (..),
    newWebhookFilterRule,
    webhookFilterRule_matchEquals,
    webhookFilterRule_jsonPath,
  )
where

import Network.AWS.CodePipeline.Types.AWSSessionCredentials
import Network.AWS.CodePipeline.Types.ActionCategory
import Network.AWS.CodePipeline.Types.ActionConfiguration
import Network.AWS.CodePipeline.Types.ActionConfigurationProperty
import Network.AWS.CodePipeline.Types.ActionConfigurationPropertyType
import Network.AWS.CodePipeline.Types.ActionContext
import Network.AWS.CodePipeline.Types.ActionDeclaration
import Network.AWS.CodePipeline.Types.ActionExecution
import Network.AWS.CodePipeline.Types.ActionExecutionDetail
import Network.AWS.CodePipeline.Types.ActionExecutionFilter
import Network.AWS.CodePipeline.Types.ActionExecutionInput
import Network.AWS.CodePipeline.Types.ActionExecutionOutput
import Network.AWS.CodePipeline.Types.ActionExecutionResult
import Network.AWS.CodePipeline.Types.ActionExecutionStatus
import Network.AWS.CodePipeline.Types.ActionOwner
import Network.AWS.CodePipeline.Types.ActionRevision
import Network.AWS.CodePipeline.Types.ActionState
import Network.AWS.CodePipeline.Types.ActionType
import Network.AWS.CodePipeline.Types.ActionTypeArtifactDetails
import Network.AWS.CodePipeline.Types.ActionTypeDeclaration
import Network.AWS.CodePipeline.Types.ActionTypeExecutor
import Network.AWS.CodePipeline.Types.ActionTypeId
import Network.AWS.CodePipeline.Types.ActionTypeIdentifier
import Network.AWS.CodePipeline.Types.ActionTypePermissions
import Network.AWS.CodePipeline.Types.ActionTypeProperty
import Network.AWS.CodePipeline.Types.ActionTypeSettings
import Network.AWS.CodePipeline.Types.ActionTypeUrls
import Network.AWS.CodePipeline.Types.ApprovalResult
import Network.AWS.CodePipeline.Types.ApprovalStatus
import Network.AWS.CodePipeline.Types.Artifact
import Network.AWS.CodePipeline.Types.ArtifactDetail
import Network.AWS.CodePipeline.Types.ArtifactDetails
import Network.AWS.CodePipeline.Types.ArtifactLocation
import Network.AWS.CodePipeline.Types.ArtifactLocationType
import Network.AWS.CodePipeline.Types.ArtifactRevision
import Network.AWS.CodePipeline.Types.ArtifactStore
import Network.AWS.CodePipeline.Types.ArtifactStoreType
import Network.AWS.CodePipeline.Types.BlockerDeclaration
import Network.AWS.CodePipeline.Types.BlockerType
import Network.AWS.CodePipeline.Types.CurrentRevision
import Network.AWS.CodePipeline.Types.EncryptionKey
import Network.AWS.CodePipeline.Types.EncryptionKeyType
import Network.AWS.CodePipeline.Types.ErrorDetails
import Network.AWS.CodePipeline.Types.ExecutionDetails
import Network.AWS.CodePipeline.Types.ExecutionTrigger
import Network.AWS.CodePipeline.Types.ExecutorConfiguration
import Network.AWS.CodePipeline.Types.ExecutorType
import Network.AWS.CodePipeline.Types.FailureDetails
import Network.AWS.CodePipeline.Types.FailureType
import Network.AWS.CodePipeline.Types.InputArtifact
import Network.AWS.CodePipeline.Types.Job
import Network.AWS.CodePipeline.Types.JobData
import Network.AWS.CodePipeline.Types.JobDetails
import Network.AWS.CodePipeline.Types.JobStatus
import Network.AWS.CodePipeline.Types.JobWorkerExecutorConfiguration
import Network.AWS.CodePipeline.Types.LambdaExecutorConfiguration
import Network.AWS.CodePipeline.Types.ListWebhookItem
import Network.AWS.CodePipeline.Types.OutputArtifact
import Network.AWS.CodePipeline.Types.PipelineContext
import Network.AWS.CodePipeline.Types.PipelineDeclaration
import Network.AWS.CodePipeline.Types.PipelineExecution
import Network.AWS.CodePipeline.Types.PipelineExecutionStatus
import Network.AWS.CodePipeline.Types.PipelineExecutionSummary
import Network.AWS.CodePipeline.Types.PipelineMetadata
import Network.AWS.CodePipeline.Types.PipelineSummary
import Network.AWS.CodePipeline.Types.S3ArtifactLocation
import Network.AWS.CodePipeline.Types.S3Location
import Network.AWS.CodePipeline.Types.SourceRevision
import Network.AWS.CodePipeline.Types.StageContext
import Network.AWS.CodePipeline.Types.StageDeclaration
import Network.AWS.CodePipeline.Types.StageExecution
import Network.AWS.CodePipeline.Types.StageExecutionStatus
import Network.AWS.CodePipeline.Types.StageRetryMode
import Network.AWS.CodePipeline.Types.StageState
import Network.AWS.CodePipeline.Types.StageTransitionType
import Network.AWS.CodePipeline.Types.StopExecutionTrigger
import Network.AWS.CodePipeline.Types.Tag
import Network.AWS.CodePipeline.Types.ThirdPartyJob
import Network.AWS.CodePipeline.Types.ThirdPartyJobData
import Network.AWS.CodePipeline.Types.ThirdPartyJobDetails
import Network.AWS.CodePipeline.Types.TransitionState
import Network.AWS.CodePipeline.Types.TriggerType
import Network.AWS.CodePipeline.Types.WebhookAuthConfiguration
import Network.AWS.CodePipeline.Types.WebhookAuthenticationType
import Network.AWS.CodePipeline.Types.WebhookDefinition
import Network.AWS.CodePipeline.Types.WebhookFilterRule
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Sign.V4 as Sign

-- | API version @2015-07-09@ of the Amazon CodePipeline SDK configuration.
defaultService :: Prelude.Service
defaultService =
  Prelude.Service
    { Prelude._svcAbbrev =
        "CodePipeline",
      Prelude._svcSigner = Sign.v4,
      Prelude._svcEndpointPrefix = "codepipeline",
      Prelude._svcSigningName = "codepipeline",
      Prelude._svcVersion = "2015-07-09",
      Prelude._svcEndpoint =
        Prelude.defaultEndpoint defaultService,
      Prelude._svcTimeout = Prelude.Just 70,
      Prelude._svcCheck = Prelude.statusSuccess,
      Prelude._svcError =
        Prelude.parseJSONError "CodePipeline",
      Prelude._svcRetry = retry
    }
  where
    retry =
      Prelude.Exponential
        { Prelude._retryBase = 5.0e-2,
          Prelude._retryGrowth = 2,
          Prelude._retryAttempts = 5,
          Prelude._retryCheck = check
        }
    check e
      | Lens.has (Prelude.hasStatus 504) e =
        Prelude.Just "gateway_timeout"
      | Lens.has
          ( Prelude.hasCode
              "ProvisionedThroughputExceededException"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "throughput_exceeded"
      | Lens.has (Prelude.hasStatus 503) e =
        Prelude.Just "service_unavailable"
      | Lens.has (Prelude.hasStatus 502) e =
        Prelude.Just "bad_gateway"
      | Lens.has (Prelude.hasStatus 429) e =
        Prelude.Just "too_many_requests"
      | Lens.has
          ( Prelude.hasCode "RequestThrottledException"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "request_throttled_exception"
      | Lens.has
          ( Prelude.hasCode "ThrottledException"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "throttled_exception"
      | Lens.has (Prelude.hasStatus 509) e =
        Prelude.Just "limit_exceeded"
      | Lens.has (Prelude.hasStatus 500) e =
        Prelude.Just "general_server_error"
      | Lens.has
          ( Prelude.hasCode "ThrottlingException"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "throttling_exception"
      | Lens.has
          ( Prelude.hasCode "Throttling"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "throttling"
      | Prelude.otherwise = Prelude.Nothing

-- | The specified authentication type is in an invalid format.
_InvalidWebhookAuthenticationParametersException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidWebhookAuthenticationParametersException =
  Prelude._MatchServiceError
    defaultService
    "InvalidWebhookAuthenticationParametersException"

-- | The tags limit for a resource has been exceeded.
_TooManyTagsException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_TooManyTagsException =
  Prelude._MatchServiceError
    defaultService
    "TooManyTagsException"

-- | The stage has failed in a later run of the pipeline and the
-- pipelineExecutionId associated with the request is out of date.
_NotLatestPipelineExecutionException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_NotLatestPipelineExecutionException =
  Prelude._MatchServiceError
    defaultService
    "NotLatestPipelineExecutionException"

-- | The specified pipeline name is already in use.
_PipelineNameInUseException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_PipelineNameInUseException =
  Prelude._MatchServiceError
    defaultService
    "PipelineNameInUseException"

-- | The approval action has already been approved or rejected.
_ApprovalAlreadyCompletedException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ApprovalAlreadyCompletedException =
  Prelude._MatchServiceError
    defaultService
    "ApprovalAlreadyCompletedException"

-- | Exceeded the total size limit for all variables in the pipeline.
_OutputVariablesSizeExceededException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_OutputVariablesSizeExceededException =
  Prelude._MatchServiceError
    defaultService
    "OutputVariablesSizeExceededException"

-- | The specified resource ARN is invalid.
_InvalidArnException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidArnException =
  Prelude._MatchServiceError
    defaultService
    "InvalidArnException"

-- | The structure was specified in an invalid format.
_InvalidStructureException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidStructureException =
  Prelude._MatchServiceError
    defaultService
    "InvalidStructureException"

-- | Reserved for future use.
_InvalidBlockerDeclarationException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidBlockerDeclarationException =
  Prelude._MatchServiceError
    defaultService
    "InvalidBlockerDeclarationException"

-- | Unable to stop the pipeline execution. The execution might already be in
-- a @Stopped@ state, or it might no longer be in progress.
_PipelineExecutionNotStoppableException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_PipelineExecutionNotStoppableException =
  Prelude._MatchServiceError
    defaultService
    "PipelineExecutionNotStoppableException"

-- | The action declaration was specified in an invalid format.
_InvalidActionDeclarationException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidActionDeclarationException =
  Prelude._MatchServiceError
    defaultService
    "InvalidActionDeclarationException"

-- | The specified event filter rule is in an invalid format.
_InvalidWebhookFilterPatternException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidWebhookFilterPatternException =
  Prelude._MatchServiceError
    defaultService
    "InvalidWebhookFilterPatternException"

-- | The pipeline execution is already in a @Stopping@ state. If you already
-- chose to stop and wait, you cannot make that request again. You can
-- choose to stop and abandon now, but be aware that this option can lead
-- to failed tasks or out of sequence tasks. If you already chose to stop
-- and abandon, you cannot make that request again.
_DuplicatedStopRequestException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DuplicatedStopRequestException =
  Prelude._MatchServiceError
    defaultService
    "DuplicatedStopRequestException"

-- | Unable to modify the tag due to a simultaneous update request.
_ConcurrentModificationException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ConcurrentModificationException =
  Prelude._MatchServiceError
    defaultService
    "ConcurrentModificationException"

-- | The specified action type cannot be found.
_ActionTypeNotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ActionTypeNotFoundException =
  Prelude._MatchServiceError
    defaultService
    "ActionTypeNotFoundException"

-- | The next token was specified in an invalid format. Make sure that the
-- next token you provide is the token returned by a previous call.
_InvalidNextTokenException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidNextTokenException =
  Prelude._MatchServiceError
    defaultService
    "InvalidNextTokenException"

-- | The specified resource tags are invalid.
_InvalidTagsException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidTagsException =
  Prelude._MatchServiceError
    defaultService
    "InvalidTagsException"

-- | The nonce was specified in an invalid format.
_InvalidNonceException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidNonceException =
  Prelude._MatchServiceError
    defaultService
    "InvalidNonceException"

-- | The specified action type already exists with a different definition.
_ActionTypeAlreadyExistsException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ActionTypeAlreadyExistsException =
  Prelude._MatchServiceError
    defaultService
    "ActionTypeAlreadyExistsException"

-- | The specified webhook was entered in an invalid format or cannot be
-- found.
_WebhookNotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_WebhookNotFoundException =
  Prelude._MatchServiceError
    defaultService
    "WebhookNotFoundException"

-- | The pipeline version was specified in an invalid format or cannot be
-- found.
_PipelineVersionNotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_PipelineVersionNotFoundException =
  Prelude._MatchServiceError
    defaultService
    "PipelineVersionNotFoundException"

-- | The validation was specified in an invalid format.
_ValidationException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ValidationException =
  Prelude._MatchServiceError
    defaultService
    "ValidationException"

-- | Unable to retry. The pipeline structure or stage state might have
-- changed while actions awaited retry, or the stage contains no failed
-- actions.
_StageNotRetryableException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_StageNotRetryableException =
  Prelude._MatchServiceError
    defaultService
    "StageNotRetryableException"

-- | The client token was specified in an invalid format
_InvalidClientTokenException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidClientTokenException =
  Prelude._MatchServiceError
    defaultService
    "InvalidClientTokenException"

-- | The pipeline execution was specified in an invalid format or cannot be
-- found, or an execution ID does not belong to the specified pipeline.
_PipelineExecutionNotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_PipelineExecutionNotFoundException =
  Prelude._MatchServiceError
    defaultService
    "PipelineExecutionNotFoundException"

-- | The number of pipelines associated with the AWS account has exceeded the
-- limit allowed for the account.
_LimitExceededException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_LimitExceededException =
  Prelude._MatchServiceError
    defaultService
    "LimitExceededException"

-- | Your request cannot be handled because the pipeline is busy handling
-- ongoing activities. Try again later.
_ConflictException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ConflictException =
  Prelude._MatchServiceError
    defaultService
    "ConflictException"

-- | The job was specified in an invalid format or cannot be found.
_InvalidJobException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidJobException =
  Prelude._MatchServiceError
    defaultService
    "InvalidJobException"

-- | The job state was specified in an invalid format.
_InvalidJobStateException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidJobStateException =
  Prelude._MatchServiceError
    defaultService
    "InvalidJobStateException"

-- | The resource was specified in an invalid format.
_ResourceNotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ResourceNotFoundException =
  Prelude._MatchServiceError
    defaultService
    "ResourceNotFoundException"

-- | The pipeline was specified in an invalid format or cannot be found.
_PipelineNotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_PipelineNotFoundException =
  Prelude._MatchServiceError
    defaultService
    "PipelineNotFoundException"

-- | The job was specified in an invalid format or cannot be found.
_JobNotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_JobNotFoundException =
  Prelude._MatchServiceError
    defaultService
    "JobNotFoundException"

-- | The stage was specified in an invalid format or cannot be found.
_StageNotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_StageNotFoundException =
  Prelude._MatchServiceError
    defaultService
    "StageNotFoundException"

-- | The request failed because of an unknown error, exception, or failure.
_RequestFailedException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_RequestFailedException =
  Prelude._MatchServiceError
    defaultService
    "RequestFailedException"

-- | The specified action cannot be found.
_ActionNotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ActionNotFoundException =
  Prelude._MatchServiceError
    defaultService
    "ActionNotFoundException"

-- | The stage declaration was specified in an invalid format.
_InvalidStageDeclarationException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidStageDeclarationException =
  Prelude._MatchServiceError
    defaultService
    "InvalidStageDeclarationException"

-- | The approval request already received a response or has expired.
_InvalidApprovalTokenException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidApprovalTokenException =
  Prelude._MatchServiceError
    defaultService
    "InvalidApprovalTokenException"
