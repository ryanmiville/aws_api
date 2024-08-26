import aws_request/config.{type Config}
import aws_request/internal/endpoint
import aws_request/internal/metadata.{Metadata}
import aws_request/internal/request_builder.{type RequestBuilder, RequestBuilder}
import gleam/http
import gleam/http/request.{type Request}
import gleam/option.{None, Some}

const content_type = "application/x-amz-json-1.0"

const metadata = Metadata(
  endpoint_prefix: "states",
  service_id: "AWSStepFunctions",
  signing_name: "states",
  global: option.None,
)

pub opaque type Client {
  Client(builder: RequestBuilder)
}

pub fn new(config: Config) -> Client {
  let endpoint = endpoint.from(config, metadata)
  RequestBuilder(
    config.access_key_id,
    config.secret_access_key,
    metadata.service_id,
    endpoint,
  )
  |> Client
}

pub fn create_activity(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".CreateActivity"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn create_state_machine(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".CreateStateMachine"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn create_state_machine_alias(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".CreateStateMachineAlias"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn delete_activity(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".DeleteActivity"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn delete_state_machine(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".DeleteStateMachine"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn delete_state_machine_alias(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".DeleteStateMachineAlias"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn delete_state_machine_version(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".DeleteStateMachineVersion"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn describe_activity(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".DescribeActivity"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn describe_execution(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".DescribeExecution"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn describe_map_run(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".DescribeMapRun"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn describe_state_machine(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".DescribeStateMachine"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn describe_state_machine_alias(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".DescribeStateMachineAlias"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn describe_state_machine_for_execution(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".DescribeStateMachineForExecution"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn get_activity_task(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".GetActivityTask"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn get_execution_history(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".GetExecutionHistory"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn list_activities(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".ListActivities"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn list_executions(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".ListExecutions"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn list_map_runs(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".ListMapRuns"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn list_state_machine_aliases(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".ListStateMachineAliases"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn list_state_machines(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".ListStateMachines"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn list_state_machine_versions(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".ListStateMachineVersions"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
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
  let target = client.builder.service_id <> ".ListTagsForResource"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn publish_state_machine_version(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".PublishStateMachineVersion"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn redrive_execution(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".RedriveExecution"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn send_task_failure(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".SendTaskFailure"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn send_task_heartbeat(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".SendTaskHeartbeat"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn send_task_success(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".SendTaskSuccess"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn start_execution(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".StartExecution"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn start_sync_execution(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".StartSyncExecution"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn stop_execution(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".StopExecution"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn tag_resource(client: Client, request_body: BitArray) -> Request(BitArray) {
  let target = client.builder.service_id <> ".TagResource"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn test_state(client: Client, request_body: BitArray) -> Request(BitArray) {
  let target = client.builder.service_id <> ".TestState"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
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
  let target = client.builder.service_id <> ".UntagResource"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn update_map_run(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".UpdateMapRun"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn update_state_machine(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".UpdateStateMachine"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn update_state_machine_alias(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".UpdateStateMachineAlias"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn validate_state_machine_definition(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".ValidateStateMachineDefinition"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}
