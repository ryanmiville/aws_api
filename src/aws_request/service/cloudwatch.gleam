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
  endpoint_prefix: "monitoring",
  service_id: "GraniteServiceVersion20100801",
  signing_name: "monitoring",
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

pub fn delete_alarms(
  client: Client,
  body: BitArray,
  headers: List(Header),
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

pub fn delete_anomaly_detector(
  client: Client,
  body: BitArray,
  headers: List(Header),
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

pub fn delete_dashboards(
  client: Client,
  body: BitArray,
  headers: List(Header),
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

pub fn delete_insight_rules(
  client: Client,
  body: BitArray,
  headers: List(Header),
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

pub fn delete_metric_stream(
  client: Client,
  body: BitArray,
  headers: List(Header),
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

pub fn describe_alarm_history(
  client: Client,
  body: BitArray,
  headers: List(Header),
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

pub fn describe_alarms(
  client: Client,
  body: BitArray,
  headers: List(Header),
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

pub fn describe_alarms_for_metric(
  client: Client,
  body: BitArray,
  headers: List(Header),
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

pub fn describe_anomaly_detectors(
  client: Client,
  body: BitArray,
  headers: List(Header),
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

pub fn describe_insight_rules(
  client: Client,
  body: BitArray,
  headers: List(Header),
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

pub fn disable_alarm_actions(
  client: Client,
  body: BitArray,
  headers: List(Header),
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

pub fn disable_insight_rules(
  client: Client,
  body: BitArray,
  headers: List(Header),
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

pub fn enable_alarm_actions(
  client: Client,
  body: BitArray,
  headers: List(Header),
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

pub fn enable_insight_rules(
  client: Client,
  body: BitArray,
  headers: List(Header),
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

pub fn get_dashboard(
  client: Client,
  body: BitArray,
  headers: List(Header),
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

pub fn get_insight_rule_report(
  client: Client,
  body: BitArray,
  headers: List(Header),
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

pub fn get_metric_data(
  client: Client,
  body: BitArray,
  headers: List(Header),
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

pub fn get_metric_statistics(
  client: Client,
  body: BitArray,
  headers: List(Header),
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

pub fn get_metric_stream(
  client: Client,
  body: BitArray,
  headers: List(Header),
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

pub fn get_metric_widget_image(
  client: Client,
  body: BitArray,
  headers: List(Header),
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

pub fn list_dashboards(
  client: Client,
  body: BitArray,
  headers: List(Header),
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

pub fn list_managed_insight_rules(
  client: Client,
  body: BitArray,
  headers: List(Header),
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

pub fn list_metrics(
  client: Client,
  body: BitArray,
  headers: List(Header),
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

pub fn list_metric_streams(
  client: Client,
  body: BitArray,
  headers: List(Header),
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

pub fn list_tags_for_resource(
  client: Client,
  body: BitArray,
  headers: List(Header),
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

pub fn put_anomaly_detector(
  client: Client,
  body: BitArray,
  headers: List(Header),
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

pub fn put_composite_alarm(
  client: Client,
  body: BitArray,
  headers: List(Header),
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

pub fn put_dashboard(
  client: Client,
  body: BitArray,
  headers: List(Header),
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

pub fn put_insight_rule(
  client: Client,
  body: BitArray,
  headers: List(Header),
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

pub fn put_managed_insight_rules(
  client: Client,
  body: BitArray,
  headers: List(Header),
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

pub fn put_metric_alarm(
  client: Client,
  body: BitArray,
  headers: List(Header),
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

pub fn put_metric_data(
  client: Client,
  body: BitArray,
  headers: List(Header),
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

pub fn put_metric_stream(
  client: Client,
  body: BitArray,
  headers: List(Header),
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

pub fn set_alarm_state(
  client: Client,
  body: BitArray,
  headers: List(Header),
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

pub fn start_metric_streams(
  client: Client,
  body: BitArray,
  headers: List(Header),
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

pub fn stop_metric_streams(
  client: Client,
  body: BitArray,
  headers: List(Header),
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

pub fn tag_resource(
  client: Client,
  body: BitArray,
  headers: List(Header),
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

pub fn untag_resource(
  client: Client,
  body: BitArray,
  headers: List(Header),
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
