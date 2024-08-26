import aws_request/config.{type Config}
import aws_request/internal/endpoint
import aws_request/internal/metadata.{Metadata}
import aws_request/internal/request_builder.{type RequestBuilder, RequestBuilder}
import gleam/bit_array
import gleam/http.{type Header}
import gleam/http/request.{type Request}
import gleam/int
import gleam/option.{type Option, Some}

const content_type = "application/x-www-form-urlencoded"

const metadata = Metadata(
  endpoint_prefix: "redshift",
  service_id: "RedshiftServiceVersion20121201",
  signing_name: "redshift",
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

pub fn accept_reserved_node_exchange(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn add_partner(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn associate_data_share_consumer(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn authorize_cluster_security_group_ingress(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn authorize_data_share(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn authorize_endpoint_access(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn authorize_snapshot_access(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn batch_delete_cluster_snapshots(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn batch_modify_cluster_snapshots(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn cancel_resize(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn copy_cluster_snapshot(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn create_authentication_profile(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn create_cluster(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn create_cluster_parameter_group(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn create_cluster_security_group(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn create_cluster_snapshot(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn create_cluster_subnet_group(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn create_custom_domain_association(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn create_endpoint_access(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn create_event_subscription(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn create_hsm_client_certificate(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn create_hsm_configuration(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn create_redshift_idc_application(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn create_scheduled_action(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn create_snapshot_copy_grant(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn create_snapshot_schedule(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn create_tags(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn create_usage_limit(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn deauthorize_data_share(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn delete_authentication_profile(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn delete_cluster(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn delete_cluster_parameter_group(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn delete_cluster_security_group(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn delete_cluster_snapshot(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn delete_cluster_subnet_group(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn delete_custom_domain_association(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn delete_endpoint_access(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn delete_event_subscription(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn delete_hsm_client_certificate(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn delete_hsm_configuration(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn delete_partner(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn delete_redshift_idc_application(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn delete_resource_policy(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn delete_scheduled_action(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn delete_snapshot_copy_grant(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn delete_snapshot_schedule(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn delete_tags(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn delete_usage_limit(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn describe_account_attributes(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn describe_authentication_profiles(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn describe_cluster_db_revisions(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn describe_cluster_parameter_groups(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn describe_cluster_parameters(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn describe_clusters(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn describe_cluster_security_groups(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn describe_cluster_snapshots(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn describe_cluster_subnet_groups(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn describe_cluster_tracks(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn describe_cluster_versions(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn describe_custom_domain_associations(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn describe_data_shares(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn describe_data_shares_for_consumer(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn describe_data_shares_for_producer(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn describe_default_cluster_parameters(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn describe_endpoint_access(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn describe_endpoint_authorization(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn describe_event_categories(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn describe_events(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn describe_event_subscriptions(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn describe_hsm_client_certificates(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn describe_hsm_configurations(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn describe_inbound_integrations(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn describe_logging_status(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn describe_node_configuration_options(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn describe_orderable_cluster_options(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn describe_partners(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn describe_redshift_idc_applications(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn describe_reserved_node_exchange_status(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn describe_reserved_node_offerings(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn describe_reserved_nodes(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn describe_resize(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn describe_scheduled_actions(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn describe_snapshot_copy_grants(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn describe_snapshot_schedules(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn describe_storage(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn describe_table_restore_status(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn describe_tags(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn describe_usage_limits(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn disable_logging(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn disable_snapshot_copy(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn disassociate_data_share_consumer(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn enable_logging(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn enable_snapshot_copy(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn failover_primary_compute(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn get_cluster_credentials(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn get_cluster_credentials_with_iam(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn get_reserved_node_exchange_configuration_options(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn get_reserved_node_exchange_offerings(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn get_resource_policy(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn list_recommendations(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn modify_aqua_configuration(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn modify_authentication_profile(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn modify_cluster(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn modify_cluster_db_revision(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn modify_cluster_iam_roles(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn modify_cluster_maintenance(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn modify_cluster_parameter_group(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn modify_cluster_snapshot(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn modify_cluster_snapshot_schedule(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn modify_cluster_subnet_group(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn modify_custom_domain_association(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn modify_endpoint_access(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn modify_event_subscription(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn modify_redshift_idc_application(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn modify_scheduled_action(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn modify_snapshot_copy_retention_period(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn modify_snapshot_schedule(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn modify_usage_limit(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn pause_cluster(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn purchase_reserved_node_offering(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn put_resource_policy(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn reboot_cluster(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn reject_data_share(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn reset_cluster_parameter_group(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn resize_cluster(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn restore_from_cluster_snapshot(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn restore_table_from_cluster_snapshot(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn resume_cluster(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn revoke_cluster_security_group_ingress(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn revoke_endpoint_access(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn revoke_snapshot_access(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn rotate_encryption_key(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}

pub fn update_partner_status(
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
    client.builder,
    http.Post,
    "",
    headers,
    query,
    Some(body),
  )
}
