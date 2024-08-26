import aws_request/config.{type Config}
import aws_request/internal/endpoint
import aws_request/internal/metadata.{Metadata}
import aws_request/internal/request_builder.{type RequestBuilder, RequestBuilder}
import gleam/http.{type Header}
import gleam/http/request.{type Request}
import gleam/option.{type Option}
import gleam/string

const metadata = Metadata(
  endpoint_prefix: "rds-data",
  service_id: "RdsDataService",
  signing_name: "rds-data",
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

pub fn batch_execute_statement(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/BatchExecute"])

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

pub fn begin_transaction(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/BeginTransaction"])

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

pub fn commit_transaction(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/CommitTransaction"])

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

pub fn execute_sql(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/ExecuteSql"])

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

pub fn execute_statement(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/Execute"])

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

pub fn rollback_transaction(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/RollbackTransaction"])

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
