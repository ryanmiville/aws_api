import aws_request/config.{type Config}
import aws_request/internal/endpoint
import aws_request/internal/metadata.{Metadata}
import aws_request/internal/request_builder.{type RequestBuilder, RequestBuilder}
import gleam/http.{type Header}
import gleam/http/request.{type Request}
import gleam/option.{type Option}
import gleam/string

const metadata = Metadata(
  endpoint_prefix: "connect-campaigns",
  service_id: "AmazonConnectCampaignService",
  signing_name: "connect-campaigns",
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

pub fn create_campaign(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/campaigns"])

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

pub fn delete_campaign(
  client: Client,
  id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/campaigns/", id, ""])

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

pub fn delete_connect_instance_config(
  client: Client,
  connect_instance_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/connect-instance/", connect_instance_id, "/config"])

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

pub fn delete_instance_onboarding_job(
  client: Client,
  connect_instance_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/connect-instance/", connect_instance_id, "/onboarding"])

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

pub fn describe_campaign(
  client: Client,
  id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/campaigns/", id, ""])

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

pub fn get_campaign_state(
  client: Client,
  id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/campaigns/", id, "/state"])

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

pub fn get_campaign_state_batch(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/campaigns-state"])

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

pub fn get_connect_instance_config(
  client: Client,
  connect_instance_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/connect-instance/", connect_instance_id, "/config"])

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

pub fn get_instance_onboarding_job_status(
  client: Client,
  connect_instance_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/connect-instance/", connect_instance_id, "/onboarding"])

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

pub fn list_campaigns(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/campaigns-summary"])

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

pub fn list_tags_for_resource(
  client: Client,
  arn: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/tags/", arn, ""])

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

pub fn pause_campaign(
  client: Client,
  id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/campaigns/", id, "/pause"])

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

pub fn put_dial_request_batch(
  client: Client,
  id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/campaigns/", id, "/dial-requests"])

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

pub fn resume_campaign(
  client: Client,
  id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/campaigns/", id, "/resume"])

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

pub fn start_campaign(
  client: Client,
  id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/campaigns/", id, "/start"])

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

pub fn start_instance_onboarding_job(
  client: Client,
  connect_instance_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/connect-instance/", connect_instance_id, "/onboarding"])

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

pub fn stop_campaign(
  client: Client,
  id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/campaigns/", id, "/stop"])

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
  arn: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/tags/", arn, ""])

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
  arn: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/tags/", arn, ""])

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

pub fn update_campaign_dialer_config(
  client: Client,
  id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/campaigns/", id, "/dialer-config"])

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

pub fn update_campaign_name(
  client: Client,
  id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/campaigns/", id, "/name"])

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

pub fn update_campaign_outbound_call_config(
  client: Client,
  id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/campaigns/", id, "/outbound-call-config"])

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
