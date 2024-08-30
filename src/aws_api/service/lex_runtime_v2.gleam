import aws4_request.{type Signer}
import aws_api/internal/endpoint
import aws_api/internal/metadata.{Metadata}
import aws_api/internal/request_builder
import gleam/http.{type Header}
import gleam/http/request.{type Request}
import gleam/option.{type Option}
import gleam/string

const metadata = Metadata(
  endpoint_prefix: "runtime-v2-lex",
  service_id: "AWSDeepSenseRunTimeServiceApi2_0",
  signing_name: "lex",
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

pub fn delete_session(
  client: Client,
  bot_id: String,
  bot_alias_id: String,
  locale_id: String,
  session_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/bots/",
      bot_id,
      "/botAliases/",
      bot_alias_id,
      "/botLocales/",
      locale_id,
      "/sessions/",
      session_id,
      "",
    ])

  let headers = [#("content-type", "application/json"), ..headers]

  request_builder.build(
    client.signer,
    client.endpoint,
    http.Delete,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn get_session(
  client: Client,
  bot_id: String,
  bot_alias_id: String,
  locale_id: String,
  session_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/bots/",
      bot_id,
      "/botAliases/",
      bot_alias_id,
      "/botLocales/",
      locale_id,
      "/sessions/",
      session_id,
      "",
    ])

  let headers = [#("content-type", "application/json"), ..headers]

  request_builder.build(
    client.signer,
    client.endpoint,
    http.Get,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn put_session(
  client: Client,
  bot_id: String,
  bot_alias_id: String,
  locale_id: String,
  session_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/bots/",
      bot_id,
      "/botAliases/",
      bot_alias_id,
      "/botLocales/",
      locale_id,
      "/sessions/",
      session_id,
      "",
    ])

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

pub fn recognize_text(
  client: Client,
  bot_id: String,
  bot_alias_id: String,
  locale_id: String,
  session_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/bots/",
      bot_id,
      "/botAliases/",
      bot_alias_id,
      "/botLocales/",
      locale_id,
      "/sessions/",
      session_id,
      "/text",
    ])

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

pub fn recognize_utterance(
  client: Client,
  bot_id: String,
  bot_alias_id: String,
  locale_id: String,
  session_id: String,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/bots/",
      bot_id,
      "/botAliases/",
      bot_alias_id,
      "/botLocales/",
      locale_id,
      "/sessions/",
      session_id,
      "/utterance",
    ])

  let headers = [#("content-type", "application/octet-stream"), ..headers]

  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    path,
    headers,
    query,
    option.Some(body),
  )
}

pub fn start_conversation(
  client: Client,
  bot_id: String,
  bot_alias_id: String,
  locale_id: String,
  session_id: String,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/bots/",
      bot_id,
      "/botAliases/",
      bot_alias_id,
      "/botLocales/",
      locale_id,
      "/sessions/",
      session_id,
      "/conversation",
    ])

  let headers = [#("content-type", "application/json"), ..headers]

  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    path,
    headers,
    query,
    option.Some(body),
  )
}
