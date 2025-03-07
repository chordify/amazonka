{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MechanicalTurk.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MechanicalTurk.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _ServiceFault,
    _RequestError,

    -- * AssignmentStatus
    AssignmentStatus (..),

    -- * Comparator
    Comparator (..),

    -- * EventType
    EventType (..),

    -- * HITAccessActions
    HITAccessActions (..),

    -- * HITReviewStatus
    HITReviewStatus (..),

    -- * HITStatus
    HITStatus (..),

    -- * NotificationTransport
    NotificationTransport (..),

    -- * NotifyWorkersFailureCode
    NotifyWorkersFailureCode (..),

    -- * QualificationStatus
    QualificationStatus (..),

    -- * QualificationTypeStatus
    QualificationTypeStatus (..),

    -- * ReviewActionStatus
    ReviewActionStatus (..),

    -- * ReviewPolicyLevel
    ReviewPolicyLevel (..),

    -- * ReviewableHITStatus
    ReviewableHITStatus (..),

    -- * Assignment
    Assignment (..),
    newAssignment,
    assignment_requesterFeedback,
    assignment_assignmentId,
    assignment_hITId,
    assignment_autoApprovalTime,
    assignment_rejectionTime,
    assignment_assignmentStatus,
    assignment_answer,
    assignment_submitTime,
    assignment_workerId,
    assignment_acceptTime,
    assignment_approvalTime,
    assignment_deadline,

    -- * BonusPayment
    BonusPayment (..),
    newBonusPayment,
    bonusPayment_bonusAmount,
    bonusPayment_assignmentId,
    bonusPayment_grantTime,
    bonusPayment_reason,
    bonusPayment_workerId,

    -- * HIT
    HIT (..),
    newHIT,
    hit_hITGroupId,
    hit_creationTime,
    hit_assignmentDurationInSeconds,
    hit_autoApprovalDelayInSeconds,
    hit_question,
    hit_expiration,
    hit_hITReviewStatus,
    hit_title,
    hit_hITId,
    hit_hITLayoutId,
    hit_numberOfAssignmentsCompleted,
    hit_reward,
    hit_maxAssignments,
    hit_hITStatus,
    hit_requesterAnnotation,
    hit_description,
    hit_numberOfAssignmentsAvailable,
    hit_hITTypeId,
    hit_qualificationRequirements,
    hit_numberOfAssignmentsPending,
    hit_keywords,

    -- * HITLayoutParameter
    HITLayoutParameter (..),
    newHITLayoutParameter,
    hITLayoutParameter_name,
    hITLayoutParameter_value,

    -- * Locale
    Locale (..),
    newLocale,
    locale_subdivision,
    locale_country,

    -- * NotificationSpecification
    NotificationSpecification (..),
    newNotificationSpecification,
    notificationSpecification_destination,
    notificationSpecification_transport,
    notificationSpecification_version,
    notificationSpecification_eventTypes,

    -- * NotifyWorkersFailureStatus
    NotifyWorkersFailureStatus (..),
    newNotifyWorkersFailureStatus,
    notifyWorkersFailureStatus_workerId,
    notifyWorkersFailureStatus_notifyWorkersFailureCode,
    notifyWorkersFailureStatus_notifyWorkersFailureMessage,

    -- * ParameterMapEntry
    ParameterMapEntry (..),
    newParameterMapEntry,
    parameterMapEntry_key,
    parameterMapEntry_values,

    -- * PolicyParameter
    PolicyParameter (..),
    newPolicyParameter,
    policyParameter_key,
    policyParameter_values,
    policyParameter_mapEntries,

    -- * Qualification
    Qualification (..),
    newQualification,
    qualification_qualificationTypeId,
    qualification_status,
    qualification_grantTime,
    qualification_workerId,
    qualification_localeValue,
    qualification_integerValue,

    -- * QualificationRequest
    QualificationRequest (..),
    newQualificationRequest,
    qualificationRequest_qualificationTypeId,
    qualificationRequest_answer,
    qualificationRequest_submitTime,
    qualificationRequest_test,
    qualificationRequest_workerId,
    qualificationRequest_qualificationRequestId,

    -- * QualificationRequirement
    QualificationRequirement (..),
    newQualificationRequirement,
    qualificationRequirement_actionsGuarded,
    qualificationRequirement_localeValues,
    qualificationRequirement_requiredToPreview,
    qualificationRequirement_integerValues,
    qualificationRequirement_qualificationTypeId,
    qualificationRequirement_comparator,

    -- * QualificationType
    QualificationType (..),
    newQualificationType,
    qualificationType_qualificationTypeId,
    qualificationType_creationTime,
    qualificationType_isRequestable,
    qualificationType_retryDelayInSeconds,
    qualificationType_autoGranted,
    qualificationType_qualificationTypeStatus,
    qualificationType_name,
    qualificationType_testDurationInSeconds,
    qualificationType_description,
    qualificationType_test,
    qualificationType_answerKey,
    qualificationType_autoGrantedValue,
    qualificationType_keywords,

    -- * ReviewActionDetail
    ReviewActionDetail (..),
    newReviewActionDetail,
    reviewActionDetail_status,
    reviewActionDetail_targetId,
    reviewActionDetail_actionName,
    reviewActionDetail_targetType,
    reviewActionDetail_result,
    reviewActionDetail_actionId,
    reviewActionDetail_completeTime,
    reviewActionDetail_errorCode,

    -- * ReviewPolicy
    ReviewPolicy (..),
    newReviewPolicy,
    reviewPolicy_parameters,
    reviewPolicy_policyName,

    -- * ReviewReport
    ReviewReport (..),
    newReviewReport,
    reviewReport_reviewActions,
    reviewReport_reviewResults,

    -- * ReviewResultDetail
    ReviewResultDetail (..),
    newReviewResultDetail,
    reviewResultDetail_key,
    reviewResultDetail_subjectType,
    reviewResultDetail_subjectId,
    reviewResultDetail_actionId,
    reviewResultDetail_value,
    reviewResultDetail_questionId,

    -- * WorkerBlock
    WorkerBlock (..),
    newWorkerBlock,
    workerBlock_reason,
    workerBlock_workerId,
  )
