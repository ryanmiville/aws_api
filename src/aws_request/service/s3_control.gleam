import aws_request/config.{type Config}
import aws_request/internal/endpoint
import aws_request/internal/metadata.{Metadata}
import aws_request/internal/request_builder.{type RequestBuilder, RequestBuilder}
import gleam/http.{type Header}
import gleam/http/request.{type Request}
import gleam/option.{type Option}
import gleam/string

const metadata = Metadata(
  endpoint_prefix: "s3-control",
  service_id: "AWSS3ControlServiceV20180820",
  signing_name: "s3",
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

pub fn associate_access_grants_identity_center(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v20180820/accessgrantsinstance/identitycenter"])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Post,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn create_access_grant(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v20180820/accessgrantsinstance/grant"])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Post,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn create_access_grants_instance(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v20180820/accessgrantsinstance"])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Post,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn create_access_grants_location(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v20180820/accessgrantsinstance/location"])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Post,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn create_access_point(
  client: Client,
  name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v20180820/accesspoint/", name, ""])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Put,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn create_access_point_for_object_lambda(
  client: Client,
  name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v20180820/accesspointforobjectlambda/", name, ""])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Put,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn create_bucket(
  client: Client,
  bucket: String,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v20180820/bucket/", bucket, ""])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Put,
    path,
    headers,
    query,
    option.Some(body),
  )
}

