import aws_request/config.{type Config}
import aws_request/internal/endpoint
import aws_request/internal/metadata.{Metadata}
import aws_request/internal/request_builder.{type RequestBuilder, RequestBuilder}
import gleam/http.{type Header}
import gleam/http/request.{type Request}
import gleam/option.{type Option}
import gleam/string

const metadata = Metadata(
  endpoint_prefix: "signer",
  service_id: "WallabyService",
  signing_name: "signer",
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

pub fn add_profile_permission(
  client: Client,
  profile_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/signing-profiles/", profile_name, "/permissions"])

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

pub fn cancel_signing_profile(
  client: Client,
  profile_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/signing-profiles/", profile_name, ""])

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

pub fn describe_signing_job(
  client: Client,
  job_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/signing-jobs/", job_id, ""])

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

pub fn get_revocation_status(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/revocations"])

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

pub fn get_signing_platform(
  client: Client,
  platform_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/signing-platforms/", platform_id, ""])

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

pub fn get_signing_profile(
  client: Client,
  profile_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/signing-profiles/", profile_name, ""])

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

pub fn list_profile_permissions(
  client: Client,
  profile_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/signing-profiles/", profile_name, "/permissions"])

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

pub fn list_signing_jobs(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/signing-jobs"])

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

pub fn list_signing_platforms(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/signing-platforms"])

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

pub fn list_signing_profiles(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/signing-profiles"])

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

pub fn put_signing_profile(
  client: Client,
  profile_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/signing-profiles/", profile_name, ""])

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

pub fn remove_profile_permission(
  client: Client,
  profile_name: String,
  statement_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/signing-profiles/",
      profile_name,
      "/permissions/",
      statement_id,
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

pub fn revoke_signature(
  client: Client,
  job_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/signing-jobs/", job_id, "/revoke"])

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

pub fn revoke_signing_profile(
  client: Client,
  profile_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/signing-profiles/", profile_name, "/revoke"])

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

pub fn sign_payload(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/signing-jobs/with-payload"])

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

pub fn start_signing_job(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/signing-jobs"])

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
