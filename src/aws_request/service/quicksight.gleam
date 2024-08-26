import aws_request/config.{type Config}
import aws_request/internal/endpoint
import aws_request/internal/metadata.{Metadata}
import aws_request/internal/request_builder.{type RequestBuilder, RequestBuilder}
import gleam/http.{type Header}
import gleam/http/request.{type Request}
import gleam/option.{type Option}
import gleam/string

const metadata = Metadata(
  endpoint_prefix: "quicksight",
  service_id: "QuickSight_20180401",
  signing_name: "quicksight",
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

pub fn batch_create_topic_reviewed_answer(
  client: Client,
  aws_account_id: String,
  topic_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/topics/",
      topic_id,
      "/batch-create-reviewed-answers",
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

pub fn batch_delete_topic_reviewed_answer(
  client: Client,
  aws_account_id: String,
  topic_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/topics/",
      topic_id,
      "/batch-delete-reviewed-answers",
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

pub fn cancel_ingestion(
  client: Client,
  aws_account_id: String,
  data_set_id: String,
  ingestion_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/data-sets/",
      data_set_id,
      "/ingestions/",
      ingestion_id,
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

pub fn create_account_customization(
  client: Client,
  aws_account_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/accounts/", aws_account_id, "/customizations"])

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

pub fn create_account_subscription(
  client: Client,
  aws_account_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/account/", aws_account_id, ""])

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

pub fn create_analysis(
  client: Client,
  aws_account_id: String,
  analysis_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/accounts/", aws_account_id, "/analyses/", analysis_id, ""])

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

pub fn create_dashboard(
  client: Client,
  aws_account_id: String,
  dashboard_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/dashboards/",
      dashboard_id,
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

pub fn create_data_set(
  client: Client,
  aws_account_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/accounts/", aws_account_id, "/data-sets"])

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

pub fn create_data_source(
  client: Client,
  aws_account_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/accounts/", aws_account_id, "/data-sources"])

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

pub fn create_folder(
  client: Client,
  aws_account_id: String,
  folder_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/accounts/", aws_account_id, "/folders/", folder_id, ""])

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

pub fn create_folder_membership(
  client: Client,
  aws_account_id: String,
  folder_id: String,
  member_type: String,
  member_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/folders/",
      folder_id,
      "/members/",
      member_type,
      "/",
      member_id,
      "",
    ])

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

pub fn create_group(
  client: Client,
  aws_account_id: String,
  namespace: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/namespaces/",
      namespace,
      "/groups",
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

pub fn create_group_membership(
  client: Client,
  aws_account_id: String,
  namespace: String,
  group_name: String,
  member_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/namespaces/",
      namespace,
      "/groups/",
      group_name,
      "/members/",
      member_name,
      "",
    ])

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

pub fn create_iam_policy_assignment(
  client: Client,
  aws_account_id: String,
  namespace: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/namespaces/",
      namespace,
      "/iam-policy-assignments",
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

pub fn create_ingestion(
  client: Client,
  aws_account_id: String,
  data_set_id: String,
  ingestion_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/data-sets/",
      data_set_id,
      "/ingestions/",
      ingestion_id,
      "",
    ])

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

pub fn create_namespace(
  client: Client,
  aws_account_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/accounts/", aws_account_id, ""])

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

pub fn create_refresh_schedule(
  client: Client,
  aws_account_id: String,
  data_set_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/data-sets/",
      data_set_id,
      "/refresh-schedules",
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

pub fn create_role_membership(
  client: Client,
  aws_account_id: String,
  namespace: String,
  role: String,
  member_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/namespaces/",
      namespace,
      "/roles/",
      role,
      "/members/",
      member_name,
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

pub fn create_template(
  client: Client,
  aws_account_id: String,
  template_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/accounts/", aws_account_id, "/templates/", template_id, ""])

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

pub fn create_template_alias(
  client: Client,
  aws_account_id: String,
  template_id: String,
  alias_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/templates/",
      template_id,
      "/aliases/",
      alias_name,
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

pub fn create_theme(
  client: Client,
  aws_account_id: String,
  theme_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/accounts/", aws_account_id, "/themes/", theme_id, ""])

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

pub fn create_theme_alias(
  client: Client,
  aws_account_id: String,
  theme_id: String,
  alias_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/themes/",
      theme_id,
      "/aliases/",
      alias_name,
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

pub fn create_topic(
  client: Client,
  aws_account_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/accounts/", aws_account_id, "/topics"])

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

pub fn create_topic_refresh_schedule(
  client: Client,
  aws_account_id: String,
  topic_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/topics/",
      topic_id,
      "/schedules",
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

pub fn create_vpc_connection(
  client: Client,
  aws_account_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/accounts/", aws_account_id, "/vpc-connections"])

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

pub fn delete_account_customization(
  client: Client,
  aws_account_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/accounts/", aws_account_id, "/customizations"])

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

pub fn delete_account_subscription(
  client: Client,
  aws_account_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/account/", aws_account_id, ""])

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

pub fn delete_analysis(
  client: Client,
  aws_account_id: String,
  analysis_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/accounts/", aws_account_id, "/analyses/", analysis_id, ""])

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

pub fn delete_dashboard(
  client: Client,
  aws_account_id: String,
  dashboard_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/dashboards/",
      dashboard_id,
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

pub fn delete_data_set(
  client: Client,
  aws_account_id: String,
  data_set_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/accounts/", aws_account_id, "/data-sets/", data_set_id, ""])

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

pub fn delete_data_set_refresh_properties(
  client: Client,
  aws_account_id: String,
  data_set_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/data-sets/",
      data_set_id,
      "/refresh-properties",
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

pub fn delete_data_source(
  client: Client,
  aws_account_id: String,
  data_source_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/data-sources/",
      data_source_id,
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

pub fn delete_folder(
  client: Client,
  aws_account_id: String,
  folder_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/accounts/", aws_account_id, "/folders/", folder_id, ""])

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

pub fn delete_folder_membership(
  client: Client,
  aws_account_id: String,
  folder_id: String,
  member_type: String,
  member_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/folders/",
      folder_id,
      "/members/",
      member_type,
      "/",
      member_id,
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

pub fn delete_group(
  client: Client,
  aws_account_id: String,
  namespace: String,
  group_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/namespaces/",
      namespace,
      "/groups/",
      group_name,
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

pub fn delete_group_membership(
  client: Client,
  aws_account_id: String,
  namespace: String,
  group_name: String,
  member_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/namespaces/",
      namespace,
      "/groups/",
      group_name,
      "/members/",
      member_name,
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

pub fn delete_iam_policy_assignment(
  client: Client,
  aws_account_id: String,
  namespace: String,
  assignment_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/namespace/",
      namespace,
      "/iam-policy-assignments/",
      assignment_name,
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

pub fn delete_identity_propagation_config(
  client: Client,
  aws_account_id: String,
  service: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/identity-propagation-config/",
      service,
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

pub fn delete_namespace(
  client: Client,
  aws_account_id: String,
  namespace: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/accounts/", aws_account_id, "/namespaces/", namespace, ""])

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

pub fn delete_refresh_schedule(
  client: Client,
  aws_account_id: String,
  data_set_id: String,
  schedule_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/data-sets/",
      data_set_id,
      "/refresh-schedules/",
      schedule_id,
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

pub fn delete_role_custom_permission(
  client: Client,
  aws_account_id: String,
  namespace: String,
  role: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/namespaces/",
      namespace,
      "/roles/",
      role,
      "/custom-permission",
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

pub fn delete_role_membership(
  client: Client,
  aws_account_id: String,
  namespace: String,
  role: String,
  member_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/namespaces/",
      namespace,
      "/roles/",
      role,
      "/members/",
      member_name,
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

pub fn delete_template(
  client: Client,
  aws_account_id: String,
  template_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/accounts/", aws_account_id, "/templates/", template_id, ""])

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

pub fn delete_template_alias(
  client: Client,
  aws_account_id: String,
  template_id: String,
  alias_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/templates/",
      template_id,
      "/aliases/",
      alias_name,
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

pub fn delete_theme(
  client: Client,
  aws_account_id: String,
  theme_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/accounts/", aws_account_id, "/themes/", theme_id, ""])

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

pub fn delete_theme_alias(
  client: Client,
  aws_account_id: String,
  theme_id: String,
  alias_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/themes/",
      theme_id,
      "/aliases/",
      alias_name,
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

pub fn delete_topic(
  client: Client,
  aws_account_id: String,
  topic_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/accounts/", aws_account_id, "/topics/", topic_id, ""])

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

pub fn delete_topic_refresh_schedule(
  client: Client,
  aws_account_id: String,
  topic_id: String,
  dataset_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/topics/",
      topic_id,
      "/schedules/",
      dataset_id,
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

pub fn delete_user(
  client: Client,
  aws_account_id: String,
  namespace: String,
  user_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/namespaces/",
      namespace,
      "/users/",
      user_name,
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

pub fn delete_user_by_principal_id(
  client: Client,
  aws_account_id: String,
  namespace: String,
  principal_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/namespaces/",
      namespace,
      "/user-principals/",
      principal_id,
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

pub fn delete_vpc_connection(
  client: Client,
  aws_account_id: String,
  vpc_connection_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/vpc-connections/",
      vpc_connection_id,
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

pub fn describe_account_customization(
  client: Client,
  aws_account_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/accounts/", aws_account_id, "/customizations"])

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

pub fn describe_account_settings(
  client: Client,
  aws_account_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/accounts/", aws_account_id, "/settings"])

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

pub fn describe_account_subscription(
  client: Client,
  aws_account_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/account/", aws_account_id, ""])

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

pub fn describe_analysis(
  client: Client,
  aws_account_id: String,
  analysis_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/accounts/", aws_account_id, "/analyses/", analysis_id, ""])

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

pub fn describe_analysis_definition(
  client: Client,
  aws_account_id: String,
  analysis_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/analyses/",
      analysis_id,
      "/definition",
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

pub fn describe_analysis_permissions(
  client: Client,
  aws_account_id: String,
  analysis_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/analyses/",
      analysis_id,
      "/permissions",
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

pub fn describe_asset_bundle_export_job(
  client: Client,
  aws_account_id: String,
  asset_bundle_export_job_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/asset-bundle-export-jobs/",
      asset_bundle_export_job_id,
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

pub fn describe_asset_bundle_import_job(
  client: Client,
  aws_account_id: String,
  asset_bundle_import_job_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/asset-bundle-import-jobs/",
      asset_bundle_import_job_id,
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

pub fn describe_dashboard(
  client: Client,
  aws_account_id: String,
  dashboard_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/dashboards/",
      dashboard_id,
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

pub fn describe_dashboard_definition(
  client: Client,
  aws_account_id: String,
  dashboard_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/dashboards/",
      dashboard_id,
      "/definition",
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

pub fn describe_dashboard_permissions(
  client: Client,
  aws_account_id: String,
  dashboard_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/dashboards/",
      dashboard_id,
      "/permissions",
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

pub fn describe_dashboard_snapshot_job(
  client: Client,
  aws_account_id: String,
  dashboard_id: String,
  snapshot_job_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/dashboards/",
      dashboard_id,
      "/snapshot-jobs/",
      snapshot_job_id,
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

pub fn describe_dashboard_snapshot_job_result(
  client: Client,
  aws_account_id: String,
  dashboard_id: String,
  snapshot_job_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/dashboards/",
      dashboard_id,
      "/snapshot-jobs/",
      snapshot_job_id,
      "/result",
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

pub fn describe_data_set(
  client: Client,
  aws_account_id: String,
  data_set_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/accounts/", aws_account_id, "/data-sets/", data_set_id, ""])

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

pub fn describe_data_set_permissions(
  client: Client,
  aws_account_id: String,
  data_set_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/data-sets/",
      data_set_id,
      "/permissions",
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

pub fn describe_data_set_refresh_properties(
  client: Client,
  aws_account_id: String,
  data_set_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/data-sets/",
      data_set_id,
      "/refresh-properties",
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

pub fn describe_data_source(
  client: Client,
  aws_account_id: String,
  data_source_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/data-sources/",
      data_source_id,
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

pub fn describe_data_source_permissions(
  client: Client,
  aws_account_id: String,
  data_source_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/data-sources/",
      data_source_id,
      "/permissions",
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

pub fn describe_folder(
  client: Client,
  aws_account_id: String,
  folder_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/accounts/", aws_account_id, "/folders/", folder_id, ""])

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

pub fn describe_folder_permissions(
  client: Client,
  aws_account_id: String,
  folder_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/folders/",
      folder_id,
      "/permissions",
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

pub fn describe_folder_resolved_permissions(
  client: Client,
  aws_account_id: String,
  folder_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/folders/",
      folder_id,
      "/resolved-permissions",
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

pub fn describe_group(
  client: Client,
  aws_account_id: String,
  namespace: String,
  group_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/namespaces/",
      namespace,
      "/groups/",
      group_name,
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

pub fn describe_group_membership(
  client: Client,
  aws_account_id: String,
  namespace: String,
  group_name: String,
  member_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/namespaces/",
      namespace,
      "/groups/",
      group_name,
      "/members/",
      member_name,
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

pub fn describe_iam_policy_assignment(
  client: Client,
  aws_account_id: String,
  namespace: String,
  assignment_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/namespaces/",
      namespace,
      "/iam-policy-assignments/",
      assignment_name,
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

pub fn describe_ingestion(
  client: Client,
  aws_account_id: String,
  data_set_id: String,
  ingestion_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/data-sets/",
      data_set_id,
      "/ingestions/",
      ingestion_id,
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

pub fn describe_ip_restriction(
  client: Client,
  aws_account_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/accounts/", aws_account_id, "/ip-restriction"])

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

pub fn describe_key_registration(
  client: Client,
  aws_account_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/accounts/", aws_account_id, "/key-registration"])

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

pub fn describe_namespace(
  client: Client,
  aws_account_id: String,
  namespace: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/accounts/", aws_account_id, "/namespaces/", namespace, ""])

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

pub fn describe_refresh_schedule(
  client: Client,
  aws_account_id: String,
  data_set_id: String,
  schedule_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/data-sets/",
      data_set_id,
      "/refresh-schedules/",
      schedule_id,
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

pub fn describe_role_custom_permission(
  client: Client,
  aws_account_id: String,
  namespace: String,
  role: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/namespaces/",
      namespace,
      "/roles/",
      role,
      "/custom-permission",
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

pub fn describe_template(
  client: Client,
  aws_account_id: String,
  template_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/accounts/", aws_account_id, "/templates/", template_id, ""])

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

pub fn describe_template_alias(
  client: Client,
  aws_account_id: String,
  template_id: String,
  alias_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/templates/",
      template_id,
      "/aliases/",
      alias_name,
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

pub fn describe_template_definition(
  client: Client,
  aws_account_id: String,
  template_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/templates/",
      template_id,
      "/definition",
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

pub fn describe_template_permissions(
  client: Client,
  aws_account_id: String,
  template_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/templates/",
      template_id,
      "/permissions",
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

pub fn describe_theme(
  client: Client,
  aws_account_id: String,
  theme_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/accounts/", aws_account_id, "/themes/", theme_id, ""])

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

pub fn describe_theme_alias(
  client: Client,
  aws_account_id: String,
  theme_id: String,
  alias_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/themes/",
      theme_id,
      "/aliases/",
      alias_name,
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

pub fn describe_theme_permissions(
  client: Client,
  aws_account_id: String,
  theme_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/themes/",
      theme_id,
      "/permissions",
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

pub fn describe_topic(
  client: Client,
  aws_account_id: String,
  topic_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/accounts/", aws_account_id, "/topics/", topic_id, ""])

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

pub fn describe_topic_permissions(
  client: Client,
  aws_account_id: String,
  topic_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/topics/",
      topic_id,
      "/permissions",
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

pub fn describe_topic_refresh(
  client: Client,
  aws_account_id: String,
  topic_id: String,
  refresh_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/topics/",
      topic_id,
      "/refresh/",
      refresh_id,
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

pub fn describe_topic_refresh_schedule(
  client: Client,
  aws_account_id: String,
  topic_id: String,
  dataset_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/topics/",
      topic_id,
      "/schedules/",
      dataset_id,
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

pub fn describe_user(
  client: Client,
  aws_account_id: String,
  namespace: String,
  user_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/namespaces/",
      namespace,
      "/users/",
      user_name,
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

pub fn describe_vpc_connection(
  client: Client,
  aws_account_id: String,
  vpc_connection_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/vpc-connections/",
      vpc_connection_id,
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

pub fn generate_embed_url_for_anonymous_user(
  client: Client,
  aws_account_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/accounts/", aws_account_id, "/embed-url/anonymous-user"])

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

pub fn generate_embed_url_for_registered_user(
  client: Client,
  aws_account_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/accounts/", aws_account_id, "/embed-url/registered-user"])

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

pub fn get_dashboard_embed_url(
  client: Client,
  aws_account_id: String,
  dashboard_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/dashboards/",
      dashboard_id,
      "/embed-url",
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

pub fn get_session_embed_url(
  client: Client,
  aws_account_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/accounts/", aws_account_id, "/session-embed-url"])

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

pub fn list_analyses(
  client: Client,
  aws_account_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/accounts/", aws_account_id, "/analyses"])

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

pub fn list_asset_bundle_export_jobs(
  client: Client,
  aws_account_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/accounts/", aws_account_id, "/asset-bundle-export-jobs"])

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

pub fn list_asset_bundle_import_jobs(
  client: Client,
  aws_account_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/accounts/", aws_account_id, "/asset-bundle-import-jobs"])

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

pub fn list_dashboards(
  client: Client,
  aws_account_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/accounts/", aws_account_id, "/dashboards"])

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

pub fn list_dashboard_versions(
  client: Client,
  aws_account_id: String,
  dashboard_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/dashboards/",
      dashboard_id,
      "/versions",
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

pub fn list_data_sets(
  client: Client,
  aws_account_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/accounts/", aws_account_id, "/data-sets"])

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

pub fn list_data_sources(
  client: Client,
  aws_account_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/accounts/", aws_account_id, "/data-sources"])

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

pub fn list_folder_members(
  client: Client,
  aws_account_id: String,
  folder_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/folders/",
      folder_id,
      "/members",
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

pub fn list_folders(
  client: Client,
  aws_account_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/accounts/", aws_account_id, "/folders"])

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

pub fn list_group_memberships(
  client: Client,
  aws_account_id: String,
  namespace: String,
  group_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/namespaces/",
      namespace,
      "/groups/",
      group_name,
      "/members",
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

pub fn list_groups(
  client: Client,
  aws_account_id: String,
  namespace: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/namespaces/",
      namespace,
      "/groups",
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

pub fn list_iam_policy_assignments(
  client: Client,
  aws_account_id: String,
  namespace: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/namespaces/",
      namespace,
      "/v2/iam-policy-assignments",
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

pub fn list_iam_policy_assignments_for_user(
  client: Client,
  aws_account_id: String,
  namespace: String,
  user_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/namespaces/",
      namespace,
      "/users/",
      user_name,
      "/iam-policy-assignments",
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

pub fn list_identity_propagation_configs(
  client: Client,
  aws_account_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/accounts/", aws_account_id, "/identity-propagation-config"])

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

pub fn list_ingestions(
  client: Client,
  aws_account_id: String,
  data_set_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/data-sets/",
      data_set_id,
      "/ingestions",
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

pub fn list_namespaces(
  client: Client,
  aws_account_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/accounts/", aws_account_id, "/namespaces"])

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

pub fn list_refresh_schedules(
  client: Client,
  aws_account_id: String,
  data_set_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/data-sets/",
      data_set_id,
      "/refresh-schedules",
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

pub fn list_role_memberships(
  client: Client,
  aws_account_id: String,
  namespace: String,
  role: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/namespaces/",
      namespace,
      "/roles/",
      role,
      "/members",
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

pub fn list_tags_for_resource(
  client: Client,
  resource_arn: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/resources/", resource_arn, "/tags"])

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

pub fn list_template_aliases(
  client: Client,
  aws_account_id: String,
  template_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/templates/",
      template_id,
      "/aliases",
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

pub fn list_templates(
  client: Client,
  aws_account_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/accounts/", aws_account_id, "/templates"])

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

pub fn list_template_versions(
  client: Client,
  aws_account_id: String,
  template_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/templates/",
      template_id,
      "/versions",
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

pub fn list_theme_aliases(
  client: Client,
  aws_account_id: String,
  theme_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/themes/",
      theme_id,
      "/aliases",
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

pub fn list_themes(
  client: Client,
  aws_account_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/accounts/", aws_account_id, "/themes"])

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

pub fn list_theme_versions(
  client: Client,
  aws_account_id: String,
  theme_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/themes/",
      theme_id,
      "/versions",
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

pub fn list_topic_refresh_schedules(
  client: Client,
  aws_account_id: String,
  topic_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/topics/",
      topic_id,
      "/schedules",
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

pub fn list_topic_reviewed_answers(
  client: Client,
  aws_account_id: String,
  topic_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/topics/",
      topic_id,
      "/reviewed-answers",
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

pub fn list_topics(
  client: Client,
  aws_account_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/accounts/", aws_account_id, "/topics"])

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

pub fn list_user_groups(
  client: Client,
  aws_account_id: String,
  namespace: String,
  user_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/namespaces/",
      namespace,
      "/users/",
      user_name,
      "/groups",
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

pub fn list_users(
  client: Client,
  aws_account_id: String,
  namespace: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/namespaces/",
      namespace,
      "/users",
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

pub fn list_vpc_connections(
  client: Client,
  aws_account_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/accounts/", aws_account_id, "/vpc-connections"])

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

pub fn put_data_set_refresh_properties(
  client: Client,
  aws_account_id: String,
  data_set_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/data-sets/",
      data_set_id,
      "/refresh-properties",
    ])

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

pub fn register_user(
  client: Client,
  aws_account_id: String,
  namespace: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/namespaces/",
      namespace,
      "/users",
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

pub fn restore_analysis(
  client: Client,
  aws_account_id: String,
  analysis_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/restore/analyses/",
      analysis_id,
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

pub fn search_analyses(
  client: Client,
  aws_account_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/accounts/", aws_account_id, "/search/analyses"])

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

pub fn search_dashboards(
  client: Client,
  aws_account_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/accounts/", aws_account_id, "/search/dashboards"])

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

pub fn search_data_sets(
  client: Client,
  aws_account_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/accounts/", aws_account_id, "/search/data-sets"])

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

pub fn search_data_sources(
  client: Client,
  aws_account_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/accounts/", aws_account_id, "/search/data-sources"])

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

pub fn search_folders(
  client: Client,
  aws_account_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/accounts/", aws_account_id, "/search/folders"])

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

pub fn search_groups(
  client: Client,
  aws_account_id: String,
  namespace: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/namespaces/",
      namespace,
      "/groups-search",
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

pub fn start_asset_bundle_export_job(
  client: Client,
  aws_account_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/asset-bundle-export-jobs/export",
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

pub fn start_asset_bundle_import_job(
  client: Client,
  aws_account_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/asset-bundle-import-jobs/import",
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

pub fn start_dashboard_snapshot_job(
  client: Client,
  aws_account_id: String,
  dashboard_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/dashboards/",
      dashboard_id,
      "/snapshot-jobs",
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

pub fn tag_resource(
  client: Client,
  resource_arn: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/resources/", resource_arn, "/tags"])

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
  let path = string.concat(["/resources/", resource_arn, "/tags"])

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

pub fn update_account_customization(
  client: Client,
  aws_account_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/accounts/", aws_account_id, "/customizations"])

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

pub fn update_account_settings(
  client: Client,
  aws_account_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/accounts/", aws_account_id, "/settings"])

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

pub fn update_analysis(
  client: Client,
  aws_account_id: String,
  analysis_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/accounts/", aws_account_id, "/analyses/", analysis_id, ""])

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

pub fn update_analysis_permissions(
  client: Client,
  aws_account_id: String,
  analysis_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/analyses/",
      analysis_id,
      "/permissions",
    ])

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

pub fn update_dashboard(
  client: Client,
  aws_account_id: String,
  dashboard_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/dashboards/",
      dashboard_id,
      "",
    ])

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

pub fn update_dashboard_links(
  client: Client,
  aws_account_id: String,
  dashboard_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/dashboards/",
      dashboard_id,
      "/linked-entities",
    ])

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

pub fn update_dashboard_permissions(
  client: Client,
  aws_account_id: String,
  dashboard_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/dashboards/",
      dashboard_id,
      "/permissions",
    ])

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

pub fn update_dashboard_published_version(
  client: Client,
  aws_account_id: String,
  dashboard_id: String,
  version_number: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/dashboards/",
      dashboard_id,
      "/versions/",
      version_number,
      "",
    ])

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

pub fn update_data_set(
  client: Client,
  aws_account_id: String,
  data_set_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/accounts/", aws_account_id, "/data-sets/", data_set_id, ""])

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

pub fn update_data_set_permissions(
  client: Client,
  aws_account_id: String,
  data_set_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/data-sets/",
      data_set_id,
      "/permissions",
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

pub fn update_data_source(
  client: Client,
  aws_account_id: String,
  data_source_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/data-sources/",
      data_source_id,
      "",
    ])

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

pub fn update_data_source_permissions(
  client: Client,
  aws_account_id: String,
  data_source_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/data-sources/",
      data_source_id,
      "/permissions",
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

pub fn update_folder(
  client: Client,
  aws_account_id: String,
  folder_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/accounts/", aws_account_id, "/folders/", folder_id, ""])

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

pub fn update_folder_permissions(
  client: Client,
  aws_account_id: String,
  folder_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/folders/",
      folder_id,
      "/permissions",
    ])

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

pub fn update_group(
  client: Client,
  aws_account_id: String,
  namespace: String,
  group_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/namespaces/",
      namespace,
      "/groups/",
      group_name,
      "",
    ])

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

pub fn update_iam_policy_assignment(
  client: Client,
  aws_account_id: String,
  namespace: String,
  assignment_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/namespaces/",
      namespace,
      "/iam-policy-assignments/",
      assignment_name,
      "",
    ])

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

pub fn update_identity_propagation_config(
  client: Client,
  aws_account_id: String,
  service: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/identity-propagation-config/",
      service,
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

pub fn update_ip_restriction(
  client: Client,
  aws_account_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/accounts/", aws_account_id, "/ip-restriction"])

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

pub fn update_key_registration(
  client: Client,
  aws_account_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/accounts/", aws_account_id, "/key-registration"])

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

pub fn update_public_sharing_settings(
  client: Client,
  aws_account_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/accounts/", aws_account_id, "/public-sharing-settings"])

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

pub fn update_refresh_schedule(
  client: Client,
  aws_account_id: String,
  data_set_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/data-sets/",
      data_set_id,
      "/refresh-schedules",
    ])

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

pub fn update_role_custom_permission(
  client: Client,
  aws_account_id: String,
  namespace: String,
  role: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/namespaces/",
      namespace,
      "/roles/",
      role,
      "/custom-permission",
    ])

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

pub fn update_spice_capacity_configuration(
  client: Client,
  aws_account_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/spice-capacity-configuration",
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

pub fn update_template(
  client: Client,
  aws_account_id: String,
  template_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/accounts/", aws_account_id, "/templates/", template_id, ""])

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

pub fn update_template_alias(
  client: Client,
  aws_account_id: String,
  template_id: String,
  alias_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/templates/",
      template_id,
      "/aliases/",
      alias_name,
      "",
    ])

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

pub fn update_template_permissions(
  client: Client,
  aws_account_id: String,
  template_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/templates/",
      template_id,
      "/permissions",
    ])

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

pub fn update_theme(
  client: Client,
  aws_account_id: String,
  theme_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/accounts/", aws_account_id, "/themes/", theme_id, ""])

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

pub fn update_theme_alias(
  client: Client,
  aws_account_id: String,
  theme_id: String,
  alias_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/themes/",
      theme_id,
      "/aliases/",
      alias_name,
      "",
    ])

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

pub fn update_theme_permissions(
  client: Client,
  aws_account_id: String,
  theme_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/themes/",
      theme_id,
      "/permissions",
    ])

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

pub fn update_topic(
  client: Client,
  aws_account_id: String,
  topic_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/accounts/", aws_account_id, "/topics/", topic_id, ""])

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

pub fn update_topic_permissions(
  client: Client,
  aws_account_id: String,
  topic_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/topics/",
      topic_id,
      "/permissions",
    ])

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

pub fn update_topic_refresh_schedule(
  client: Client,
  aws_account_id: String,
  topic_id: String,
  dataset_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/topics/",
      topic_id,
      "/schedules/",
      dataset_id,
      "",
    ])

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

pub fn update_user(
  client: Client,
  aws_account_id: String,
  namespace: String,
  user_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/namespaces/",
      namespace,
      "/users/",
      user_name,
      "",
    ])

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

pub fn update_vpc_connection(
  client: Client,
  aws_account_id: String,
  vpc_connection_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/accounts/",
      aws_account_id,
      "/vpc-connections/",
      vpc_connection_id,
      "",
    ])

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