pub fn create_job(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v20180820/jobs"])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Post,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn create_multi_region_access_point(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v20180820/async-requests/mrap/create"])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Post,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn create_storage_lens_group(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v20180820/storagelensgroup"])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Post,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn delete_access_grant(
  client: Client,
  access_grant_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/v20180820/accessgrantsinstance/grant/",
      access_grant_id,
      "",
    ])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Delete,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn delete_access_grants_instance(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v20180820/accessgrantsinstance"])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Delete,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn delete_access_grants_instance_resource_policy(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v20180820/accessgrantsinstance/resourcepolicy"])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Delete,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn delete_access_grants_location(
  client: Client,
  access_grants_location_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/v20180820/accessgrantsinstance/location/",
      access_grants_location_id,
      "",
    ])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Delete,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn delete_access_point(
  client: Client,
  name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v20180820/accesspoint/", name, ""])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Delete,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn delete_access_point_for_object_lambda(
  client: Client,
  name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v20180820/accesspointforobjectlambda/", name, ""])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Delete,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn delete_access_point_policy(
  client: Client,
  name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v20180820/accesspoint/", name, "/policy"])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Delete,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn delete_access_point_policy_for_object_lambda(
  client: Client,
  name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/v20180820/accesspointforobjectlambda/", name, "/policy"])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Delete,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn delete_bucket(
  client: Client,
  bucket: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v20180820/bucket/", bucket, ""])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Delete,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn delete_bucket_lifecycle_configuration(
  client: Client,
  bucket: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/v20180820/bucket/", bucket, "/lifecycleconfiguration"])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Delete,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn delete_bucket_policy(
  client: Client,
  bucket: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v20180820/bucket/", bucket, "/policy"])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Delete,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn delete_bucket_replication(
  client: Client,
  bucket: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v20180820/bucket/", bucket, "/replication"])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Delete,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn delete_bucket_tagging(
  client: Client,
  bucket: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v20180820/bucket/", bucket, "/tagging"])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Delete,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn delete_job_tagging(
  client: Client,
  job_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v20180820/jobs/", job_id, "/tagging"])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Delete,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn delete_multi_region_access_point(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v20180820/async-requests/mrap/delete"])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Post,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn delete_public_access_block(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v20180820/configuration/publicAccessBlock"])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Delete,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn delete_storage_lens_configuration(
  client: Client,
  config_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v20180820/storagelens/", config_id, ""])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Delete,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn delete_storage_lens_configuration_tagging(
  client: Client,
  config_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v20180820/storagelens/", config_id, "/tagging"])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Delete,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn delete_storage_lens_group(
  client: Client,
  name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v20180820/storagelensgroup/", name, ""])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Delete,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn describe_job(
  client: Client,
  job_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v20180820/jobs/", job_id, ""])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Get,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn describe_multi_region_access_point_operation(
  client: Client,
  request_token_arn: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/v20180820/async-requests/mrap/", request_token_arn, ""])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Get,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn dissociate_access_grants_identity_center(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v20180820/accessgrantsinstance/identitycenter"])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Delete,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn get_access_grant(
  client: Client,
  access_grant_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/v20180820/accessgrantsinstance/grant/",
      access_grant_id,
      "",
    ])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Get,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn get_access_grants_instance(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v20180820/accessgrantsinstance"])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Get,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn get_access_grants_instance_for_prefix(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v20180820/accessgrantsinstance/prefix"])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Get,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn get_access_grants_instance_resource_policy(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v20180820/accessgrantsinstance/resourcepolicy"])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Get,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn get_access_grants_location(
  client: Client,
  access_grants_location_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/v20180820/accessgrantsinstance/location/",
      access_grants_location_id,
      "",
    ])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Get,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn get_access_point(
  client: Client,
  name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v20180820/accesspoint/", name, ""])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Get,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn get_access_point_configuration_for_object_lambda(
  client: Client,
  name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/v20180820/accesspointforobjectlambda/",
      name,
      "/configuration",
    ])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Get,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn get_access_point_for_object_lambda(
  client: Client,
  name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v20180820/accesspointforobjectlambda/", name, ""])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Get,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn get_access_point_policy(
  client: Client,
  name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v20180820/accesspoint/", name, "/policy"])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Get,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn get_access_point_policy_for_object_lambda(
  client: Client,
  name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/v20180820/accesspointforobjectlambda/", name, "/policy"])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Get,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn get_access_point_policy_status(
  client: Client,
  name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v20180820/accesspoint/", name, "/policyStatus"])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Get,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn get_access_point_policy_status_for_object_lambda(
  client: Client,
  name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/v20180820/accesspointforobjectlambda/",
      name,
      "/policyStatus",
    ])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Get,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn get_bucket(
  client: Client,
  bucket: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v20180820/bucket/", bucket, ""])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Get,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn get_bucket_lifecycle_configuration(
  client: Client,
  bucket: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/v20180820/bucket/", bucket, "/lifecycleconfiguration"])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Get,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn get_bucket_policy(
  client: Client,
  bucket: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v20180820/bucket/", bucket, "/policy"])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Get,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn get_bucket_replication(
  client: Client,
  bucket: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v20180820/bucket/", bucket, "/replication"])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Get,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn get_bucket_tagging(
  client: Client,
  bucket: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v20180820/bucket/", bucket, "/tagging"])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Get,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn get_bucket_versioning(
  client: Client,
  bucket: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v20180820/bucket/", bucket, "/versioning"])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Get,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn get_data_access(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v20180820/accessgrantsinstance/dataaccess"])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Get,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn get_job_tagging(
  client: Client,
  job_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v20180820/jobs/", job_id, "/tagging"])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Get,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn get_multi_region_access_point(
  client: Client,
  name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v20180820/mrap/instances/", name, ""])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Get,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn get_multi_region_access_point_policy(
  client: Client,
  name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v20180820/mrap/instances/", name, "/policy"])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Get,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn get_multi_region_access_point_policy_status(
  client: Client,
  name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/v20180820/mrap/instances/", name, "/policystatus"])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Get,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn get_multi_region_access_point_routes(
  client: Client,
  mrap: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v20180820/mrap/instances/", mrap, "/routes"])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Get,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn get_public_access_block(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v20180820/configuration/publicAccessBlock"])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Get,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn get_storage_lens_configuration(
  client: Client,
  config_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v20180820/storagelens/", config_id, ""])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Get,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn get_storage_lens_configuration_tagging(
  client: Client,
  config_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v20180820/storagelens/", config_id, "/tagging"])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Get,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn get_storage_lens_group(
  client: Client,
  name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v20180820/storagelensgroup/", name, ""])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Get,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn list_access_grants(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v20180820/accessgrantsinstance/grants"])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Get,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn list_access_grants_instances(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v20180820/accessgrantsinstances"])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Get,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn list_access_grants_locations(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v20180820/accessgrantsinstance/locations"])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Get,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn list_access_points(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v20180820/accesspoint"])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Get,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn list_access_points_for_object_lambda(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v20180820/accesspointforobjectlambda"])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Get,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn list_jobs(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v20180820/jobs"])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Get,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn list_multi_region_access_points(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v20180820/mrap/instances"])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Get,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn list_regional_buckets(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v20180820/bucket"])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Get,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn list_storage_lens_configurations(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v20180820/storagelens"])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Get,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn list_storage_lens_groups(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v20180820/storagelensgroup"])

  let headers = [#("content-type", "application/xml"), ..headers]

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
  let path = string.concat(["/v20180820/tags/", resource_arn, ""])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Get,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn put_access_grants_instance_resource_policy(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v20180820/accessgrantsinstance/resourcepolicy"])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Put,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn put_access_point_configuration_for_object_lambda(
  client: Client,
  name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/v20180820/accesspointforobjectlambda/",
      name,
      "/configuration",
    ])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Put,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn put_access_point_policy(
  client: Client,
  name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v20180820/accesspoint/", name, "/policy"])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Put,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn put_access_point_policy_for_object_lambda(
  client: Client,
  name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/v20180820/accesspointforobjectlambda/", name, "/policy"])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Put,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn put_bucket_lifecycle_configuration(
  client: Client,
  bucket: String,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/v20180820/bucket/", bucket, "/lifecycleconfiguration"])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Put,
    path,
    headers,
    query,
    option.Some(body),
  )
}

