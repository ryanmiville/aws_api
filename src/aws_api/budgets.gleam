import aws4_request.{type Signer}
import aws_api/internal/endpoint
import aws_api/internal/metadata.{Metadata}
import aws_api/internal/request_builder
import gleam/http
import gleam/http/request.{type Request}
import gleam/option.{None, Some}

const content_type = "application/x-amz-json-1.1"

const metadata = Metadata(
  endpoint_prefix: "budgets",
  service_id: "AWSBudgetServiceGateway",
  signing_name: "budgets",
  global: option.Some(metadata.Global("us-east-1", "budgets.amazonaws.com")),
)

pub opaque type Client {
  Client(signer: Signer, endpoint: String)
}

pub fn new(
  access_key_id access_key_id: String,
  secret_access_key secret_access_key: String,
  region region: String,
) -> Client {
  let signer =
    aws4_request.signer(
      access_key_id:,
      secret_access_key:,
      region:,
      service: metadata.signing_name,
    )
  let #(signer, endpoint) = endpoint.resolve(signer, metadata)
  Client(signer:, endpoint:)
}

pub fn with_custom_endpoint(client: Client, custom_endpoint: String) -> Client {
  Client(..client, endpoint: custom_endpoint)
}

pub fn create_budget(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".CreateBudget"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn create_budget_action(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".CreateBudgetAction"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn create_notification(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".CreateNotification"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn create_subscriber(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".CreateSubscriber"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn delete_budget(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DeleteBudget"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn delete_budget_action(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DeleteBudgetAction"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn delete_notification(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DeleteNotification"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn delete_subscriber(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DeleteSubscriber"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn describe_budget(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DescribeBudget"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn describe_budget_action(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DescribeBudgetAction"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn describe_budget_action_histories(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DescribeBudgetActionHistories"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn describe_budget_actions_for_account(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DescribeBudgetActionsForAccount"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn describe_budget_actions_for_budget(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DescribeBudgetActionsForBudget"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn describe_budget_notifications_for_account(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DescribeBudgetNotificationsForAccount"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn describe_budget_performance_history(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DescribeBudgetPerformanceHistory"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn describe_budgets(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DescribeBudgets"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn describe_notifications_for_budget(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DescribeNotificationsForBudget"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn describe_subscribers_for_notification(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DescribeSubscribersForNotification"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn execute_budget_action(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".ExecuteBudgetAction"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn list_tags_for_resource(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".ListTagsForResource"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn tag_resource(client: Client, request_body: BitArray) -> Request(BitArray) {
  let target = metadata.service_id <> ".TagResource"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn untag_resource(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".UntagResource"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn update_budget(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".UpdateBudget"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn update_budget_action(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".UpdateBudgetAction"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn update_notification(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".UpdateNotification"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn update_subscriber(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".UpdateSubscriber"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}
