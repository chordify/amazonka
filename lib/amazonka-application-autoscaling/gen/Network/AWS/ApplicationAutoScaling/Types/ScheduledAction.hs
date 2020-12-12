{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ApplicationAutoScaling.Types.ScheduledAction
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ApplicationAutoScaling.Types.ScheduledAction
  ( ScheduledAction (..),

    -- * Smart constructor
    mkScheduledAction,

    -- * Lenses
    saScalableDimension,
    saStartTime,
    saEndTime,
    saScalableTargetAction,
    saScheduledActionName,
    saScheduledActionARN,
    saServiceNamespace,
    saSchedule,
    saResourceId,
    saCreationTime,
  )
where

import Network.AWS.ApplicationAutoScaling.Types.ScalableDimension
import Network.AWS.ApplicationAutoScaling.Types.ScalableTargetAction
import Network.AWS.ApplicationAutoScaling.Types.ServiceNamespace
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | Represents a scheduled action.
--
-- /See:/ 'mkScheduledAction' smart constructor.
data ScheduledAction = ScheduledAction'
  { scalableDimension ::
      Lude.Maybe ScalableDimension,
    startTime :: Lude.Maybe Lude.Timestamp,
    endTime :: Lude.Maybe Lude.Timestamp,
    scalableTargetAction :: Lude.Maybe ScalableTargetAction,
    scheduledActionName :: Lude.Text,
    scheduledActionARN :: Lude.Text,
    serviceNamespace :: ServiceNamespace,
    schedule :: Lude.Text,
    resourceId :: Lude.Text,
    creationTime :: Lude.Timestamp
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'ScheduledAction' with the minimum fields required to make a request.
--
-- * 'creationTime' - The date and time that the scheduled action was created.
-- * 'endTime' - The date and time that the action is scheduled to end.
-- * 'resourceId' - The identifier of the resource associated with the scaling policy. This string consists of the resource type and unique identifier.
--
--
--     * ECS service - The resource type is @service@ and the unique identifier is the cluster name and service name. Example: @service/default/sample-webapp@ .
--
--
--     * Spot Fleet request - The resource type is @spot-fleet-request@ and the unique identifier is the Spot Fleet request ID. Example: @spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE@ .
--
--
--     * EMR cluster - The resource type is @instancegroup@ and the unique identifier is the cluster ID and instance group ID. Example: @instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0@ .
--
--
--     * AppStream 2.0 fleet - The resource type is @fleet@ and the unique identifier is the fleet name. Example: @fleet/sample-fleet@ .
--
--
--     * DynamoDB table - The resource type is @table@ and the unique identifier is the table name. Example: @table/my-table@ .
--
--
--     * DynamoDB global secondary index - The resource type is @index@ and the unique identifier is the index name. Example: @table/my-table/index/my-table-index@ .
--
--
--     * Aurora DB cluster - The resource type is @cluster@ and the unique identifier is the cluster name. Example: @cluster:my-db-cluster@ .
--
--
--     * Amazon SageMaker endpoint variant - The resource type is @variant@ and the unique identifier is the resource ID. Example: @endpoint/my-end-point/variant/KMeansClustering@ .
--
--
--     * Custom resources are not supported with a resource type. This parameter must specify the @OutputValue@ from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider. More information is available in our <https://github.com/aws/aws-auto-scaling-custom-resource GitHub repository> .
--
--
--     * Amazon Comprehend document classification endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: @arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE@ .
--
--
--     * Amazon Comprehend entity recognizer endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: @arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE@ .
--
--
--     * Lambda provisioned concurrency - The resource type is @function@ and the unique identifier is the function name with a function version or alias name suffix that is not @> LATEST@ . Example: @function:my-function:prod@ or @function:my-function:1@ .
--
--
--     * Amazon Keyspaces table - The resource type is @table@ and the unique identifier is the table name. Example: @keyspace/mykeyspace/table/mytable@ .
--
--
--     * Amazon MSK cluster - The resource type and unique identifier are specified using the cluster ARN. Example: @arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5@ .
--
--
-- * 'scalableDimension' - The scalable dimension. This string consists of the service namespace, resource type, and scaling property.
--
--
--     * @ecs:service:DesiredCount@ - The desired task count of an ECS service.
--
--
--     * @ec2:spot-fleet-request:TargetCapacity@ - The target capacity of a Spot Fleet request.
--
--
--     * @elasticmapreduce:instancegroup:InstanceCount@ - The instance count of an EMR Instance Group.
--
--
--     * @appstream:fleet:DesiredCapacity@ - The desired capacity of an AppStream 2.0 fleet.
--
--
--     * @dynamodb:table:ReadCapacityUnits@ - The provisioned read capacity for a DynamoDB table.
--
--
--     * @dynamodb:table:WriteCapacityUnits@ - The provisioned write capacity for a DynamoDB table.
--
--
--     * @dynamodb:index:ReadCapacityUnits@ - The provisioned read capacity for a DynamoDB global secondary index.
--
--
--     * @dynamodb:index:WriteCapacityUnits@ - The provisioned write capacity for a DynamoDB global secondary index.
--
--
--     * @rds:cluster:ReadReplicaCount@ - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition and Aurora PostgreSQL-compatible edition.
--
--
--     * @sagemaker:variant:DesiredInstanceCount@ - The number of EC2 instances for an Amazon SageMaker model endpoint variant.
--
--
--     * @custom-resource:ResourceType:Property@ - The scalable dimension for a custom resource provided by your own application or service.
--
--
--     * @comprehend:document-classifier-endpoint:DesiredInferenceUnits@ - The number of inference units for an Amazon Comprehend document classification endpoint.
--
--
--     * @comprehend:entity-recognizer-endpoint:DesiredInferenceUnits@ - The number of inference units for an Amazon Comprehend entity recognizer endpoint.
--
--
--     * @lambda:function:ProvisionedConcurrency@ - The provisioned concurrency for a Lambda function.
--
--
--     * @cassandra:table:ReadCapacityUnits@ - The provisioned read capacity for an Amazon Keyspaces table.
--
--
--     * @cassandra:table:WriteCapacityUnits@ - The provisioned write capacity for an Amazon Keyspaces table.
--
--
--     * @kafka:broker-storage:VolumeSize@ - The provisioned volume size (in GiB) for brokers in an Amazon MSK cluster.
--
--
-- * 'scalableTargetAction' - The new minimum and maximum capacity. You can set both values or just one. At the scheduled time, if the current capacity is below the minimum capacity, Application Auto Scaling scales out to the minimum capacity. If the current capacity is above the maximum capacity, Application Auto Scaling scales in to the maximum capacity.
-- * 'schedule' - The schedule for this action. The following formats are supported:
--
--
--     * At expressions - "@at(/yyyy/ -/mm/ -/dd/ T/hh/ :/mm/ :/ss/ )@ "
--
--
--     * Rate expressions - "@rate(/value/ /unit/ )@ "
--
--
--     * Cron expressions - "@cron(/fields/ )@ "
--
--
-- At expressions are useful for one-time schedules. Specify the time in UTC.
-- For rate expressions, /value/ is a positive integer and /unit/ is @minute@ | @minutes@ | @hour@ | @hours@ | @day@ | @days@ .
-- For more information about cron expressions, see <https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html#CronExpressions Cron Expressions> in the /Amazon CloudWatch Events User Guide/ .
-- For examples of using these expressions, see <https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-scheduled-scaling.html Scheduled Scaling> in the /Application Auto Scaling User Guide/ .
-- * 'scheduledActionARN' - The Amazon Resource Name (ARN) of the scheduled action.
-- * 'scheduledActionName' - The name of the scheduled action.
-- * 'serviceNamespace' - The namespace of the AWS service that provides the resource, or a @custom-resource@ .
-- * 'startTime' - The date and time that the action is scheduled to begin.
mkScheduledAction ::
  -- | 'scheduledActionName'
  Lude.Text ->
  -- | 'scheduledActionARN'
  Lude.Text ->
  -- | 'serviceNamespace'
  ServiceNamespace ->
  -- | 'schedule'
  Lude.Text ->
  -- | 'resourceId'
  Lude.Text ->
  -- | 'creationTime'
  Lude.Timestamp ->
  ScheduledAction
mkScheduledAction
  pScheduledActionName_
  pScheduledActionARN_
  pServiceNamespace_
  pSchedule_
  pResourceId_
  pCreationTime_ =
    ScheduledAction'
      { scalableDimension = Lude.Nothing,
        startTime = Lude.Nothing,
        endTime = Lude.Nothing,
        scalableTargetAction = Lude.Nothing,
        scheduledActionName = pScheduledActionName_,
        scheduledActionARN = pScheduledActionARN_,
        serviceNamespace = pServiceNamespace_,
        schedule = pSchedule_,
        resourceId = pResourceId_,
        creationTime = pCreationTime_
      }

-- | The scalable dimension. This string consists of the service namespace, resource type, and scaling property.
--
--
--     * @ecs:service:DesiredCount@ - The desired task count of an ECS service.
--
--
--     * @ec2:spot-fleet-request:TargetCapacity@ - The target capacity of a Spot Fleet request.
--
--
--     * @elasticmapreduce:instancegroup:InstanceCount@ - The instance count of an EMR Instance Group.
--
--
--     * @appstream:fleet:DesiredCapacity@ - The desired capacity of an AppStream 2.0 fleet.
--
--
--     * @dynamodb:table:ReadCapacityUnits@ - The provisioned read capacity for a DynamoDB table.
--
--
--     * @dynamodb:table:WriteCapacityUnits@ - The provisioned write capacity for a DynamoDB table.
--
--
--     * @dynamodb:index:ReadCapacityUnits@ - The provisioned read capacity for a DynamoDB global secondary index.
--
--
--     * @dynamodb:index:WriteCapacityUnits@ - The provisioned write capacity for a DynamoDB global secondary index.
--
--
--     * @rds:cluster:ReadReplicaCount@ - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition and Aurora PostgreSQL-compatible edition.
--
--
--     * @sagemaker:variant:DesiredInstanceCount@ - The number of EC2 instances for an Amazon SageMaker model endpoint variant.
--
--
--     * @custom-resource:ResourceType:Property@ - The scalable dimension for a custom resource provided by your own application or service.
--
--
--     * @comprehend:document-classifier-endpoint:DesiredInferenceUnits@ - The number of inference units for an Amazon Comprehend document classification endpoint.
--
--
--     * @comprehend:entity-recognizer-endpoint:DesiredInferenceUnits@ - The number of inference units for an Amazon Comprehend entity recognizer endpoint.
--
--
--     * @lambda:function:ProvisionedConcurrency@ - The provisioned concurrency for a Lambda function.
--
--
--     * @cassandra:table:ReadCapacityUnits@ - The provisioned read capacity for an Amazon Keyspaces table.
--
--
--     * @cassandra:table:WriteCapacityUnits@ - The provisioned write capacity for an Amazon Keyspaces table.
--
--
--     * @kafka:broker-storage:VolumeSize@ - The provisioned volume size (in GiB) for brokers in an Amazon MSK cluster.
--
--
--
-- /Note:/ Consider using 'scalableDimension' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
saScalableDimension :: Lens.Lens' ScheduledAction (Lude.Maybe ScalableDimension)
saScalableDimension = Lens.lens (scalableDimension :: ScheduledAction -> Lude.Maybe ScalableDimension) (\s a -> s {scalableDimension = a} :: ScheduledAction)
{-# DEPRECATED saScalableDimension "Use generic-lens or generic-optics with 'scalableDimension' instead." #-}

-- | The date and time that the action is scheduled to begin.
--
-- /Note:/ Consider using 'startTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
saStartTime :: Lens.Lens' ScheduledAction (Lude.Maybe Lude.Timestamp)
saStartTime = Lens.lens (startTime :: ScheduledAction -> Lude.Maybe Lude.Timestamp) (\s a -> s {startTime = a} :: ScheduledAction)
{-# DEPRECATED saStartTime "Use generic-lens or generic-optics with 'startTime' instead." #-}

-- | The date and time that the action is scheduled to end.
--
-- /Note:/ Consider using 'endTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
saEndTime :: Lens.Lens' ScheduledAction (Lude.Maybe Lude.Timestamp)
saEndTime = Lens.lens (endTime :: ScheduledAction -> Lude.Maybe Lude.Timestamp) (\s a -> s {endTime = a} :: ScheduledAction)
{-# DEPRECATED saEndTime "Use generic-lens or generic-optics with 'endTime' instead." #-}

-- | The new minimum and maximum capacity. You can set both values or just one. At the scheduled time, if the current capacity is below the minimum capacity, Application Auto Scaling scales out to the minimum capacity. If the current capacity is above the maximum capacity, Application Auto Scaling scales in to the maximum capacity.
--
-- /Note:/ Consider using 'scalableTargetAction' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
saScalableTargetAction :: Lens.Lens' ScheduledAction (Lude.Maybe ScalableTargetAction)
saScalableTargetAction = Lens.lens (scalableTargetAction :: ScheduledAction -> Lude.Maybe ScalableTargetAction) (\s a -> s {scalableTargetAction = a} :: ScheduledAction)
{-# DEPRECATED saScalableTargetAction "Use generic-lens or generic-optics with 'scalableTargetAction' instead." #-}

-- | The name of the scheduled action.
--
-- /Note:/ Consider using 'scheduledActionName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
saScheduledActionName :: Lens.Lens' ScheduledAction Lude.Text
saScheduledActionName = Lens.lens (scheduledActionName :: ScheduledAction -> Lude.Text) (\s a -> s {scheduledActionName = a} :: ScheduledAction)
{-# DEPRECATED saScheduledActionName "Use generic-lens or generic-optics with 'scheduledActionName' instead." #-}

-- | The Amazon Resource Name (ARN) of the scheduled action.
--
-- /Note:/ Consider using 'scheduledActionARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
saScheduledActionARN :: Lens.Lens' ScheduledAction Lude.Text
saScheduledActionARN = Lens.lens (scheduledActionARN :: ScheduledAction -> Lude.Text) (\s a -> s {scheduledActionARN = a} :: ScheduledAction)
{-# DEPRECATED saScheduledActionARN "Use generic-lens or generic-optics with 'scheduledActionARN' instead." #-}

-- | The namespace of the AWS service that provides the resource, or a @custom-resource@ .
--
-- /Note:/ Consider using 'serviceNamespace' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
saServiceNamespace :: Lens.Lens' ScheduledAction ServiceNamespace
saServiceNamespace = Lens.lens (serviceNamespace :: ScheduledAction -> ServiceNamespace) (\s a -> s {serviceNamespace = a} :: ScheduledAction)
{-# DEPRECATED saServiceNamespace "Use generic-lens or generic-optics with 'serviceNamespace' instead." #-}

-- | The schedule for this action. The following formats are supported:
--
--
--     * At expressions - "@at(/yyyy/ -/mm/ -/dd/ T/hh/ :/mm/ :/ss/ )@ "
--
--
--     * Rate expressions - "@rate(/value/ /unit/ )@ "
--
--
--     * Cron expressions - "@cron(/fields/ )@ "
--
--
-- At expressions are useful for one-time schedules. Specify the time in UTC.
-- For rate expressions, /value/ is a positive integer and /unit/ is @minute@ | @minutes@ | @hour@ | @hours@ | @day@ | @days@ .
-- For more information about cron expressions, see <https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html#CronExpressions Cron Expressions> in the /Amazon CloudWatch Events User Guide/ .
-- For examples of using these expressions, see <https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-scheduled-scaling.html Scheduled Scaling> in the /Application Auto Scaling User Guide/ .
--
-- /Note:/ Consider using 'schedule' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
saSchedule :: Lens.Lens' ScheduledAction Lude.Text
saSchedule = Lens.lens (schedule :: ScheduledAction -> Lude.Text) (\s a -> s {schedule = a} :: ScheduledAction)
{-# DEPRECATED saSchedule "Use generic-lens or generic-optics with 'schedule' instead." #-}

-- | The identifier of the resource associated with the scaling policy. This string consists of the resource type and unique identifier.
--
--
--     * ECS service - The resource type is @service@ and the unique identifier is the cluster name and service name. Example: @service/default/sample-webapp@ .
--
--
--     * Spot Fleet request - The resource type is @spot-fleet-request@ and the unique identifier is the Spot Fleet request ID. Example: @spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE@ .
--
--
--     * EMR cluster - The resource type is @instancegroup@ and the unique identifier is the cluster ID and instance group ID. Example: @instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0@ .
--
--
--     * AppStream 2.0 fleet - The resource type is @fleet@ and the unique identifier is the fleet name. Example: @fleet/sample-fleet@ .
--
--
--     * DynamoDB table - The resource type is @table@ and the unique identifier is the table name. Example: @table/my-table@ .
--
--
--     * DynamoDB global secondary index - The resource type is @index@ and the unique identifier is the index name. Example: @table/my-table/index/my-table-index@ .
--
--
--     * Aurora DB cluster - The resource type is @cluster@ and the unique identifier is the cluster name. Example: @cluster:my-db-cluster@ .
--
--
--     * Amazon SageMaker endpoint variant - The resource type is @variant@ and the unique identifier is the resource ID. Example: @endpoint/my-end-point/variant/KMeansClustering@ .
--
--
--     * Custom resources are not supported with a resource type. This parameter must specify the @OutputValue@ from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider. More information is available in our <https://github.com/aws/aws-auto-scaling-custom-resource GitHub repository> .
--
--
--     * Amazon Comprehend document classification endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: @arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE@ .
--
--
--     * Amazon Comprehend entity recognizer endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: @arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE@ .
--
--
--     * Lambda provisioned concurrency - The resource type is @function@ and the unique identifier is the function name with a function version or alias name suffix that is not @> LATEST@ . Example: @function:my-function:prod@ or @function:my-function:1@ .
--
--
--     * Amazon Keyspaces table - The resource type is @table@ and the unique identifier is the table name. Example: @keyspace/mykeyspace/table/mytable@ .
--
--
--     * Amazon MSK cluster - The resource type and unique identifier are specified using the cluster ARN. Example: @arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5@ .
--
--
--
-- /Note:/ Consider using 'resourceId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
saResourceId :: Lens.Lens' ScheduledAction Lude.Text
saResourceId = Lens.lens (resourceId :: ScheduledAction -> Lude.Text) (\s a -> s {resourceId = a} :: ScheduledAction)
{-# DEPRECATED saResourceId "Use generic-lens or generic-optics with 'resourceId' instead." #-}

-- | The date and time that the scheduled action was created.
--
-- /Note:/ Consider using 'creationTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
saCreationTime :: Lens.Lens' ScheduledAction Lude.Timestamp
saCreationTime = Lens.lens (creationTime :: ScheduledAction -> Lude.Timestamp) (\s a -> s {creationTime = a} :: ScheduledAction)
{-# DEPRECATED saCreationTime "Use generic-lens or generic-optics with 'creationTime' instead." #-}

instance Lude.FromJSON ScheduledAction where
  parseJSON =
    Lude.withObject
      "ScheduledAction"
      ( \x ->
          ScheduledAction'
            Lude.<$> (x Lude..:? "ScalableDimension")
            Lude.<*> (x Lude..:? "StartTime")
            Lude.<*> (x Lude..:? "EndTime")
            Lude.<*> (x Lude..:? "ScalableTargetAction")
            Lude.<*> (x Lude..: "ScheduledActionName")
            Lude.<*> (x Lude..: "ScheduledActionARN")
            Lude.<*> (x Lude..: "ServiceNamespace")
            Lude.<*> (x Lude..: "Schedule")
            Lude.<*> (x Lude..: "ResourceId")
            Lude.<*> (x Lude..: "CreationTime")
      )
