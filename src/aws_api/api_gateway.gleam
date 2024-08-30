import aws4_request.{type Signer}
import aws_api/internal/endpoint
import aws_api/internal/metadata.{Metadata}
import aws_api/internal/request_builder
import gleam/http.{type Header}
import gleam/http/request.{type Request}
import gleam/option.{type Option}
import gleam/string

const metadata = Metadata(
  endpoint_prefix: "apigateway",
  service_id: "BackplaneControlService",
  signing_name: "apigateway",
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

pub fn create_api_key(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/apikeys"])

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

pub fn create_authorizer(
  client: Client,
  rest_api_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/restapis/", rest_api_id, "/authorizers"])

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

pub fn create_base_path_mapping(
  client: Client,
  domain_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/domainnames/", domain_name, "/basepathmappings"])

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

pub fn create_deployment(
  client: Client,
  rest_api_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/restapis/", rest_api_id, "/deployments"])

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

pub fn create_documentation_part(
  client: Client,
  rest_api_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/restapis/", rest_api_id, "/documentation/parts"])

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

pub fn create_documentation_version(
  client: Client,
  rest_api_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/restapis/", rest_api_id, "/documentation/versions"])

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

pub fn create_domain_name(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/domainnames"])

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

pub fn create_model(
  client: Client,
  rest_api_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/restapis/", rest_api_id, "/models"])

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

pub fn create_request_validator(
  client: Client,
  rest_api_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/restapis/", rest_api_id, "/requestvalidators"])

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

pub fn create_resource(
  client: Client,
  rest_api_id: String,
  parent_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/restapis/", rest_api_id, "/resources/", parent_id, ""])

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

pub fn create_rest_api(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/restapis"])

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

pub fn create_stage(
  client: Client,
  rest_api_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/restapis/", rest_api_id, "/stages"])

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

pub fn create_usage_plan(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/usageplans"])

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

pub fn create_usage_plan_key(
  client: Client,
  usage_plan_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/usageplans/", usage_plan_id, "/keys"])

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

pub fn create_vpc_link(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/vpclinks"])

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

pub fn delete_api_key(
  client: Client,
  api_key: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/apikeys/", api_key, ""])

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

pub fn delete_authorizer(
  client: Client,
  rest_api_id: String,
  authorizer_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/restapis/",
      rest_api_id,
      "/authorizers/",
      authorizer_id,
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

pub fn delete_base_path_mapping(
  client: Client,
  domain_name: String,
  base_path: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/domainnames/",
      domain_name,
      "/basepathmappings/",
      base_path,
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

pub fn delete_client_certificate(
  client: Client,
  client_certificate_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/clientcertificates/", client_certificate_id, ""])

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

pub fn delete_deployment(
  client: Client,
  rest_api_id: String,
  deployment_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/restapis/",
      rest_api_id,
      "/deployments/",
      deployment_id,
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

pub fn delete_documentation_part(
  client: Client,
  rest_api_id: String,
  documentation_part_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/restapis/",
      rest_api_id,
      "/documentation/parts/",
      documentation_part_id,
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

pub fn delete_documentation_version(
  client: Client,
  rest_api_id: String,
  documentation_version: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/restapis/",
      rest_api_id,
      "/documentation/versions/",
      documentation_version,
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

pub fn delete_domain_name(
  client: Client,
  domain_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/domainnames/", domain_name, ""])

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

pub fn delete_gateway_response(
  client: Client,
  rest_api_id: String,
  response_type: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/restapis/",
      rest_api_id,
      "/gatewayresponses/",
      response_type,
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

pub fn delete_integration(
  client: Client,
  rest_api_id: String,
  resource_id: String,
  http_method: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/restapis/",
      rest_api_id,
      "/resources/",
      resource_id,
      "/methods/",
      http_method,
      "/integration",
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

pub fn delete_integration_response(
  client: Client,
  rest_api_id: String,
  resource_id: String,
  http_method: String,
  status_code: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/restapis/",
      rest_api_id,
      "/resources/",
      resource_id,
      "/methods/",
      http_method,
      "/integration/responses/",
      status_code,
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

pub fn delete_method(
  client: Client,
  rest_api_id: String,
  resource_id: String,
  http_method: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/restapis/",
      rest_api_id,
      "/resources/",
      resource_id,
      "/methods/",
      http_method,
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

pub fn delete_method_response(
  client: Client,
  rest_api_id: String,
  resource_id: String,
  http_method: String,
  status_code: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/restapis/",
      rest_api_id,
      "/resources/",
      resource_id,
      "/methods/",
      http_method,
      "/responses/",
      status_code,
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

pub fn delete_model(
  client: Client,
  rest_api_id: String,
  model_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/restapis/", rest_api_id, "/models/", model_name, ""])

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

pub fn delete_request_validator(
  client: Client,
  rest_api_id: String,
  request_validator_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/restapis/",
      rest_api_id,
      "/requestvalidators/",
      request_validator_id,
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

pub fn delete_resource(
  client: Client,
  rest_api_id: String,
  resource_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/restapis/", rest_api_id, "/resources/", resource_id, ""])

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

pub fn delete_rest_api(
  client: Client,
  rest_api_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/restapis/", rest_api_id, ""])

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

pub fn delete_stage(
  client: Client,
  rest_api_id: String,
  stage_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/restapis/", rest_api_id, "/stages/", stage_name, ""])

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

pub fn delete_usage_plan(
  client: Client,
  usage_plan_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/usageplans/", usage_plan_id, ""])

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

pub fn delete_usage_plan_key(
  client: Client,
  usage_plan_id: String,
  key_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/usageplans/", usage_plan_id, "/keys/", key_id, ""])

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

pub fn delete_vpc_link(
  client: Client,
  vpc_link_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/vpclinks/", vpc_link_id, ""])

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

pub fn flush_stage_authorizers_cache(
  client: Client,
  rest_api_id: String,
  stage_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/restapis/",
      rest_api_id,
      "/stages/",
      stage_name,
      "/cache/authorizers",
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

pub fn flush_stage_cache(
  client: Client,
  rest_api_id: String,
  stage_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/restapis/",
      rest_api_id,
      "/stages/",
      stage_name,
      "/cache/data",
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

pub fn generate_client_certificate(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/clientcertificates"])

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

pub fn get_account(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/account"])

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

pub fn get_api_key(
  client: Client,
  api_key: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/apikeys/", api_key, ""])

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

pub fn get_api_keys(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/apikeys"])

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

pub fn get_authorizer(
  client: Client,
  rest_api_id: String,
  authorizer_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/restapis/",
      rest_api_id,
      "/authorizers/",
      authorizer_id,
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

pub fn get_authorizers(
  client: Client,
  rest_api_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/restapis/", rest_api_id, "/authorizers"])

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

pub fn get_base_path_mapping(
  client: Client,
  domain_name: String,
  base_path: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/domainnames/",
      domain_name,
      "/basepathmappings/",
      base_path,
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

pub fn get_base_path_mappings(
  client: Client,
  domain_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/domainnames/", domain_name, "/basepathmappings"])

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

pub fn get_client_certificate(
  client: Client,
  client_certificate_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/clientcertificates/", client_certificate_id, ""])

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

pub fn get_client_certificates(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/clientcertificates"])

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

pub fn get_deployment(
  client: Client,
  rest_api_id: String,
  deployment_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/restapis/",
      rest_api_id,
      "/deployments/",
      deployment_id,
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

pub fn get_deployments(
  client: Client,
  rest_api_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/restapis/", rest_api_id, "/deployments"])

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

pub fn get_documentation_part(
  client: Client,
  rest_api_id: String,
  documentation_part_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/restapis/",
      rest_api_id,
      "/documentation/parts/",
      documentation_part_id,
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

pub fn get_documentation_parts(
  client: Client,
  rest_api_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/restapis/", rest_api_id, "/documentation/parts"])

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

pub fn get_documentation_version(
  client: Client,
  rest_api_id: String,
  documentation_version: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/restapis/",
      rest_api_id,
      "/documentation/versions/",
      documentation_version,
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

pub fn get_documentation_versions(
  client: Client,
  rest_api_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/restapis/", rest_api_id, "/documentation/versions"])

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

pub fn get_domain_name(
  client: Client,
  domain_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/domainnames/", domain_name, ""])

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

pub fn get_domain_names(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/domainnames"])

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

pub fn get_export(
  client: Client,
  rest_api_id: String,
  stage_name: String,
  export_type: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/restapis/",
      rest_api_id,
      "/stages/",
      stage_name,
      "/exports/",
      export_type,
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

pub fn get_gateway_response(
  client: Client,
  rest_api_id: String,
  response_type: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/restapis/",
      rest_api_id,
      "/gatewayresponses/",
      response_type,
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

pub fn get_gateway_responses(
  client: Client,
  rest_api_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/restapis/", rest_api_id, "/gatewayresponses"])

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

pub fn get_integration(
  client: Client,
  rest_api_id: String,
  resource_id: String,
  http_method: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/restapis/",
      rest_api_id,
      "/resources/",
      resource_id,
      "/methods/",
      http_method,
      "/integration",
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

pub fn get_integration_response(
  client: Client,
  rest_api_id: String,
  resource_id: String,
  http_method: String,
  status_code: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/restapis/",
      rest_api_id,
      "/resources/",
      resource_id,
      "/methods/",
      http_method,
      "/integration/responses/",
      status_code,
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

pub fn get_method(
  client: Client,
  rest_api_id: String,
  resource_id: String,
  http_method: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/restapis/",
      rest_api_id,
      "/resources/",
      resource_id,
      "/methods/",
      http_method,
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

pub fn get_method_response(
  client: Client,
  rest_api_id: String,
  resource_id: String,
  http_method: String,
  status_code: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/restapis/",
      rest_api_id,
      "/resources/",
      resource_id,
      "/methods/",
      http_method,
      "/responses/",
      status_code,
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

pub fn get_model(
  client: Client,
  rest_api_id: String,
  model_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/restapis/", rest_api_id, "/models/", model_name, ""])

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

pub fn get_models(
  client: Client,
  rest_api_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/restapis/", rest_api_id, "/models"])

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

pub fn get_model_template(
  client: Client,
  rest_api_id: String,
  model_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/restapis/",
      rest_api_id,
      "/models/",
      model_name,
      "/default_template",
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

pub fn get_request_validator(
  client: Client,
  rest_api_id: String,
  request_validator_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/restapis/",
      rest_api_id,
      "/requestvalidators/",
      request_validator_id,
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

pub fn get_request_validators(
  client: Client,
  rest_api_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/restapis/", rest_api_id, "/requestvalidators"])

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

pub fn get_resource(
  client: Client,
  rest_api_id: String,
  resource_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/restapis/", rest_api_id, "/resources/", resource_id, ""])

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

pub fn get_resources(
  client: Client,
  rest_api_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/restapis/", rest_api_id, "/resources"])

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

pub fn get_rest_api(
  client: Client,
  rest_api_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/restapis/", rest_api_id, ""])

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

pub fn get_rest_apis(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/restapis"])

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

pub fn get_sdk(
  client: Client,
  rest_api_id: String,
  stage_name: String,
  sdk_type: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/restapis/",
      rest_api_id,
      "/stages/",
      stage_name,
      "/sdks/",
      sdk_type,
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

pub fn get_sdk_type(
  client: Client,
  id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/sdktypes/", id, ""])

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

pub fn get_sdk_types(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/sdktypes"])

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

pub fn get_stage(
  client: Client,
  rest_api_id: String,
  stage_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/restapis/", rest_api_id, "/stages/", stage_name, ""])

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

pub fn get_stages(
  client: Client,
  rest_api_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/restapis/", rest_api_id, "/stages"])

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

pub fn get_tags(
  client: Client,
  resource_arn: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/tags/", resource_arn, ""])

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

pub fn get_usage(
  client: Client,
  usage_plan_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/usageplans/", usage_plan_id, "/usage"])

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

pub fn get_usage_plan(
  client: Client,
  usage_plan_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/usageplans/", usage_plan_id, ""])

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

pub fn get_usage_plan_key(
  client: Client,
  usage_plan_id: String,
  key_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/usageplans/", usage_plan_id, "/keys/", key_id, ""])

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

pub fn get_usage_plan_keys(
  client: Client,
  usage_plan_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/usageplans/", usage_plan_id, "/keys"])

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

pub fn get_usage_plans(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/usageplans"])

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

pub fn get_vpc_link(
  client: Client,
  vpc_link_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/vpclinks/", vpc_link_id, ""])

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

pub fn get_vpc_links(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/vpclinks"])

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

pub fn import_api_keys(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/apikeys?mode=import"])

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

pub fn import_documentation_parts(
  client: Client,
  rest_api_id: String,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/restapis/", rest_api_id, "/documentation/parts"])

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

pub fn import_rest_api(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/restapis?mode=import"])

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

pub fn put_gateway_response(
  client: Client,
  rest_api_id: String,
  response_type: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/restapis/",
      rest_api_id,
      "/gatewayresponses/",
      response_type,
      "",
    ])

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

pub fn put_integration(
  client: Client,
  rest_api_id: String,
  resource_id: String,
  http_method: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/restapis/",
      rest_api_id,
      "/resources/",
      resource_id,
      "/methods/",
      http_method,
      "/integration",
    ])

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

pub fn put_integration_response(
  client: Client,
  rest_api_id: String,
  resource_id: String,
  http_method: String,
  status_code: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/restapis/",
      rest_api_id,
      "/resources/",
      resource_id,
      "/methods/",
      http_method,
      "/integration/responses/",
      status_code,
      "",
    ])

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

pub fn put_method(
  client: Client,
  rest_api_id: String,
  resource_id: String,
  http_method: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/restapis/",
      rest_api_id,
      "/resources/",
      resource_id,
      "/methods/",
      http_method,
      "",
    ])

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

pub fn put_method_response(
  client: Client,
  rest_api_id: String,
  resource_id: String,
  http_method: String,
  status_code: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/restapis/",
      rest_api_id,
      "/resources/",
      resource_id,
      "/methods/",
      http_method,
      "/responses/",
      status_code,
      "",
    ])

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

pub fn put_rest_api(
  client: Client,
  rest_api_id: String,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/restapis/", rest_api_id, ""])

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

pub fn tag_resource(
  client: Client,
  resource_arn: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/tags/", resource_arn, ""])

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

pub fn test_invoke_authorizer(
  client: Client,
  rest_api_id: String,
  authorizer_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/restapis/",
      rest_api_id,
      "/authorizers/",
      authorizer_id,
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

pub fn test_invoke_method(
  client: Client,
  rest_api_id: String,
  resource_id: String,
  http_method: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/restapis/",
      rest_api_id,
      "/resources/",
      resource_id,
      "/methods/",
      http_method,
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

pub fn untag_resource(
  client: Client,
  resource_arn: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/tags/", resource_arn, ""])

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

pub fn update_account(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/account"])

  let headers = [#("content-type", "application/json"), ..headers]

  request_builder.build(
    client.signer,
    client.endpoint,
    http.Patch,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn update_api_key(
  client: Client,
  api_key: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/apikeys/", api_key, ""])

  let headers = [#("content-type", "application/json"), ..headers]

  request_builder.build(
    client.signer,
    client.endpoint,
    http.Patch,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn update_authorizer(
  client: Client,
  rest_api_id: String,
  authorizer_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/restapis/",
      rest_api_id,
      "/authorizers/",
      authorizer_id,
      "",
    ])

  let headers = [#("content-type", "application/json"), ..headers]

  request_builder.build(
    client.signer,
    client.endpoint,
    http.Patch,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn update_base_path_mapping(
  client: Client,
  domain_name: String,
  base_path: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/domainnames/",
      domain_name,
      "/basepathmappings/",
      base_path,
      "",
    ])

  let headers = [#("content-type", "application/json"), ..headers]

  request_builder.build(
    client.signer,
    client.endpoint,
    http.Patch,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn update_client_certificate(
  client: Client,
  client_certificate_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/clientcertificates/", client_certificate_id, ""])

  let headers = [#("content-type", "application/json"), ..headers]

  request_builder.build(
    client.signer,
    client.endpoint,
    http.Patch,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn update_deployment(
  client: Client,
  rest_api_id: String,
  deployment_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/restapis/",
      rest_api_id,
      "/deployments/",
      deployment_id,
      "",
    ])

  let headers = [#("content-type", "application/json"), ..headers]

  request_builder.build(
    client.signer,
    client.endpoint,
    http.Patch,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn update_documentation_part(
  client: Client,
  rest_api_id: String,
  documentation_part_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/restapis/",
      rest_api_id,
      "/documentation/parts/",
      documentation_part_id,
      "",
    ])

  let headers = [#("content-type", "application/json"), ..headers]

  request_builder.build(
    client.signer,
    client.endpoint,
    http.Patch,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn update_documentation_version(
  client: Client,
  rest_api_id: String,
  documentation_version: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/restapis/",
      rest_api_id,
      "/documentation/versions/",
      documentation_version,
      "",
    ])

  let headers = [#("content-type", "application/json"), ..headers]

  request_builder.build(
    client.signer,
    client.endpoint,
    http.Patch,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn update_domain_name(
  client: Client,
  domain_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/domainnames/", domain_name, ""])

  let headers = [#("content-type", "application/json"), ..headers]

  request_builder.build(
    client.signer,
    client.endpoint,
    http.Patch,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn update_gateway_response(
  client: Client,
  rest_api_id: String,
  response_type: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/restapis/",
      rest_api_id,
      "/gatewayresponses/",
      response_type,
      "",
    ])

  let headers = [#("content-type", "application/json"), ..headers]

  request_builder.build(
    client.signer,
    client.endpoint,
    http.Patch,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn update_integration(
  client: Client,
  rest_api_id: String,
  resource_id: String,
  http_method: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/restapis/",
      rest_api_id,
      "/resources/",
      resource_id,
      "/methods/",
      http_method,
      "/integration",
    ])

  let headers = [#("content-type", "application/json"), ..headers]

  request_builder.build(
    client.signer,
    client.endpoint,
    http.Patch,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn update_integration_response(
  client: Client,
  rest_api_id: String,
  resource_id: String,
  http_method: String,
  status_code: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/restapis/",
      rest_api_id,
      "/resources/",
      resource_id,
      "/methods/",
      http_method,
      "/integration/responses/",
      status_code,
      "",
    ])

  let headers = [#("content-type", "application/json"), ..headers]

  request_builder.build(
    client.signer,
    client.endpoint,
    http.Patch,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn update_method(
  client: Client,
  rest_api_id: String,
  resource_id: String,
  http_method: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/restapis/",
      rest_api_id,
      "/resources/",
      resource_id,
      "/methods/",
      http_method,
      "",
    ])

  let headers = [#("content-type", "application/json"), ..headers]

  request_builder.build(
    client.signer,
    client.endpoint,
    http.Patch,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn update_method_response(
  client: Client,
  rest_api_id: String,
  resource_id: String,
  http_method: String,
  status_code: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/restapis/",
      rest_api_id,
      "/resources/",
      resource_id,
      "/methods/",
      http_method,
      "/responses/",
      status_code,
      "",
    ])

  let headers = [#("content-type", "application/json"), ..headers]

  request_builder.build(
    client.signer,
    client.endpoint,
    http.Patch,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn update_model(
  client: Client,
  rest_api_id: String,
  model_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/restapis/", rest_api_id, "/models/", model_name, ""])

  let headers = [#("content-type", "application/json"), ..headers]

  request_builder.build(
    client.signer,
    client.endpoint,
    http.Patch,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn update_request_validator(
  client: Client,
  rest_api_id: String,
  request_validator_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/restapis/",
      rest_api_id,
      "/requestvalidators/",
      request_validator_id,
      "",
    ])

  let headers = [#("content-type", "application/json"), ..headers]

  request_builder.build(
    client.signer,
    client.endpoint,
    http.Patch,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn update_resource(
  client: Client,
  rest_api_id: String,
  resource_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/restapis/", rest_api_id, "/resources/", resource_id, ""])

  let headers = [#("content-type", "application/json"), ..headers]

  request_builder.build(
    client.signer,
    client.endpoint,
    http.Patch,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn update_rest_api(
  client: Client,
  rest_api_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/restapis/", rest_api_id, ""])

  let headers = [#("content-type", "application/json"), ..headers]

  request_builder.build(
    client.signer,
    client.endpoint,
    http.Patch,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn update_stage(
  client: Client,
  rest_api_id: String,
  stage_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/restapis/", rest_api_id, "/stages/", stage_name, ""])

  let headers = [#("content-type", "application/json"), ..headers]

  request_builder.build(
    client.signer,
    client.endpoint,
    http.Patch,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn update_usage(
  client: Client,
  usage_plan_id: String,
  key_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/usageplans/", usage_plan_id, "/keys/", key_id, "/usage"])

  let headers = [#("content-type", "application/json"), ..headers]

  request_builder.build(
    client.signer,
    client.endpoint,
    http.Patch,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn update_usage_plan(
  client: Client,
  usage_plan_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/usageplans/", usage_plan_id, ""])

  let headers = [#("content-type", "application/json"), ..headers]

  request_builder.build(
    client.signer,
    client.endpoint,
    http.Patch,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn update_vpc_link(
  client: Client,
  vpc_link_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/vpclinks/", vpc_link_id, ""])

  let headers = [#("content-type", "application/json"), ..headers]

  request_builder.build(
    client.signer,
    client.endpoint,
    http.Patch,
    path,
    headers,
    query,
    option.None,
  )
}
