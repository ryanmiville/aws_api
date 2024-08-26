import aws_request/config.{type Config}
import aws_request/internal/endpoint
import aws_request/internal/metadata.{Metadata}
import aws_request/internal/request_builder.{type RequestBuilder, RequestBuilder}
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
    client.builder,
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
    client.builder,
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
    client.builder,
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
    client.builder,
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
    client.builder,
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
    client.builder,
    http.Post,
    path,
    headers,
    query,
    option.Some(body),
  )
}