where

import qualified Network.AWS.Lens as Lens
import Network.AWS.MechanicalTurk.Types.Assignment
import Network.AWS.MechanicalTurk.Types.AssignmentStatus
import Network.AWS.MechanicalTurk.Types.BonusPayment
import Network.AWS.MechanicalTurk.Types.Comparator
import Network.AWS.MechanicalTurk.Types.EventType
import Network.AWS.MechanicalTurk.Types.HIT
import Network.AWS.MechanicalTurk.Types.HITAccessActions
import Network.AWS.MechanicalTurk.Types.HITLayoutParameter
import Network.AWS.MechanicalTurk.Types.HITReviewStatus
import Network.AWS.MechanicalTurk.Types.HITStatus
import Network.AWS.MechanicalTurk.Types.Locale
import Network.AWS.MechanicalTurk.Types.NotificationSpecification
import Network.AWS.MechanicalTurk.Types.NotificationTransport
import Network.AWS.MechanicalTurk.Types.NotifyWorkersFailureCode
import Network.AWS.MechanicalTurk.Types.NotifyWorkersFailureStatus
import Network.AWS.MechanicalTurk.Types.ParameterMapEntry
import Network.AWS.MechanicalTurk.Types.PolicyParameter
import Network.AWS.MechanicalTurk.Types.Qualification
import Network.AWS.MechanicalTurk.Types.QualificationRequest
import Network.AWS.MechanicalTurk.Types.QualificationRequirement
import Network.AWS.MechanicalTurk.Types.QualificationStatus
import Network.AWS.MechanicalTurk.Types.QualificationType
import Network.AWS.MechanicalTurk.Types.QualificationTypeStatus
import Network.AWS.MechanicalTurk.Types.ReviewActionDetail
import Network.AWS.MechanicalTurk.Types.ReviewActionStatus
import Network.AWS.MechanicalTurk.Types.ReviewPolicy
import Network.AWS.MechanicalTurk.Types.ReviewPolicyLevel
import Network.AWS.MechanicalTurk.Types.ReviewReport
import Network.AWS.MechanicalTurk.Types.ReviewResultDetail
import Network.AWS.MechanicalTurk.Types.ReviewableHITStatus
import Network.AWS.MechanicalTurk.Types.WorkerBlock
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Sign.V4 as Sign

-- | API version @2017-01-17@ of the Amazon Mechanical Turk SDK configuration.
defaultService :: Prelude.Service
defaultService =
  Prelude.Service
    { Prelude._svcAbbrev =
        "MechanicalTurk",
      Prelude._svcSigner = Sign.v4,
      Prelude._svcEndpointPrefix = "mturk-requester",
      Prelude._svcSigningName = "mturk-requester",
      Prelude._svcVersion = "2017-01-17",
      Prelude._svcEndpoint =
        Prelude.defaultEndpoint defaultService,
      Prelude._svcTimeout = Prelude.Just 70,
      Prelude._svcCheck = Prelude.statusSuccess,
      Prelude._svcError =
        Prelude.parseJSONError "MechanicalTurk",
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

-- | Amazon Mechanical Turk is temporarily unable to process your request.
-- Try your call again.
_ServiceFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ServiceFault =
  Prelude._MatchServiceError
    defaultService
    "ServiceFault"

-- | Your request is invalid.
_RequestError :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_RequestError =
  Prelude._MatchServiceError
    defaultService
    "RequestError"
