import aws_request/config.{type Config}
import aws_request/internal/endpoint
import aws_request/internal/metadata.{Metadata}
import aws_request/internal/request_builder.{type RequestBuilder, RequestBuilder}
import gleam/http.{type Header}
import gleam/http/request.{type Request}
import gleam/option.{type Option}
import gleam/string

const metadata = Metadata(
  endpoint_prefix: "vpc-lattice",
  service_id: "MercuryControlPlane",
  signing_name: "vpc-lattice",
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

pub fn batch_update_rule(
  client: Client,
  service_identifier: String,
  listener_identifier: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/services/",
      service_identifier,
      "/listeners/",
      listener_identifier,
      "/rules",
    ])

  let headers = [#("content-type", "application/json"), ..headers]

  request_builder.build(
    client.builder,
    http.Patch,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn delete_auth_policy(
  client: Client,
  resource_identifier: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/authpolicy/", resource_identifier, ""])

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

pub fn delete_resource_policy(
  client: Client,
  resource_arn: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/resourcepolicy/", resource_arn, ""])

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

pub fn get_auth_policy(
  client: Client,
  resource_identifier: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/authpolicy/", resource_identifier, ""])

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

pub fn get_resource_policy(
  client: Client,
  resource_arn: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/resourcepolicy/", resource_arn, ""])

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

pub fn put_auth_policy(
  client: Client,
  resource_identifier: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/authpolicy/", resource_identifier, ""])

  let headers = [#("content-type", "application/json"), ..headers]

  request_builder.build(
    client.builder,
    http.Put,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn put_resource_policy(
  client: Client,
  resource_arn: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/resourcepolicy/", resource_arn, ""])

  let headers = [#("content-type", "application/json"), ..headers]

  request_builder.build(
    client.builder,
    http.Put,
    path,
    headers,
    query,
    option.None,
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