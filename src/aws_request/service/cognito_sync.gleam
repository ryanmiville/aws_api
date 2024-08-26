import aws_request/config.{type Config}
import aws_request/internal/endpoint
import aws_request/internal/metadata.{Metadata}
import aws_request/internal/request_builder.{type RequestBuilder, RequestBuilder}
import gleam/http.{type Header}
import gleam/http/request.{type Request}
import gleam/option.{type Option}
import gleam/string

const metadata = Metadata(
  endpoint_prefix: "cognito-sync",
  service_id: "AWSCognitoSyncService",
  signing_name: "cognito-sync",
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

pub fn bulk_publish(
  client: Client,
  identity_pool_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/identitypools/", identity_pool_id, "/bulkpublish"])

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

pub fn delete_dataset(
  client: Client,
  identity_pool_id: String,
  identity_id: String,
  dataset_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/identitypools/",
      identity_pool_id,
      "/identities/",
      identity_id,
      "/datasets/",
      dataset_name,
      "",
    ])

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

pub fn describe_dataset(
  client: Client,
  identity_pool_id: String,
  identity_id: String,
  dataset_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/identitypools/",
      identity_pool_id,
      "/identities/",
      identity_id,
      "/datasets/",
      dataset_name,
      "",
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

pub fn describe_identity_pool_usage(
  client: Client,
  identity_pool_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/identitypools/", identity_pool_id, ""])

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

pub fn describe_identity_usage(
  client: Client,
  identity_pool_id: String,
  identity_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/identitypools/",
      identity_pool_id,
      "/identities/",
      identity_id,
      "",
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

pub fn get_bulk_publish_details(
  client: Client,
  identity_pool_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/identitypools/",
      identity_pool_id,
      "/getBulkPublishDetails",
    ])

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

pub fn get_cognito_events(
  client: Client,
  identity_pool_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/identitypools/", identity_pool_id, "/events"])

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

pub fn get_identity_pool_configuration(
  client: Client,
  identity_pool_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/identitypools/", identity_pool_id, "/configuration"])

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

pub fn list_datasets(
  client: Client,
  identity_pool_id: String,
  identity_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/identitypools/",
      identity_pool_id,
      "/identities/",
      identity_id,
      "/datasets",
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

pub fn list_identity_pool_usage(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/identitypools"])

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

pub fn list_records(
  client: Client,
  identity_pool_id: String,
  identity_id: String,
  dataset_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/identitypools/",
      identity_pool_id,
      "/identities/",
      identity_id,
      "/datasets/",
      dataset_name,
      "/records",
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

pub fn register_device(
  client: Client,
  identity_pool_id: String,
  identity_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/identitypools/",
      identity_pool_id,
      "/identity/",
      identity_id,
      "/device",
    ])

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

pub fn set_cognito_events(
  client: Client,
  identity_pool_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/identitypools/", identity_pool_id, "/events"])

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

pub fn set_identity_pool_configuration(
  client: Client,
  identity_pool_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/identitypools/", identity_pool_id, "/configuration"])

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

pub fn subscribe_to_dataset(
  client: Client,
  identity_pool_id: String,
  identity_id: String,
  dataset_name: String,
  device_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/identitypools/",
      identity_pool_id,
      "/identities/",
      identity_id,
      "/datasets/",
      dataset_name,
      "/subscriptions/",
      device_id,
      "",
    ])

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

pub fn unsubscribe_from_dataset(
  client: Client,
  identity_pool_id: String,
  identity_id: String,
  dataset_name: String,
  device_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/identitypools/",
      identity_pool_id,
      "/identities/",
      identity_id,
      "/datasets/",
      dataset_name,
      "/subscriptions/",
      device_id,
      "",
    ])

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

pub fn update_records(
  client: Client,
  identity_pool_id: String,
  identity_id: String,
  dataset_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/identitypools/",
      identity_pool_id,
      "/identities/",
      identity_id,
      "/datasets/",
      dataset_name,
      "",
    ])

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
