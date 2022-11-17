resource "aws_iam_role" "event-bus-invoke-remote-event-bus-c20" {
  assume_role_policy  = jsonencode({
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "events.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
  })
  managed_policy_arns = ["arn:aws:iam::896206827756:policy/event_bus_invoke_remote_event_bus"]
  name                = "event-bus-invoke-remote-event-bus"
}




resource "aws_iam_policy" "event_bus_invoke_remote_event_bus-b1f" {
  name   = "event_bus_invoke_remote_event_bus"
  policy = jsonencode({
  "Statement": [
    {
      "Action": [
        "events:PutEvents"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:events:us-east-1:094724549126:event-bus/prod-stablefly-event-bus"
    }
  ],
  "Version": "2012-10-17"
  })
}




resource "aws_iam_policy" "S3SpecificReadPermission-114" {
  name   = "S3SpecificReadPermission"
  policy = jsonencode({
  "Statement": [
    {
      "Action": [
        "kms:Decrypt"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:kms:*:896206827756:key/*"
    },
    {
      "Action": [
        "s3:GetObject"
      ],
      "Effect": "Deny",
      "NotResource": [
        "arn:aws:s3:::*/*tfstate",
        "arn:aws:s3:::elasticbeanstalk*/*",
        "arn:aws:s3:::aws-emr-resources*/*",
        "arn:aws:s3:::*/896206827756*ConfigSnapshot*.json.gz"
      ]
    }
  ],
  "Version": "2012-10-17"
  })
}




resource "aws_iam_policy" "FireflyReadonlyPolicyDenyList-dd1" {
  name   = "FireflyReadonlyPolicyDenyList"
  policy = jsonencode({
  "Statement": [
    {
      "Action": [
        "acm-pca:DescribeCertificateAuthorityAuditReport",
        "athena:BatchGetQueryExecution",
        "athena:GetQueryExecution",
        "athena:GetQueryResults",
        "athena:GetQueryResultsStream",
        "athena:ListQueryExecutions",
        "auditmanager:*",
        "aws-portal:*",
        "braket:Search*",
        "cassandra:*",
        "chime:GetApp*",
        "chime:ListChannel*",
        "chime:ListChannels*",
        "chime:DescribeChannel*",
        "chime:ListApp*",
        "chime:DescribeApp*",
        "chime:GetUser*",
        "chime:ListMeeting*",
        "chime:ListMeetings*",
        "chime:GetMeeting",
        "chime:GetChannel*",
        "chime:ListGroups",
        "chime:GetPhoneNumber",
        "chime:GetSipMedia*",
        "chime:GetAccount*",
        "chime:ListDirectories",
        "chime:ListDomains",
        "chime:GetMessagingSessionEndpoint",
        "chime:ListUsers",
        "chime:GetProxySession",
        "chime:GetGlobalSettings",
        "chime:GetEventsConfiguration",
        "chime:ListAccountUsageReportData",
        "chime:ListProxySessions",
        "chime:ListAccounts",
        "chime:ListCDRBucket",
        "chime:ListCallingRegions",
        "chime:ListSipRules",
        "chime:ListAttendeeTags",
        "chime:ListSupportedPhoneNumberCountries",
        "chime:GetCDRBucket",
        "chime:GetAttendee",
        "chime:ListPhoneNumbers",
        "chime:RetrieveDataExports",
        "chime:ListAttendees",
        "chime:ListApiKeys",
        "chime:GetMediaCapturePipeline",
        "chime:SearchAvailablePhoneNumbers",
        "chime:GetTelephonyLimits",
        "chime:ListBots",
        "chime:GetRoom",
        "chime:ListMediaCapturePipelines",
        "chime:ListPhoneNumberOrders",
        "chime:GetSipRule",
        "chime:GetPhoneNumberOrder",
        "chime:GetBot",
        "chime:ValidateAccountResource",
        "chime:ListRooms",
        "chime:GetDomain",
        "chime:ListDelegates",
        "chime:GetRetentionSettings",
        "chime:ListSipMediaApplications",
        "chime:GetPhoneNumberSettings",
        "chime:ListRoomMemberships",
        "codestar:Verify*",
        "cognito-sync:QueryRecords",
        "datapipeline:EvaluateExpression",
        "datapipeline:QueryObjects",
        "datapipeline:Validate*",
        "dax:BatchGetItem",
        "dax:GetItem",
        "dax:Query",
        "dax:Scan",
        "detective:SearchGraph",
        "dms:Test*",
        "ds:Check*",
        "ds:Verify*",
        "ds:DescribeCertificate",
        "ds:ListCertificates",
        "elastictranscoder:ListJobsByPipeline",
        "elastictranscoder:ListJobsByStatus",
        "kinesisvideo:GetClip",
        "kinesisvideo:GetDASHStreamingSessionURL",
        "kinesisvideo:GetHLSStreamingSessionURL",
        "lakeformation:GetTableObjects",
        "lakeformation:GetWorkUnitResults",
        "lakeformation:GetWorkUnits",
        "license-manager:GetAccessToken",
        "license-manager:GetGrant",
        "license-manager:ListTokens",
        "lightsail:GetContainerAPIMetadata",
        "lightsail:GetContainerImages",
        "lightsail:GetContainerLog",
        "lightsail:GetDiskSnapshot",
        "lightsail:GetDiskSnapshots",
        "lightsail:GetDistributionLatestCacheReset",
        "lightsail:GetDistributionMetricData",
        "lightsail:GetExportSnapshotRecords",
        "lightsail:GetInstanceAccessDetails",
        "lightsail:GetLoadBalancerMetricData",
        "lightsail:GetRelationalDatabaseEvents",
        "lightsail:GetRelationalDatabaseLogEvents",
        "lightsail:GetRelationalDatabaseMetricData",
        "lightsail:GetRelationalDatabaseSnapshot",
        "lightsail:GetRelationalDatabaseSnapshots",
        "logs:DescribeExportTasks",
        "logs:DescribeQueries",
        "logs:GetLogEvents",
        "logs:GetLogRecord",
        "logs:GetQueryResults",
        "macie2:GetFindings",
        "macie2:GetMacieSession",
        "macie2:GetUsageStatistics",
        "macie2:GetUsageTotals",
        "macie2:ListFindings",
        "polly:SynthesizeSpeech",
        "rekognition:CompareFaces",
        "wafv2:CheckCapacity",
        "workdocs:CheckAlias",
        "workmail:Search*",
        "cognito-identity:GetCredentialsForIdentity",
        "cognito-identity:GetIdentityPoolRoles",
        "cognito-identity:GetOpenId*",
        "cognito-idp:GetSigningCertificate",
        "connect:GetFederationToken",
        "secretsmanager:GetRandomPassword",
        "secretsmanager:GetSecretValue"
      ],
      "Effect": "Deny",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
  })
}




resource "aws_iam_role" "firefly-caa-role-6cc" {
  assume_role_policy  = jsonencode({
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::094724549126:root"
      },
      "Action": "sts:AssumeRole",
      "Condition": {
        "StringEquals": {
          "sts:ExternalId": "REDACTED-BY-FIREFLY:78ffacb46456d9502c3b06bd4bf1f8d9f53b3eeba1cadfad6e97572a5ccc3525:sha256"
        }
      }
    }
  ]
  })
  managed_policy_arns = ["arn:aws:iam::896206827756:policy/FireflyReadonlyPolicyDenyList", "arn:aws:iam::896206827756:policy/S3SpecificReadPermission", "arn:aws:iam::896206827756:policy/fireflyEventDrivenRulesPermission", "arn:aws:iam::aws:policy/ReadOnlyAccess", "arn:aws:iam::aws:policy/SecurityAudit"]
  name                = "firefly-caa-role"
}




resource "aws_iam_role" "CloudFormation-Kubernetes-VPC-36a" {
  assume_role_policy  = jsonencode({
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
  })
  managed_policy_arns = ["arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole", "arn:aws:iam::aws:policy/service-role/AWSLambdaENIManagementAccess"]
  name                = "CloudFormation-Kubernetes-VPC"
}




resource "aws_iam_role" "eks-quickstart-CopyZips-4a9" {
  assume_role_policy = jsonencode({
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
  })
  name               = "eks-quickstart-CopyZips"
}




resource "aws_cloudwatch_log_group" "awslambdavmware-tanzu-application-platform--PreReqsFunction-pJQgsKQpf2cG-bb5" {
  name = "/aws/lambda/vmware-tanzu-application-platform--PreReqsFunction-pJQgsKQpf2cG"
}




resource "aws_cloudwatch_log_group" "awsquickstartvmware-tanzu-application-platform151d6340-3e1b-11ed-ac9c-06bb5d2f96a6-dc7" {
  name = "/aws/quickstart/vmware-tanzu-application-platform/151d6340-3e1b-11ed-ac9c-06bb5d2f96a6"
}




resource "aws_iam_user" "vsurvehsdyncom-154" {
  name = "vsurve@hsdyn.com"
}

