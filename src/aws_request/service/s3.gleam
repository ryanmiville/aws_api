import aws_request/config.{type Config}
import aws_request/internal/endpoint
import aws_request/internal/metadata.{Metadata}
import aws_request/internal/request_builder.{type RequestBuilder, RequestBuilder}
import gleam/http.{type Header}
import gleam/http/request.{type Request}
import gleam/option.{type Option}
import gleam/string

const metadata = Metadata(
  endpoint_prefix: "s3",
  service_id: "AmazonS3",
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

pub fn abort_multipart_upload(
  client: Client,
  bucket: String,
  key: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/", bucket, "/", key, "?x-id=AbortMultipartUpload"])

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

pub fn complete_multipart_upload(
  client: Client,
  bucket: String,
  key: String,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", bucket, "/", key, ""])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Post,
    path,
    headers,
    query,
    option.Some(body),
  )
}

pub fn copy_object(
  client: Client,
  bucket: String,
  key: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", bucket, "/", key, "?x-id=CopyObject"])

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
  let path = string.concat(["/", bucket, ""])

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

pub fn create_multipart_upload(
  client: Client,
  bucket: String,
  key: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", bucket, "/", key, "?uploads"])

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

pub fn create_session(
  client: Client,
  bucket: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", bucket, "?session"])

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

pub fn delete_bucket(
  client: Client,
  bucket: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", bucket, ""])

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

pub fn delete_bucket_analytics_configuration(
  client: Client,
  bucket: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", bucket, "?analytics"])

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

pub fn delete_bucket_cors(
  client: Client,
  bucket: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", bucket, "?cors"])

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

pub fn delete_bucket_encryption(
  client: Client,
  bucket: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", bucket, "?encryption"])

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

pub fn delete_bucket_intelligent_tiering_configuration(
  client: Client,
  bucket: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", bucket, "?intelligent-tiering"])

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

pub fn delete_bucket_inventory_configuration(
  client: Client,
  bucket: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", bucket, "?inventory"])

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

pub fn delete_bucket_lifecycle(
  client: Client,
  bucket: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", bucket, "?lifecycle"])

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

pub fn delete_bucket_metrics_configuration(
  client: Client,
  bucket: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", bucket, "?metrics"])

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

pub fn delete_bucket_ownership_controls(
  client: Client,
  bucket: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", bucket, "?ownershipControls"])

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
  let path = string.concat(["/", bucket, "?policy"])

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
  let path = string.concat(["/", bucket, "?replication"])

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
  let path = string.concat(["/", bucket, "?tagging"])

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

pub fn delete_bucket_website(
  client: Client,
  bucket: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", bucket, "?website"])

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

pub fn delete_object(
  client: Client,
  bucket: String,
  key: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", bucket, "/", key, "?x-id=DeleteObject"])

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

pub fn delete_objects(
  client: Client,
  bucket: String,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", bucket, "?delete"])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Post,
    path,
    headers,
    query,
    option.Some(body),
  )
}

pub fn delete_object_tagging(
  client: Client,
  bucket: String,
  key: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", bucket, "/", key, "?tagging"])

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

pub fn delete_public_access_block(
  client: Client,
  bucket: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", bucket, "?publicAccessBlock"])

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

pub fn get_bucket_accelerate_configuration(
  client: Client,
  bucket: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", bucket, "?accelerate"])

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

pub fn get_bucket_acl(
  client: Client,
  bucket: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", bucket, "?acl"])

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

pub fn get_bucket_analytics_configuration(
  client: Client,
  bucket: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/",
      bucket,
      "?analytics&x-id=GetBucketAnalyticsConfiguration",
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

pub fn get_bucket_cors(
  client: Client,
  bucket: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", bucket, "?cors"])

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

pub fn get_bucket_encryption(
  client: Client,
  bucket: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", bucket, "?encryption"])

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

pub fn get_bucket_intelligent_tiering_configuration(
  client: Client,
  bucket: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/",
      bucket,
      "?intelligent-tiering&x-id=GetBucketIntelligentTieringConfiguration",
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

pub fn get_bucket_inventory_configuration(
  client: Client,
  bucket: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/",
      bucket,
      "?inventory&x-id=GetBucketInventoryConfiguration",
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

pub fn get_bucket_lifecycle_configuration(
  client: Client,
  bucket: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", bucket, "?lifecycle"])

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

pub fn get_bucket_location(
  client: Client,
  bucket: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", bucket, "?location"])

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

pub fn get_bucket_logging(
  client: Client,
  bucket: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", bucket, "?logging"])

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

pub fn get_bucket_metrics_configuration(
  client: Client,
  bucket: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/", bucket, "?metrics&x-id=GetBucketMetricsConfiguration"])

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

pub fn get_bucket_notification_configuration(
  client: Client,
  bucket: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", bucket, "?notification"])

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

pub fn get_bucket_ownership_controls(
  client: Client,
  bucket: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", bucket, "?ownershipControls"])

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
  let path = string.concat(["/", bucket, "?policy"])

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

pub fn get_bucket_policy_status(
  client: Client,
  bucket: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", bucket, "?policyStatus"])

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
  let path = string.concat(["/", bucket, "?replication"])

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

pub fn get_bucket_request_payment(
  client: Client,
  bucket: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", bucket, "?requestPayment"])

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
  let path = string.concat(["/", bucket, "?tagging"])

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
  let path = string.concat(["/", bucket, "?versioning"])

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

pub fn get_bucket_website(
  client: Client,
  bucket: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", bucket, "?website"])

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

pub fn get_object(
  client: Client,
  bucket: String,
  key: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", bucket, "/", key, "?x-id=GetObject"])

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

pub fn get_object_acl(
  client: Client,
  bucket: String,
  key: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", bucket, "/", key, "?acl"])

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

pub fn get_object_attributes(
  client: Client,
  bucket: String,
  key: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", bucket, "/", key, "?attributes"])

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

pub fn get_object_legal_hold(
  client: Client,
  bucket: String,
  key: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", bucket, "/", key, "?legal-hold"])

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

pub fn get_object_lock_configuration(
  client: Client,
  bucket: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", bucket, "?object-lock"])

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

pub fn get_object_retention(
  client: Client,
  bucket: String,
  key: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", bucket, "/", key, "?retention"])

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

pub fn get_object_tagging(
  client: Client,
  bucket: String,
  key: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", bucket, "/", key, "?tagging"])

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

pub fn get_object_torrent(
  client: Client,
  bucket: String,
  key: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", bucket, "/", key, "?torrent"])

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
  bucket: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", bucket, "?publicAccessBlock"])

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

pub fn head_bucket(
  client: Client,
  bucket: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", bucket, ""])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Head,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn head_object(
  client: Client,
  bucket: String,
  key: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", bucket, "/", key, ""])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Head,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn list_bucket_analytics_configurations(
  client: Client,
  bucket: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/",
      bucket,
      "?analytics&x-id=ListBucketAnalyticsConfigurations",
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

pub fn list_bucket_intelligent_tiering_configurations(
  client: Client,
  bucket: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/",
      bucket,
      "?intelligent-tiering&x-id=ListBucketIntelligentTieringConfigurations",
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

pub fn list_bucket_inventory_configurations(
  client: Client,
  bucket: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/",
      bucket,
      "?inventory&x-id=ListBucketInventoryConfigurations",
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

pub fn list_bucket_metrics_configurations(
  client: Client,
  bucket: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/", bucket, "?metrics&x-id=ListBucketMetricsConfigurations"])

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

pub fn list_buckets(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/?x-id=ListBuckets"])

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

pub fn list_directory_buckets(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/?x-id=ListDirectoryBuckets"])

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

pub fn list_multipart_uploads(
  client: Client,
  bucket: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", bucket, "?uploads"])

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

pub fn list_objects(
  client: Client,
  bucket: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", bucket, ""])

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

pub fn list_objects_v2(
  client: Client,
  bucket: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", bucket, "?list-type=2"])

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

pub fn list_object_versions(
  client: Client,
  bucket: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", bucket, "?versions"])

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

pub fn list_parts(
  client: Client,
  bucket: String,
  key: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", bucket, "/", key, "?x-id=ListParts"])

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

pub fn put_bucket_accelerate_configuration(
  client: Client,
  bucket: String,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", bucket, "?accelerate"])

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

pub fn put_bucket_acl(
  client: Client,
  bucket: String,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", bucket, "?acl"])

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

pub fn put_bucket_analytics_configuration(
  client: Client,
  bucket: String,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", bucket, "?analytics"])

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

pub fn put_bucket_cors(
  client: Client,
  bucket: String,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", bucket, "?cors"])

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

pub fn put_bucket_encryption(
  client: Client,
  bucket: String,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", bucket, "?encryption"])

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

pub fn put_bucket_intelligent_tiering_configuration(
  client: Client,
  bucket: String,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", bucket, "?intelligent-tiering"])

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

pub fn put_bucket_inventory_configuration(
  client: Client,
  bucket: String,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", bucket, "?inventory"])

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

pub fn put_bucket_lifecycle_configuration(
  client: Client,
  bucket: String,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", bucket, "?lifecycle"])

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

pub fn put_bucket_logging(
  client: Client,
  bucket: String,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", bucket, "?logging"])

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

pub fn put_bucket_metrics_configuration(
  client: Client,
  bucket: String,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", bucket, "?metrics"])

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

pub fn put_bucket_notification_configuration(
  client: Client,
  bucket: String,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", bucket, "?notification"])

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

pub fn put_bucket_ownership_controls(
  client: Client,
  bucket: String,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", bucket, "?ownershipControls"])

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
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", bucket, "?policy"])

  let headers = [#("content-type", "text/plain"), ..headers]

  request_builder.build(
    client.builder,
    http.Put,
    path,
    headers,
    query,
    option.Some(body),
  )
}

pub fn put_bucket_replication(
  client: Client,
  bucket: String,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", bucket, "?replication"])

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

pub fn put_bucket_request_payment(
  client: Client,
  bucket: String,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", bucket, "?requestPayment"])

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
  let path = string.concat(["/", bucket, "?tagging"])

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
  let path = string.concat(["/", bucket, "?versioning"])

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

pub fn put_bucket_website(
  client: Client,
  bucket: String,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", bucket, "?website"])

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

pub fn put_object(
  client: Client,
  bucket: String,
  key: String,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", bucket, "/", key, "?x-id=PutObject"])

  let headers = [#("content-type", "application/octet-stream"), ..headers]

  request_builder.build(
    client.builder,
    http.Put,
    path,
    headers,
    query,
    option.Some(body),
  )
}

pub fn put_object_acl(
  client: Client,
  bucket: String,
  key: String,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", bucket, "/", key, "?acl"])

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

pub fn put_object_legal_hold(
  client: Client,
  bucket: String,
  key: String,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", bucket, "/", key, "?legal-hold"])

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

pub fn put_object_lock_configuration(
  client: Client,
  bucket: String,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", bucket, "?object-lock"])

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

pub fn put_object_retention(
  client: Client,
  bucket: String,
  key: String,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", bucket, "/", key, "?retention"])

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

pub fn put_object_tagging(
  client: Client,
  bucket: String,
  key: String,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", bucket, "/", key, "?tagging"])

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

pub fn put_public_access_block(
  client: Client,
  bucket: String,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", bucket, "?publicAccessBlock"])

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

pub fn restore_object(
  client: Client,
  bucket: String,
  key: String,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", bucket, "/", key, "?restore"])

  let headers = [#("content-type", "application/xml"), ..headers]

  request_builder.build(
    client.builder,
    http.Post,
    path,
    headers,
    query,
    option.Some(body),
  )
}

pub fn select_object_content(
  client: Client,
  bucket: String,
  key: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", bucket, "/", key, "?select&select-type=2"])

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

pub fn upload_part(
  client: Client,
  bucket: String,
  key: String,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", bucket, "/", key, "?x-id=UploadPart"])

  let headers = [#("content-type", "application/octet-stream"), ..headers]

  request_builder.build(
    client.builder,
    http.Put,
    path,
    headers,
    query,
    option.Some(body),
  )
}

pub fn upload_part_copy(
  client: Client,
  bucket: String,
  key: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/", bucket, "/", key, "?x-id=UploadPartCopy"])

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

pub fn write_get_object_response(
  client: Client,
  body: BitArray,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/WriteGetObjectResponse"])

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
