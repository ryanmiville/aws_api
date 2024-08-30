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
  endpoint_prefix: "email",
  service_id: "SimpleEmailService",
  signing_name: "ses",
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

pub fn clone_receipt_rule_set(
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

pub fn create_configuration_set(
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

pub fn create_configuration_set_event_destination(
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

pub fn create_configuration_set_tracking_options(
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

pub fn create_custom_verification_email_template(
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

pub fn create_receipt_filter(
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

pub fn create_receipt_rule(
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

pub fn create_receipt_rule_set(
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

pub fn create_template(
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

pub fn delete_configuration_set(
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

pub fn delete_configuration_set_event_destination(
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

pub fn delete_configuration_set_tracking_options(
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

pub fn delete_custom_verification_email_template(
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

pub fn delete_identity(
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

pub fn delete_identity_policy(
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

pub fn delete_receipt_filter(
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

pub fn delete_receipt_rule(
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

pub fn delete_receipt_rule_set(
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

pub fn delete_template(
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

pub fn delete_verified_email_address(
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

pub fn describe_active_receipt_rule_set(
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

pub fn describe_configuration_set(
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

pub fn describe_receipt_rule(
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

pub fn describe_receipt_rule_set(
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

pub fn get_account_sending_enabled(
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

pub fn get_custom_verification_email_template(
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

pub fn get_identity_dkim_attributes(
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

pub fn get_identity_mail_from_domain_attributes(
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

pub fn get_identity_notification_attributes(
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

pub fn get_identity_policies(
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

pub fn get_identity_verification_attributes(
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

pub fn get_send_quota(
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

pub fn get_send_statistics(
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

pub fn list_configuration_sets(
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

pub fn list_custom_verification_email_templates(
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

pub fn list_identities(
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

pub fn list_identity_policies(
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

pub fn list_receipt_filters(
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

pub fn list_receipt_rule_sets(
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

pub fn list_templates(
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

pub fn list_verified_email_addresses(
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

pub fn put_configuration_set_delivery_options(
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

pub fn put_identity_policy(
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

pub fn reorder_receipt_rule_set(
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

pub fn send_bounce(
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

pub fn send_bulk_templated_email(
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

pub fn send_custom_verification_email(
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

pub fn send_email(
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

pub fn send_raw_email(
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

pub fn send_templated_email(
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

pub fn set_active_receipt_rule_set(
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

pub fn set_identity_dkim_enabled(
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

pub fn set_identity_feedback_forwarding_enabled(
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

pub fn set_identity_headers_in_notifications_enabled(
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

pub fn set_identity_mail_from_domain(
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

pub fn set_identity_notification_topic(
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

pub fn set_receipt_rule_position(
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

pub fn test_render_template(
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

pub fn update_account_sending_enabled(
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

pub fn update_configuration_set_event_destination(
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

pub fn update_configuration_set_reputation_metrics_enabled(
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

pub fn update_configuration_set_sending_enabled(
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

pub fn update_configuration_set_tracking_options(
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

pub fn update_custom_verification_email_template(
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

pub fn update_receipt_rule(
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

pub fn update_template(
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

pub fn verify_domain_dkim(
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

pub fn verify_domain_identity(
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

pub fn verify_email_address(
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

pub fn verify_email_identity(
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
