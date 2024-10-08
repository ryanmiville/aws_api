import aws4_request.{type Signer}
import aws_api/internal/endpoint
import aws_api/internal/metadata.{Metadata}
import aws_api/internal/request_builder
import gleam/http.{type Header}
import gleam/http/request.{type Request}
import gleam/option.{type Option}
import gleam/string

const metadata = Metadata(
  endpoint_prefix: "glacier",
  service_id: "Glacier",
  signing_name: "glacier",
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

pub fn abort_multipart_upload(
  client: Client,
  account_id: String,
  vault_name: String,
  upload_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/",
      account_id,
      "/vaults/",
      vault_name,
      "/multipart-uploads/",
      upload_id,
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

pub fn abort_vault_lock(
  client: Client,
  account_id: String,
  vault_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/", account_id, "/vaults/", vault_name, "/lock-policy"])

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

pub fn add_tags_to_vault(
  client: Client,
  account_id: String,
  vault_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/",
      account_id,
      "/vaults/",
      vault_name,
      "/tags?operation=add",
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

pub fn complete_multipart_upload(
  client: Client,
  account_id: String,
  vault_name: String,
  upload_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/",
      account_id,
      "/vaults/",
      vault_name,
      "/multipart-uploads/",
      upload_id,
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

pub fn complete_vault_lock(
  client: Client,
  account_id: String,
  vault_name: String,
  lock_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/",
      account_id,
      "/vaults/",
      vault_name,
      "/lock-policy/",
      lock_id,
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

pub fn create_vault(
  client: Client,
  account_id: String,
  vault_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", account_id, "/vaults/", vault_name, ""])

  let headers = [#("content-type", "application/json"), ..headers]

  request_builder.build(
    client.signer,
    client.endpoint,
    http.Put,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn delete_archive(
  client: Client,
  account_id: String,
  vault_name: String,
  archive_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/",
      account_id,
      "/vaults/",
      vault_name,
      "/archives/",
      archive_id,
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

pub fn delete_vault(
  client: Client,
  account_id: String,
  vault_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", account_id, "/vaults/", vault_name, ""])

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

pub fn delete_vault_access_policy(
  client: Client,
  account_id: String,
  vault_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/", account_id, "/vaults/", vault_name, "/access-policy"])

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

pub fn delete_vault_notifications(
  client: Client,
  account_id: String,
  vault_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/",
      account_id,
      "/vaults/",
      vault_name,
      "/notification-configuration",
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

pub fn describe_job(
  client: Client,
  account_id: String,
  vault_name: String,
  job_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/",
      account_id,
      "/vaults/",
      vault_name,
      "/jobs/",
      job_id,
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

pub fn describe_vault(
  client: Client,
  account_id: String,
  vault_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", account_id, "/vaults/", vault_name, ""])

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

pub fn get_data_retrieval_policy(
  client: Client,
  account_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", account_id, "/policies/data-retrieval"])

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

pub fn get_job_output(
  client: Client,
  account_id: String,
  vault_name: String,
  job_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/",
      account_id,
      "/vaults/",
      vault_name,
      "/jobs/",
      job_id,
      "/output",
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

pub fn get_vault_access_policy(
  client: Client,
  account_id: String,
  vault_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/", account_id, "/vaults/", vault_name, "/access-policy"])

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

pub fn get_vault_lock(
  client: Client,
  account_id: String,
  vault_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/", account_id, "/vaults/", vault_name, "/lock-policy"])

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

pub fn get_vault_notifications(
  client: Client,
  account_id: String,
  vault_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/",
      account_id,
      "/vaults/",
      vault_name,
      "/notification-configuration",
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

pub fn initiate_job(
  client: Client,
  account_id: String,
  vault_name: String,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", account_id, "/vaults/", vault_name, "/jobs"])

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

pub fn initiate_multipart_upload(
  client: Client,
  account_id: String,
  vault_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/",
      account_id,
      "/vaults/",
      vault_name,
      "/multipart-uploads",
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

pub fn initiate_vault_lock(
  client: Client,
  account_id: String,
  vault_name: String,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/", account_id, "/vaults/", vault_name, "/lock-policy"])

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

pub fn list_jobs(
  client: Client,
  account_id: String,
  vault_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", account_id, "/vaults/", vault_name, "/jobs"])

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

pub fn list_multipart_uploads(
  client: Client,
  account_id: String,
  vault_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/",
      account_id,
      "/vaults/",
      vault_name,
      "/multipart-uploads",
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

pub fn list_parts(
  client: Client,
  account_id: String,
  vault_name: String,
  upload_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/",
      account_id,
      "/vaults/",
      vault_name,
      "/multipart-uploads/",
      upload_id,
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

pub fn list_provisioned_capacity(
  client: Client,
  account_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", account_id, "/provisioned-capacity"])

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

pub fn list_tags_for_vault(
  client: Client,
  account_id: String,
  vault_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", account_id, "/vaults/", vault_name, "/tags"])

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

pub fn list_vaults(
  client: Client,
  account_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", account_id, "/vaults"])

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

pub fn purchase_provisioned_capacity(
  client: Client,
  account_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", account_id, "/provisioned-capacity"])

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

pub fn remove_tags_from_vault(
  client: Client,
  account_id: String,
  vault_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/",
      account_id,
      "/vaults/",
      vault_name,
      "/tags?operation=remove",
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

pub fn set_data_retrieval_policy(
  client: Client,
  account_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", account_id, "/policies/data-retrieval"])

  let headers = [#("content-type", "application/json"), ..headers]

  request_builder.build(
    client.signer,
    client.endpoint,
    http.Put,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn set_vault_access_policy(
  client: Client,
  account_id: String,
  vault_name: String,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/", account_id, "/vaults/", vault_name, "/access-policy"])

  let headers = [#("content-type", "application/json"), ..headers]

  request_builder.build(
    client.signer,
    client.endpoint,
    http.Put,
    path,
    headers,
    query,
    option.Some(body),
  )
}

pub fn set_vault_notifications(
  client: Client,
  account_id: String,
  vault_name: String,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/",
      account_id,
      "/vaults/",
      vault_name,
      "/notification-configuration",
    ])

  let headers = [#("content-type", "application/json"), ..headers]

  request_builder.build(
    client.signer,
    client.endpoint,
    http.Put,
    path,
    headers,
    query,
    option.Some(body),
  )
}

pub fn upload_archive(
  client: Client,
  account_id: String,
  vault_name: String,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/", account_id, "/vaults/", vault_name, "/archives"])

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

pub fn upload_multipart_part(
  client: Client,
  account_id: String,
  vault_name: String,
  upload_id: String,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/",
      account_id,
      "/vaults/",
      vault_name,
      "/multipart-uploads/",
      upload_id,
      "",
    ])

  let headers = [#("content-type", "application/octet-stream"), ..headers]

  request_builder.build(
    client.signer,
    client.endpoint,
    http.Put,
    path,
    headers,
    query,
    option.Some(body),
  )
}
