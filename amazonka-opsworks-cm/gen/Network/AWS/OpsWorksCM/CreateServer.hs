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
-- Module      : Network.AWS.OpsWorksCM.CreateServer
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates and immedately starts a new server. The server is ready to use when it is in the @HEALTHY@ state. By default, you can create a maximum of 10 servers.
--
--
-- This operation is asynchronous.
--
-- A @LimitExceededException@ is thrown when you have created the maximum number of servers (10). A @ResourceAlreadyExistsException@ is thrown when a server with the same name already exists in the account. A @ResourceNotFoundException@ is thrown when you specify a backup ID that is not valid or is for a backup that does not exist. A @ValidationException@ is thrown when parameters of the request are not valid.
--
-- If you do not specify a security group by adding the @SecurityGroupIds@ parameter, AWS OpsWorks creates a new security group.
--
-- /Chef Automate:/ The default security group opens the Chef server to the world on TCP port 443. If a KeyName is present, AWS OpsWorks enables SSH access. SSH is also open to the world on TCP port 22.
--
-- /Puppet Enterprise:/ The default security group opens TCP ports 22, 443, 4433, 8140, 8142, 8143, and 8170. If a KeyName is present, AWS OpsWorks enables SSH access. SSH is also open to the world on TCP port 22.
--
-- By default, your server is accessible from any IP address. We recommend that you update your security group rules to allow access from known IP addresses and address ranges only. To edit security group rules, open Security Groups in the navigation pane of the EC2 management console.
--
-- To specify your own domain for a server, and provide your own self-signed or CA-signed certificate and private key, specify values for @CustomDomain@ , @CustomCertificate@ , and @CustomPrivateKey@ .
module Network.AWS.OpsWorksCM.CreateServer
  ( -- * Creating a Request
    createServer,
    CreateServer,

    -- * Request Lenses
    csSecurityGroupIds,
    csPreferredBackupWindow,
    csDisableAutomatedBackup,
    csCustomPrivateKey,
    csEngineAttributes,
    csCustomDomain,
    csBackupId,
    csSubnetIds,
    csKeyPair,
    csAssociatePublicIPAddress,
    csEngineVersion,
    csPreferredMaintenanceWindow,
    csTags,
    csBackupRetentionCount,
    csEngineModel,
    csCustomCertificate,
    csEngine,
    csServerName,
    csInstanceProfileARN,
    csInstanceType,
    csServiceRoleARN,

    -- * Destructuring the Response
    createServerResponse,
    CreateServerResponse,

    -- * Response Lenses
    csrrsServer,
    csrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.OpsWorksCM.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createServer' smart constructor.
data CreateServer = CreateServer'
  { _csSecurityGroupIds ::
      !(Maybe [Text]),
    _csPreferredBackupWindow :: !(Maybe Text),
    _csDisableAutomatedBackup :: !(Maybe Bool),
    _csCustomPrivateKey ::
      !(Maybe (Sensitive Text)),
    _csEngineAttributes ::
      !(Maybe [EngineAttribute]),
    _csCustomDomain :: !(Maybe Text),
    _csBackupId :: !(Maybe Text),
    _csSubnetIds :: !(Maybe [Text]),
    _csKeyPair :: !(Maybe Text),
    _csAssociatePublicIPAddress :: !(Maybe Bool),
    _csEngineVersion :: !(Maybe Text),
    _csPreferredMaintenanceWindow ::
      !(Maybe Text),
    _csTags :: !(Maybe [Tag]),
    _csBackupRetentionCount :: !(Maybe Nat),
    _csEngineModel :: !(Maybe Text),
    _csCustomCertificate :: !(Maybe Text),
    _csEngine :: !Text,
    _csServerName :: !Text,
    _csInstanceProfileARN :: !Text,
    _csInstanceType :: !Text,
    _csServiceRoleARN :: !Text
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateServer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csSecurityGroupIds' - A list of security group IDs to attach to the Amazon EC2 instance. If you add this parameter, the specified security groups must be within the VPC that is specified by @SubnetIds@ .  If you do not specify this parameter, AWS OpsWorks CM creates one new security group that uses TCP ports 22 and 443, open to 0.0.0.0/0 (everyone).
--
-- * 'csPreferredBackupWindow' - The start time for a one-hour period during which AWS OpsWorks CM backs up application-level data on your server if automated backups are enabled. Valid values must be specified in one of the following formats:      * @HH:MM@ for daily backups     * @DDD:HH:MM@ for weekly backups @MM@ must be specified as @00@ . The specified time is in coordinated universal time (UTC). The default value is a random, daily start time. __Example:__ @08:00@ , which represents a daily start time of 08:00 UTC. __Example:__ @Mon:08:00@ , which represents a start time of every Monday at 08:00 UTC. (8:00 a.m.)
--
-- * 'csDisableAutomatedBackup' - Enable or disable scheduled backups. Valid values are @true@ or @false@ . The default value is @true@ .
--
-- * 'csCustomPrivateKey' - A private key in PEM format for connecting to the server by using HTTPS. The private key must not be encrypted; it cannot be protected by a password or passphrase. If you specify a custom private key, you must also specify values for @CustomDomain@ and @CustomCertificate@ .
--
-- * 'csEngineAttributes' - Optional engine attributes on a specified server.  __Attributes accepted in a Chef createServer request:__      * @CHEF_AUTOMATE_PIVOTAL_KEY@ : A base64-encoded RSA public key. The corresponding private key is required to access the Chef API. When no CHEF_AUTOMATE_PIVOTAL_KEY is set, a private key is generated and returned in the response.      * @CHEF_AUTOMATE_ADMIN_PASSWORD@ : The password for the administrative user in the Chef Automate web-based dashboard. The password length is a minimum of eight characters, and a maximum of 32. The password can contain letters, numbers, and special characters (!/@#$%^&+=_). The password must contain at least one lower case letter, one upper case letter, one number, and one special character. When no CHEF_AUTOMATE_ADMIN_PASSWORD is set, one is generated and returned in the response. __Attributes accepted in a Puppet createServer request:__      * @PUPPET_ADMIN_PASSWORD@ : To work with the Puppet Enterprise console, a password must use ASCII characters.     * @PUPPET_R10K_REMOTE@ : The r10k remote is the URL of your control repository (for example, ssh://git@your.git-repo.com:user/control-repo.git). Specifying an r10k remote opens TCP port 8170.     * @PUPPET_R10K_PRIVATE_KEY@ : If you are using a private Git repository, add PUPPET_R10K_PRIVATE_KEY to specify a PEM-encoded private SSH key.
--
-- * 'csCustomDomain' - An optional public endpoint of a server, such as @https://aws.my-company.com@ . To access the server, create a CNAME DNS record in your preferred DNS service that points the custom domain to the endpoint that is generated when the server is created (the value of the CreateServer Endpoint attribute). You cannot access the server by using the generated @Endpoint@ value if the server is using a custom domain. If you specify a custom domain, you must also specify values for @CustomCertificate@ and @CustomPrivateKey@ .
--
-- * 'csBackupId' - If you specify this field, AWS OpsWorks CM creates the server by using the backup represented by BackupId.
--
-- * 'csSubnetIds' - The IDs of subnets in which to launch the server EC2 instance.  Amazon EC2-Classic customers: This field is required. All servers must run within a VPC. The VPC must have "Auto Assign Public IP" enabled.  EC2-VPC customers: This field is optional. If you do not specify subnet IDs, your EC2 instances are created in a default subnet that is selected by Amazon EC2. If you specify subnet IDs, the VPC must have "Auto Assign Public IP" enabled.  For more information about supported Amazon EC2 platforms, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html Supported Platforms> .
--
-- * 'csKeyPair' - The Amazon EC2 key pair to set for the instance. This parameter is optional; if desired, you may specify this parameter to connect to your instances by using SSH.
--
-- * 'csAssociatePublicIPAddress' - Associate a public IP address with a server that you are launching. Valid values are @true@ or @false@ . The default value is @true@ .
--
-- * 'csEngineVersion' - The major release version of the engine that you want to use. For a Chef server, the valid value for EngineVersion is currently @2@ . For a Puppet server, the valid value is @2017@ .
--
-- * 'csPreferredMaintenanceWindow' - The start time for a one-hour period each week during which AWS OpsWorks CM performs maintenance on the instance. Valid values must be specified in the following format: @DDD:HH:MM@ . @MM@ must be specified as @00@ . The specified time is in coordinated universal time (UTC). The default value is a random one-hour period on Tuesday, Wednesday, or Friday. See @TimeWindowDefinition@ for more information.  __Example:__ @Mon:08:00@ , which represents a start time of every Monday at 08:00 UTC. (8:00 a.m.)
--
-- * 'csTags' - A map that contains tag keys and tag values to attach to an AWS OpsWorks for Chef Automate or AWS OpsWorks for Puppet Enterprise server.     * The key cannot be empty.     * The key can be a maximum of 127 characters, and can contain only Unicode letters, numbers, or separators, or the following special characters: @+ - = . _ : / @@      * The value can be a maximum 255 characters, and contain only Unicode letters, numbers, or separators, or the following special characters: @+ - = . _ : / @@      * Leading and trailing white spaces are trimmed from both the key and value.     * A maximum of 50 user-applied tags is allowed for any AWS OpsWorks-CM server.
--
-- * 'csBackupRetentionCount' - The number of automated backups that you want to keep. Whenever a new backup is created, AWS OpsWorks CM deletes the oldest backups if this number is exceeded. The default value is @1@ .
--
-- * 'csEngineModel' - The engine model of the server. Valid values in this release include @Monolithic@ for Puppet and @Single@ for Chef.
--
-- * 'csCustomCertificate' - A PEM-formatted HTTPS certificate. The value can be be a single, self-signed certificate, or a certificate chain. If you specify a custom certificate, you must also specify values for @CustomDomain@ and @CustomPrivateKey@ . The following are requirements for the @CustomCertificate@ value:     * You can provide either a self-signed, custom certificate, or the full certificate chain.     * The certificate must be a valid X509 certificate, or a certificate chain in PEM format.     * The certificate must be valid at the time of upload. A certificate can't be used before its validity period begins (the certificate's @NotBefore@ date), or after it expires (the certificate's @NotAfter@ date).     * The certificate’s common name or subject alternative names (SANs), if present, must match the value of @CustomDomain@ .     * The certificate must match the value of @CustomPrivateKey@ .
--
-- * 'csEngine' - The configuration management engine to use. Valid values include @ChefAutomate@ and @Puppet@ .
--
-- * 'csServerName' - The name of the server. The server name must be unique within your AWS account, within each region. Server names must start with a letter; then letters, numbers, or hyphens (-) are allowed, up to a maximum of 40 characters.
--
-- * 'csInstanceProfileARN' - The ARN of the instance profile that your Amazon EC2 instances use. Although the AWS OpsWorks console typically creates the instance profile for you, if you are using API commands instead, run the service-role-creation.yaml AWS CloudFormation template, located at https://s3.amazonaws.com/opsworks-cm-us-east-1-prod-default-assets/misc/opsworks-cm-roles.yaml. This template creates a CloudFormation stack that includes the instance profile you need.
--
-- * 'csInstanceType' - The Amazon EC2 instance type to use. For example, @m5.large@ .
--
-- * 'csServiceRoleARN' - The service role that the AWS OpsWorks CM service backend uses to work with your account. Although the AWS OpsWorks management console typically creates the service role for you, if you are using the AWS CLI or API commands, run the service-role-creation.yaml AWS CloudFormation template, located at https://s3.amazonaws.com/opsworks-cm-us-east-1-prod-default-assets/misc/opsworks-cm-roles.yaml. This template creates a CloudFormation stack that includes the service role and instance profile that you need.
createServer ::
  -- | 'csEngine'
  Text ->
  -- | 'csServerName'
  Text ->
  -- | 'csInstanceProfileARN'
  Text ->
  -- | 'csInstanceType'
  Text ->
  -- | 'csServiceRoleARN'
  Text ->
  CreateServer
createServer
  pEngine_
  pServerName_
  pInstanceProfileARN_
  pInstanceType_
  pServiceRoleARN_ =
    CreateServer'
      { _csSecurityGroupIds = Nothing,
        _csPreferredBackupWindow = Nothing,
        _csDisableAutomatedBackup = Nothing,
        _csCustomPrivateKey = Nothing,
        _csEngineAttributes = Nothing,
        _csCustomDomain = Nothing,
        _csBackupId = Nothing,
        _csSubnetIds = Nothing,
        _csKeyPair = Nothing,
        _csAssociatePublicIPAddress = Nothing,
        _csEngineVersion = Nothing,
        _csPreferredMaintenanceWindow = Nothing,
        _csTags = Nothing,
        _csBackupRetentionCount = Nothing,
        _csEngineModel = Nothing,
        _csCustomCertificate = Nothing,
        _csEngine = pEngine_,
        _csServerName = pServerName_,
        _csInstanceProfileARN = pInstanceProfileARN_,
        _csInstanceType = pInstanceType_,
        _csServiceRoleARN = pServiceRoleARN_
      }

-- | A list of security group IDs to attach to the Amazon EC2 instance. If you add this parameter, the specified security groups must be within the VPC that is specified by @SubnetIds@ .  If you do not specify this parameter, AWS OpsWorks CM creates one new security group that uses TCP ports 22 and 443, open to 0.0.0.0/0 (everyone).
csSecurityGroupIds :: Lens' CreateServer [Text]
csSecurityGroupIds = lens _csSecurityGroupIds (\s a -> s {_csSecurityGroupIds = a}) . _Default . _Coerce

-- | The start time for a one-hour period during which AWS OpsWorks CM backs up application-level data on your server if automated backups are enabled. Valid values must be specified in one of the following formats:      * @HH:MM@ for daily backups     * @DDD:HH:MM@ for weekly backups @MM@ must be specified as @00@ . The specified time is in coordinated universal time (UTC). The default value is a random, daily start time. __Example:__ @08:00@ , which represents a daily start time of 08:00 UTC. __Example:__ @Mon:08:00@ , which represents a start time of every Monday at 08:00 UTC. (8:00 a.m.)
csPreferredBackupWindow :: Lens' CreateServer (Maybe Text)
csPreferredBackupWindow = lens _csPreferredBackupWindow (\s a -> s {_csPreferredBackupWindow = a})

-- | Enable or disable scheduled backups. Valid values are @true@ or @false@ . The default value is @true@ .
csDisableAutomatedBackup :: Lens' CreateServer (Maybe Bool)
csDisableAutomatedBackup = lens _csDisableAutomatedBackup (\s a -> s {_csDisableAutomatedBackup = a})

-- | A private key in PEM format for connecting to the server by using HTTPS. The private key must not be encrypted; it cannot be protected by a password or passphrase. If you specify a custom private key, you must also specify values for @CustomDomain@ and @CustomCertificate@ .
csCustomPrivateKey :: Lens' CreateServer (Maybe Text)
csCustomPrivateKey = lens _csCustomPrivateKey (\s a -> s {_csCustomPrivateKey = a}) . mapping _Sensitive

-- | Optional engine attributes on a specified server.  __Attributes accepted in a Chef createServer request:__      * @CHEF_AUTOMATE_PIVOTAL_KEY@ : A base64-encoded RSA public key. The corresponding private key is required to access the Chef API. When no CHEF_AUTOMATE_PIVOTAL_KEY is set, a private key is generated and returned in the response.      * @CHEF_AUTOMATE_ADMIN_PASSWORD@ : The password for the administrative user in the Chef Automate web-based dashboard. The password length is a minimum of eight characters, and a maximum of 32. The password can contain letters, numbers, and special characters (!/@#$%^&+=_). The password must contain at least one lower case letter, one upper case letter, one number, and one special character. When no CHEF_AUTOMATE_ADMIN_PASSWORD is set, one is generated and returned in the response. __Attributes accepted in a Puppet createServer request:__      * @PUPPET_ADMIN_PASSWORD@ : To work with the Puppet Enterprise console, a password must use ASCII characters.     * @PUPPET_R10K_REMOTE@ : The r10k remote is the URL of your control repository (for example, ssh://git@your.git-repo.com:user/control-repo.git). Specifying an r10k remote opens TCP port 8170.     * @PUPPET_R10K_PRIVATE_KEY@ : If you are using a private Git repository, add PUPPET_R10K_PRIVATE_KEY to specify a PEM-encoded private SSH key.
csEngineAttributes :: Lens' CreateServer [EngineAttribute]
csEngineAttributes = lens _csEngineAttributes (\s a -> s {_csEngineAttributes = a}) . _Default . _Coerce

-- | An optional public endpoint of a server, such as @https://aws.my-company.com@ . To access the server, create a CNAME DNS record in your preferred DNS service that points the custom domain to the endpoint that is generated when the server is created (the value of the CreateServer Endpoint attribute). You cannot access the server by using the generated @Endpoint@ value if the server is using a custom domain. If you specify a custom domain, you must also specify values for @CustomCertificate@ and @CustomPrivateKey@ .
csCustomDomain :: Lens' CreateServer (Maybe Text)
csCustomDomain = lens _csCustomDomain (\s a -> s {_csCustomDomain = a})

-- | If you specify this field, AWS OpsWorks CM creates the server by using the backup represented by BackupId.
csBackupId :: Lens' CreateServer (Maybe Text)
csBackupId = lens _csBackupId (\s a -> s {_csBackupId = a})

-- | The IDs of subnets in which to launch the server EC2 instance.  Amazon EC2-Classic customers: This field is required. All servers must run within a VPC. The VPC must have "Auto Assign Public IP" enabled.  EC2-VPC customers: This field is optional. If you do not specify subnet IDs, your EC2 instances are created in a default subnet that is selected by Amazon EC2. If you specify subnet IDs, the VPC must have "Auto Assign Public IP" enabled.  For more information about supported Amazon EC2 platforms, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html Supported Platforms> .
csSubnetIds :: Lens' CreateServer [Text]
csSubnetIds = lens _csSubnetIds (\s a -> s {_csSubnetIds = a}) . _Default . _Coerce

-- | The Amazon EC2 key pair to set for the instance. This parameter is optional; if desired, you may specify this parameter to connect to your instances by using SSH.
csKeyPair :: Lens' CreateServer (Maybe Text)
csKeyPair = lens _csKeyPair (\s a -> s {_csKeyPair = a})

-- | Associate a public IP address with a server that you are launching. Valid values are @true@ or @false@ . The default value is @true@ .
csAssociatePublicIPAddress :: Lens' CreateServer (Maybe Bool)
csAssociatePublicIPAddress = lens _csAssociatePublicIPAddress (\s a -> s {_csAssociatePublicIPAddress = a})

-- | The major release version of the engine that you want to use. For a Chef server, the valid value for EngineVersion is currently @2@ . For a Puppet server, the valid value is @2017@ .
csEngineVersion :: Lens' CreateServer (Maybe Text)
csEngineVersion = lens _csEngineVersion (\s a -> s {_csEngineVersion = a})

-- | The start time for a one-hour period each week during which AWS OpsWorks CM performs maintenance on the instance. Valid values must be specified in the following format: @DDD:HH:MM@ . @MM@ must be specified as @00@ . The specified time is in coordinated universal time (UTC). The default value is a random one-hour period on Tuesday, Wednesday, or Friday. See @TimeWindowDefinition@ for more information.  __Example:__ @Mon:08:00@ , which represents a start time of every Monday at 08:00 UTC. (8:00 a.m.)
csPreferredMaintenanceWindow :: Lens' CreateServer (Maybe Text)
csPreferredMaintenanceWindow = lens _csPreferredMaintenanceWindow (\s a -> s {_csPreferredMaintenanceWindow = a})

-- | A map that contains tag keys and tag values to attach to an AWS OpsWorks for Chef Automate or AWS OpsWorks for Puppet Enterprise server.     * The key cannot be empty.     * The key can be a maximum of 127 characters, and can contain only Unicode letters, numbers, or separators, or the following special characters: @+ - = . _ : / @@      * The value can be a maximum 255 characters, and contain only Unicode letters, numbers, or separators, or the following special characters: @+ - = . _ : / @@      * Leading and trailing white spaces are trimmed from both the key and value.     * A maximum of 50 user-applied tags is allowed for any AWS OpsWorks-CM server.
csTags :: Lens' CreateServer [Tag]
csTags = lens _csTags (\s a -> s {_csTags = a}) . _Default . _Coerce

-- | The number of automated backups that you want to keep. Whenever a new backup is created, AWS OpsWorks CM deletes the oldest backups if this number is exceeded. The default value is @1@ .
csBackupRetentionCount :: Lens' CreateServer (Maybe Natural)
csBackupRetentionCount = lens _csBackupRetentionCount (\s a -> s {_csBackupRetentionCount = a}) . mapping _Nat

-- | The engine model of the server. Valid values in this release include @Monolithic@ for Puppet and @Single@ for Chef.
csEngineModel :: Lens' CreateServer (Maybe Text)
csEngineModel = lens _csEngineModel (\s a -> s {_csEngineModel = a})

-- | A PEM-formatted HTTPS certificate. The value can be be a single, self-signed certificate, or a certificate chain. If you specify a custom certificate, you must also specify values for @CustomDomain@ and @CustomPrivateKey@ . The following are requirements for the @CustomCertificate@ value:     * You can provide either a self-signed, custom certificate, or the full certificate chain.     * The certificate must be a valid X509 certificate, or a certificate chain in PEM format.     * The certificate must be valid at the time of upload. A certificate can't be used before its validity period begins (the certificate's @NotBefore@ date), or after it expires (the certificate's @NotAfter@ date).     * The certificate’s common name or subject alternative names (SANs), if present, must match the value of @CustomDomain@ .     * The certificate must match the value of @CustomPrivateKey@ .
csCustomCertificate :: Lens' CreateServer (Maybe Text)
csCustomCertificate = lens _csCustomCertificate (\s a -> s {_csCustomCertificate = a})

-- | The configuration management engine to use. Valid values include @ChefAutomate@ and @Puppet@ .
csEngine :: Lens' CreateServer Text
csEngine = lens _csEngine (\s a -> s {_csEngine = a})

-- | The name of the server. The server name must be unique within your AWS account, within each region. Server names must start with a letter; then letters, numbers, or hyphens (-) are allowed, up to a maximum of 40 characters.
csServerName :: Lens' CreateServer Text
csServerName = lens _csServerName (\s a -> s {_csServerName = a})

-- | The ARN of the instance profile that your Amazon EC2 instances use. Although the AWS OpsWorks console typically creates the instance profile for you, if you are using API commands instead, run the service-role-creation.yaml AWS CloudFormation template, located at https://s3.amazonaws.com/opsworks-cm-us-east-1-prod-default-assets/misc/opsworks-cm-roles.yaml. This template creates a CloudFormation stack that includes the instance profile you need.
csInstanceProfileARN :: Lens' CreateServer Text
csInstanceProfileARN = lens _csInstanceProfileARN (\s a -> s {_csInstanceProfileARN = a})

-- | The Amazon EC2 instance type to use. For example, @m5.large@ .
csInstanceType :: Lens' CreateServer Text
csInstanceType = lens _csInstanceType (\s a -> s {_csInstanceType = a})

-- | The service role that the AWS OpsWorks CM service backend uses to work with your account. Although the AWS OpsWorks management console typically creates the service role for you, if you are using the AWS CLI or API commands, run the service-role-creation.yaml AWS CloudFormation template, located at https://s3.amazonaws.com/opsworks-cm-us-east-1-prod-default-assets/misc/opsworks-cm-roles.yaml. This template creates a CloudFormation stack that includes the service role and instance profile that you need.
csServiceRoleARN :: Lens' CreateServer Text
csServiceRoleARN = lens _csServiceRoleARN (\s a -> s {_csServiceRoleARN = a})

instance AWSRequest CreateServer where
  type Rs CreateServer = CreateServerResponse
  request = postJSON opsWorksCM
  response =
    receiveJSON
      ( \s h x ->
          CreateServerResponse'
            <$> (x .?> "Server") <*> (pure (fromEnum s))
      )

instance Hashable CreateServer

instance NFData CreateServer

instance ToHeaders CreateServer where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "OpsWorksCM_V2016_11_01.CreateServer" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateServer where
  toJSON CreateServer' {..} =
    object
      ( catMaybes
          [ ("SecurityGroupIds" .=) <$> _csSecurityGroupIds,
            ("PreferredBackupWindow" .=)
              <$> _csPreferredBackupWindow,
            ("DisableAutomatedBackup" .=)
              <$> _csDisableAutomatedBackup,
            ("CustomPrivateKey" .=) <$> _csCustomPrivateKey,
            ("EngineAttributes" .=) <$> _csEngineAttributes,
            ("CustomDomain" .=) <$> _csCustomDomain,
            ("BackupId" .=) <$> _csBackupId,
            ("SubnetIds" .=) <$> _csSubnetIds,
            ("KeyPair" .=) <$> _csKeyPair,
            ("AssociatePublicIpAddress" .=)
              <$> _csAssociatePublicIPAddress,
            ("EngineVersion" .=) <$> _csEngineVersion,
            ("PreferredMaintenanceWindow" .=)
              <$> _csPreferredMaintenanceWindow,
            ("Tags" .=) <$> _csTags,
            ("BackupRetentionCount" .=)
              <$> _csBackupRetentionCount,
            ("EngineModel" .=) <$> _csEngineModel,
            ("CustomCertificate" .=) <$> _csCustomCertificate,
            Just ("Engine" .= _csEngine),
            Just ("ServerName" .= _csServerName),
            Just ("InstanceProfileArn" .= _csInstanceProfileARN),
            Just ("InstanceType" .= _csInstanceType),
            Just ("ServiceRoleArn" .= _csServiceRoleARN)
          ]
      )

instance ToPath CreateServer where
  toPath = const "/"

instance ToQuery CreateServer where
  toQuery = const mempty

-- | /See:/ 'createServerResponse' smart constructor.
data CreateServerResponse = CreateServerResponse'
  { _csrrsServer ::
      !(Maybe Server),
    _csrrsResponseStatus :: !Int
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateServerResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csrrsServer' - The server that is created by the request.
--
-- * 'csrrsResponseStatus' - -- | The response status code.
createServerResponse ::
  -- | 'csrrsResponseStatus'
  Int ->
  CreateServerResponse
createServerResponse pResponseStatus_ =
  CreateServerResponse'
    { _csrrsServer = Nothing,
      _csrrsResponseStatus = pResponseStatus_
    }

-- | The server that is created by the request.
csrrsServer :: Lens' CreateServerResponse (Maybe Server)
csrrsServer = lens _csrrsServer (\s a -> s {_csrrsServer = a})

-- | -- | The response status code.
csrrsResponseStatus :: Lens' CreateServerResponse Int
csrrsResponseStatus = lens _csrrsResponseStatus (\s a -> s {_csrrsResponseStatus = a})

instance NFData CreateServerResponse
