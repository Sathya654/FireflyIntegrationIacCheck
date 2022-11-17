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
  managed_policy_arns = ["${aws_iam_policy.event_bus_invoke_remote_event_bus-b1f.arn}"]
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

