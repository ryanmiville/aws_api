import aws4_request.{type Signer}
import aws_request/internal/endpoint
import aws_request/internal/metadata.{Metadata}
import aws_request/internal/request_builder
import gleam/bit_array
import gleam/http.{type Header}
import gleam/http/request.{type Request}
import gleam/int
import gleam/option.{type Option, Some}

const content_type = "application/x-www-form-urlencoded"

const metadata = Metadata(
  endpoint_prefix: "cloudformation",
  service_id: "CloudFormation",
  signing_name: "cloudformation",
  global: option.None,
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

pub fn activate_organizations_access(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn activate_type(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn batch_describe_type_configurations(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn cancel_update_stack(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn continue_update_rollback(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn create_change_set(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn create_generated_template(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn create_stack(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn create_stack_instances(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn create_stack_set(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn deactivate_organizations_access(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn deactivate_type(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn delete_change_set(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn delete_generated_template(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn delete_stack(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn delete_stack_instances(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn delete_stack_set(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn deregister_type(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn describe_account_limits(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn describe_change_set(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn describe_change_set_hooks(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn describe_generated_template(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn describe_organizations_access(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn describe_publisher(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn describe_resource_scan(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn describe_stack_drift_detection_status(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn describe_stack_events(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn describe_stack_instance(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn describe_stack_resource(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn describe_stack_resource_drifts(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn describe_stack_resources(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn describe_stacks(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn describe_stack_set(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn describe_stack_set_operation(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn describe_type(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn describe_type_registration(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn detect_stack_drift(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn detect_stack_resource_drift(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn detect_stack_set_drift(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn estimate_template_cost(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn execute_change_set(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn get_generated_template(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn get_stack_policy(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn get_template(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn get_template_summary(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn import_stacks_to_stack_set(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn list_change_sets(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn list_exports(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn list_generated_templates(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn list_imports(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn list_resource_scan_related_resources(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn list_resource_scan_resources(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn list_resource_scans(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn list_stack_instance_resource_drifts(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn list_stack_instances(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn list_stack_resources(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn list_stacks(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn list_stack_set_auto_deployment_targets(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn list_stack_set_operation_results(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn list_stack_set_operations(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn list_stack_sets(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn list_type_registrations(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn list_types(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn list_type_versions(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn publish_type(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn record_handler_progress(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn register_publisher(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn register_type(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn rollback_stack(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn set_stack_policy(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn set_type_configuration(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn set_type_default_version(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn signal_resource(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn start_resource_scan(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn stop_stack_set_operation(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn test_type(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn update_generated_template(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn update_stack(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn update_stack_instances(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn update_stack_set(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn update_termination_protection(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn validate_template(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let content_length = bit_array.byte_size(body) |> int.to_string
  let headers = [
    #("content-type", content_type),
    #("content-length", content_length),
    ..headers
  ]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}
