import aws4_request.{type Signer}
import aws_api/internal/endpoint
import aws_api/internal/metadata.{Metadata}
import aws_api/internal/request_builder
import gleam/http.{type Header}
import gleam/http/request.{type Request}
import gleam/option.{type Option}
import gleam/string

const metadata = Metadata(
  endpoint_prefix: "supportapp",
  service_id: "SupportApp",
  signing_name: "supportapp",
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

pub fn create_slack_channel_configuration(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/control/create-slack-channel-configuration"])

  let headers = [#("content-type", "application/json"), ..headers]

  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn delete_account_alias(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/control/delete-account-alias"])

  let headers = [#("content-type", "application/json"), ..headers]

  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn delete_slack_channel_configuration(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/control/delete-slack-channel-configuration"])

  let headers = [#("content-type", "application/json"), ..headers]

  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn delete_slack_workspace_configuration(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/control/delete-slack-workspace-configuration"])

  let headers = [#("content-type", "application/json"), ..headers]

  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn get_account_alias(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/control/get-account-alias"])

  let headers = [#("content-type", "application/json"), ..headers]

  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn list_slack_channel_configurations(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/control/list-slack-channel-configurations"])

  let headers = [#("content-type", "application/json"), ..headers]

  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn list_slack_workspace_configurations(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/control/list-slack-workspace-configurations"])

  let headers = [#("content-type", "application/json"), ..headers]

  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn put_account_alias(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/control/put-account-alias"])

  let headers = [#("content-type", "application/json"), ..headers]

  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn register_slack_workspace_for_organization(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/control/register-slack-workspace-for-organization"])

  let headers = [#("content-type", "application/json"), ..headers]

  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn update_slack_channel_configuration(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/control/update-slack-channel-configuration"])

  let headers = [#("content-type", "application/json"), ..headers]

  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    path,
    headers,
    query,
    option.None,
  )
}