pub fn put_bucket_policy(
  client: Client,
  bucket: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v20180820/bucket/", bucket, "/policy"])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Put,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn put_bucket_replication(
  client: Client,
  bucket: String,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v20180820/bucket/", bucket, "/replication"])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Put,
    path,
    headers,
    query,
    option.Some(body),
  )
}

pub fn put_bucket_tagging(
  client: Client,
  bucket: String,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v20180820/bucket/", bucket, "/tagging"])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Put,
    path,
    headers,
    query,
    option.Some(body),
  )
}

pub fn put_bucket_versioning(
  client: Client,
  bucket: String,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v20180820/bucket/", bucket, "/versioning"])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Put,
    path,
    headers,
    query,
    option.Some(body),
  )
}

pub fn put_job_tagging(
  client: Client,
  job_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v20180820/jobs/", job_id, "/tagging"])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Put,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn put_multi_region_access_point_policy(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v20180820/async-requests/mrap/put-policy"])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Post,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn put_public_access_block(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v20180820/configuration/publicAccessBlock"])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Put,
    path,
    headers,
    query,
    option.Some(body),
  )
}

pub fn put_storage_lens_configuration(
  client: Client,
  config_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v20180820/storagelens/", config_id, ""])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Put,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn put_storage_lens_configuration_tagging(
  client: Client,
  config_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v20180820/storagelens/", config_id, "/tagging"])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Put,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn submit_multi_region_access_point_routes(
  client: Client,
  mrap: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v20180820/mrap/instances/", mrap, "/routes"])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Patch,
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
  let path = string.concat(["/v20180820/tags/", resource_arn, ""])

  let headers = [#("content-type", "application/xml"), ..headers]

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
  let path = string.concat(["/v20180820/tags/", resource_arn, ""])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Delete,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn update_access_grants_location(
  client: Client,
  access_grants_location_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/v20180820/accessgrantsinstance/location/",
      access_grants_location_id,
      "",
    ])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Put,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn update_job_priority(
  client: Client,
  job_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v20180820/jobs/", job_id, "/priority"])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Post,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn update_job_status(
  client: Client,
  job_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v20180820/jobs/", job_id, "/status"])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Post,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn update_storage_lens_group(
  client: Client,
  name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v20180820/storagelensgroup/", name, ""])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Put,
    path,
    headers,
    query,
    option.None,
  )
}
