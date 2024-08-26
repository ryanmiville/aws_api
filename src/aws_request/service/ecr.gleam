import aws_request/config.{type Config}
import aws_request/internal/endpoint
import aws_request/internal/metadata.{Metadata}
import aws_request/internal/request_builder.{type RequestBuilder, RequestBuilder}
import gleam/http
import gleam/http/request.{type Request}
import gleam/option.{None, Some}

const content_type = "application/x-amz-json-1.1"

const metadata = Metadata(
  endpoint_prefix: "api.ecr",
  service_id: "AmazonEC2ContainerRegistry_V20150921",
  signing_name: "ecr",
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

pub fn batch_check_layer_availability(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".BatchCheckLayerAvailability"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn batch_delete_image(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".BatchDeleteImage"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn batch_get_image(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".BatchGetImage"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn batch_get_repository_scanning_configuration(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target =
    client.builder.service_id <> ".BatchGetRepositoryScanningConfiguration"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn complete_layer_upload(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".CompleteLayerUpload"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn create_pull_through_cache_rule(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".CreatePullThroughCacheRule"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn create_repository(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".CreateRepository"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn create_repository_creation_template(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".CreateRepositoryCreationTemplate"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn delete_lifecycle_policy(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".DeleteLifecyclePolicy"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn delete_pull_through_cache_rule(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".DeletePullThroughCacheRule"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn delete_registry_policy(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".DeleteRegistryPolicy"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn delete_repository(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".DeleteRepository"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn delete_repository_creation_template(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".DeleteRepositoryCreationTemplate"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn delete_repository_policy(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".DeleteRepositoryPolicy"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn describe_image_replication_status(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".DescribeImageReplicationStatus"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn describe_images(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".DescribeImages"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn describe_image_scan_findings(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".DescribeImageScanFindings"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn describe_pull_through_cache_rules(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".DescribePullThroughCacheRules"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn describe_registry(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".DescribeRegistry"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn describe_repositories(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".DescribeRepositories"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn describe_repository_creation_templates(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target =
    client.builder.service_id <> ".DescribeRepositoryCreationTemplates"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn get_account_setting(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".GetAccountSetting"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn get_authorization_token(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".GetAuthorizationToken"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn get_download_url_for_layer(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".GetDownloadUrlForLayer"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn get_lifecycle_policy(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".GetLifecyclePolicy"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn get_lifecycle_policy_preview(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".GetLifecyclePolicyPreview"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn get_registry_policy(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".GetRegistryPolicy"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn get_registry_scanning_configuration(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".GetRegistryScanningConfiguration"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn get_repository_policy(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".GetRepositoryPolicy"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn initiate_layer_upload(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".InitiateLayerUpload"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn list_images(client: Client, request_body: BitArray) -> Request(BitArray) {
  let target = client.builder.service_id <> ".ListImages"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn list_tags_for_resource(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".ListTagsForResource"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn put_account_setting(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".PutAccountSetting"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn put_image(client: Client, request_body: BitArray) -> Request(BitArray) {
  let target = client.builder.service_id <> ".PutImage"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn put_image_scanning_configuration(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".PutImageScanningConfiguration"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn put_image_tag_mutability(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".PutImageTagMutability"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn put_lifecycle_policy(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".PutLifecyclePolicy"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn put_registry_policy(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".PutRegistryPolicy"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn put_registry_scanning_configuration(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".PutRegistryScanningConfiguration"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn put_replication_configuration(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".PutReplicationConfiguration"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn set_repository_policy(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".SetRepositoryPolicy"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn start_image_scan(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".StartImageScan"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn start_lifecycle_policy_preview(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".StartLifecyclePolicyPreview"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn tag_resource(client: Client, request_body: BitArray) -> Request(BitArray) {
  let target = client.builder.service_id <> ".TagResource"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn untag_resource(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".UntagResource"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn update_pull_through_cache_rule(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".UpdatePullThroughCacheRule"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn update_repository_creation_template(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".UpdateRepositoryCreationTemplate"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn upload_layer_part(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".UploadLayerPart"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn validate_pull_through_cache_rule(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".ValidatePullThroughCacheRule"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.builder,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}
