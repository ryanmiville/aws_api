import aws4_request.{type Signer}
import aws_api/internal/endpoint
import aws_api/internal/metadata.{Metadata}
import aws_api/internal/request_builder
import gleam/http.{type Header}
import gleam/http/request.{type Request}
import gleam/option.{type Option}
import gleam/string

const metadata = Metadata(
  endpoint_prefix: "media-pipelines-chime",
  service_id: "ChimeSDKMediaPipelinesService",
  signing_name: "chime",
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

pub fn create_media_capture_pipeline(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/sdk-media-capture-pipelines"])

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

pub fn create_media_concatenation_pipeline(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/sdk-media-concatenation-pipelines"])

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

pub fn create_media_insights_pipeline(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/media-insights-pipelines"])

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

pub fn create_media_insights_pipeline_configuration(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/media-insights-pipeline-configurations"])

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

pub fn create_media_live_connector_pipeline(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/sdk-media-live-connector-pipelines"])

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

pub fn create_media_pipeline_kinesis_video_stream_pool(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/media-pipeline-kinesis-video-stream-pools"])

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

pub fn create_media_stream_pipeline(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/sdk-media-stream-pipelines"])

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

pub fn delete_media_capture_pipeline(
  client: Client,
  media_pipeline_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/sdk-media-capture-pipelines/", media_pipeline_id, ""])

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

pub fn delete_media_insights_pipeline_configuration(
  client: Client,
  identifier: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/media-insights-pipeline-configurations/", identifier, ""])

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

pub fn delete_media_pipeline(
  client: Client,
  media_pipeline_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/sdk-media-pipelines/", media_pipeline_id, ""])

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

pub fn delete_media_pipeline_kinesis_video_stream_pool(
  client: Client,
  identifier: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/media-pipeline-kinesis-video-stream-pools/",
      identifier,
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

pub fn get_media_capture_pipeline(
  client: Client,
  media_pipeline_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/sdk-media-capture-pipelines/", media_pipeline_id, ""])

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

pub fn get_media_insights_pipeline_configuration(
  client: Client,
  identifier: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/media-insights-pipeline-configurations/", identifier, ""])

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

pub fn get_media_pipeline(
  client: Client,
  media_pipeline_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/sdk-media-pipelines/", media_pipeline_id, ""])

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

pub fn get_media_pipeline_kinesis_video_stream_pool(
  client: Client,
  identifier: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/media-pipeline-kinesis-video-stream-pools/",
      identifier,
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

pub fn get_speaker_search_task(
  client: Client,
  identifier: String,
  speaker_search_task_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/media-insights-pipelines/",
      identifier,
      "/speaker-search-tasks/",
      speaker_search_task_id,
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

pub fn get_voice_tone_analysis_task(
  client: Client,
  identifier: String,
  voice_tone_analysis_task_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/media-insights-pipelines/",
      identifier,
      "/voice-tone-analysis-tasks/",
      voice_tone_analysis_task_id,
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

pub fn list_media_capture_pipelines(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/sdk-media-capture-pipelines"])

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

pub fn list_media_insights_pipeline_configurations(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/media-insights-pipeline-configurations"])

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

pub fn list_media_pipeline_kinesis_video_stream_pools(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/media-pipeline-kinesis-video-stream-pools"])

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

pub fn list_media_pipelines(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/sdk-media-pipelines"])

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

pub fn list_tags_for_resource(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/tags"])

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

pub fn start_speaker_search_task(
  client: Client,
  identifier: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/media-insights-pipelines/",
      identifier,
      "/speaker-search-tasks?operation=start",
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

pub fn start_voice_tone_analysis_task(
  client: Client,
  identifier: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/media-insights-pipelines/",
      identifier,
      "/voice-tone-analysis-tasks?operation=start",
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

pub fn stop_speaker_search_task(
  client: Client,
  identifier: String,
  speaker_search_task_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/media-insights-pipelines/",
      identifier,
      "/speaker-search-tasks/",
      speaker_search_task_id,
      "?operation=stop",
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

pub fn stop_voice_tone_analysis_task(
  client: Client,
  identifier: String,
  voice_tone_analysis_task_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/media-insights-pipelines/",
      identifier,
      "/voice-tone-analysis-tasks/",
      voice_tone_analysis_task_id,
      "?operation=stop",
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

pub fn tag_resource(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/tags?operation=tag-resource"])

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
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/tags?operation=untag-resource"])

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

pub fn update_media_insights_pipeline_configuration(
  client: Client,
  identifier: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/media-insights-pipeline-configurations/", identifier, ""])

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

pub fn update_media_insights_pipeline_status(
  client: Client,
  identifier: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/media-insights-pipeline-status/", identifier, ""])

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

pub fn update_media_pipeline_kinesis_video_stream_pool(
  client: Client,
  identifier: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/media-pipeline-kinesis-video-stream-pools/",
      identifier,
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
