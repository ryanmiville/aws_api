import aws_request/config.{type Config}
import aws_request/internal/endpoint
import aws_request/internal/metadata.{Metadata}
import aws_request/internal/request_builder.{type RequestBuilder, RequestBuilder}
import gleam/http
import gleam/http/request.{type Request}
import gleam/option.{None, Some}

const content_type = "application/x-amz-json-1.0"

const metadata = Metadata(
  endpoint_prefix: "sqs",
  service_id: "AmazonSQS",
  signing_name: "sqs",
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

pub fn add_permission(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".AddPermission"
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

pub fn cancel_message_move_task(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".CancelMessageMoveTask"
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

pub fn change_message_visibility(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".ChangeMessageVisibility"
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

pub fn change_message_visibility_batch(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".ChangeMessageVisibilityBatch"
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

pub fn create_queue(client: Client, request_body: BitArray) -> Request(BitArray) {
  let target = client.builder.service_id <> ".CreateQueue"
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

pub fn delete_message(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".DeleteMessage"
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

pub fn delete_message_batch(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".DeleteMessageBatch"
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

pub fn delete_queue(client: Client, request_body: BitArray) -> Request(BitArray) {
  let target = client.builder.service_id <> ".DeleteQueue"
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

pub fn get_queue_attributes(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".GetQueueAttributes"
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

pub fn get_queue_url(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".GetQueueUrl"
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

pub fn list_dead_letter_source_queues(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".ListDeadLetterSourceQueues"
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

pub fn list_message_move_tasks(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".ListMessageMoveTasks"
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

pub fn list_queues(client: Client, request_body: BitArray) -> Request(BitArray) {
  let target = client.builder.service_id <> ".ListQueues"
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

pub fn list_queue_tags(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".ListQueueTags"
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

pub fn purge_queue(client: Client, request_body: BitArray) -> Request(BitArray) {
  let target = client.builder.service_id <> ".PurgeQueue"
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

pub fn receive_message(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".ReceiveMessage"
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

pub fn remove_permission(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".RemovePermission"
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

pub fn send_message(client: Client, request_body: BitArray) -> Request(BitArray) {
  let target = client.builder.service_id <> ".SendMessage"
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

pub fn send_message_batch(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".SendMessageBatch"
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

pub fn set_queue_attributes(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".SetQueueAttributes"
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

pub fn start_message_move_task(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".StartMessageMoveTask"
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

pub fn tag_queue(client: Client, request_body: BitArray) -> Request(BitArray) {
  let target = client.builder.service_id <> ".TagQueue"
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

pub fn untag_queue(client: Client, request_body: BitArray) -> Request(BitArray) {
  let target = client.builder.service_id <> ".UntagQueue"
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
