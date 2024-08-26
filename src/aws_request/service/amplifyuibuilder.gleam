import aws_request/config.{type Config}
import aws_request/internal/endpoint
import aws_request/internal/metadata.{Metadata}
import aws_request/internal/request_builder.{type RequestBuilder, RequestBuilder}
import gleam/http.{type Header}
import gleam/http/request.{type Request}
import gleam/option.{type Option}
import gleam/string

const metadata = Metadata(
  endpoint_prefix: "amplifyuibuilder",
  service_id: "AmplifyUIBuilder",
  signing_name: "amplifyuibuilder",
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

pub fn exchange_code_for_token(
  client: Client,
  provider: String,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/tokens/", provider, ""])

  let headers = [#("content-type", "application/json"), ..headers]

  request_builder.build(
    client.builder,
    http.Post,
    path,
    headers,
    query,
    option.Some(body),
  )
}

pub fn get_metadata(
  client: Client,
  app_id: String,
  environment_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/app/",
      app_id,
      "/environment/",
      environment_name,
      "/metadata",
    ])

  let headers = [#("content-type", "application/json"), ..headers]

  request_builder.build(
    client.builder,
    http.Get,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn list_tags_for_resource(
  client: Client,
  resource_arn: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/tags/", resource_arn, ""])

  let headers = [#("content-type", "application/json"), ..headers]

  request_builder.build(
    client.builder,
    http.Get,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn put_metadata_flag(
  client: Client,
  app_id: String,
  environment_name: String,
  feature_name: String,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/app/",
      app_id,
      "/environment/",
      environment_name,
      "/metadata/features/",
      feature_name,
      "",
    ])

  let headers = [#("content-type", "application/json"), ..headers]

  request_builder.build(
    client.builder,
    http.Put,
    path,
    headers,
    query,
    option.Some(body),
  )
}

pub fn refresh_token(
  client: Client,
  provider: String,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/tokens/", provider, "/refresh"])

  let headers = [#("content-type", "application/json"), ..headers]

  request_builder.build(
    client.builder,
    http.Post,
    path,
    headers,
    query,
    option.Some(body),
  )
}

pub fn tag_resource(
  client: Client,
  resource_arn: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/tags/", resource_arn, ""])

  let headers = [#("content-type", "application/json"), ..headers]

  request_builder.build(
    client.builder,
    http.Post,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn untag_resource(
  client: Client,
  resource_arn: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/tags/", resource_arn, ""])

  let headers = [#("content-type", "application/json"), ..headers]

  request_builder.build(
    client.builder,
    http.Delete,
    path,
    headers,
    query,
    option.None,
  )
}