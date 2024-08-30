import aws4_request.{type Signer}
import aws_api/internal/endpoint
import aws_api/internal/metadata.{Metadata}
import aws_api/internal/request_builder
import gleam/http.{type Header}
import gleam/http/request.{type Request}
import gleam/option.{type Option}
import gleam/string

const metadata = Metadata(
  endpoint_prefix: "email",
  service_id: "SimpleEmailService_v2",
  signing_name: "ses",
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

pub fn batch_get_metric_data(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v2/email/metrics/batch"])

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

pub fn cancel_export_job(
  client: Client,
  job_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v2/email/export-jobs/", job_id, "/cancel"])

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

pub fn create_configuration_set(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v2/email/configuration-sets"])

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

pub fn create_configuration_set_event_destination(
  client: Client,
  configuration_set_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/v2/email/configuration-sets/",
      configuration_set_name,
      "/event-destinations",
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

pub fn create_contact(
  client: Client,
  contact_list_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/v2/email/contact-lists/", contact_list_name, "/contacts"])

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

pub fn create_contact_list(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v2/email/contact-lists"])

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

pub fn create_custom_verification_email_template(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v2/email/custom-verification-email-templates"])

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

pub fn create_dedicated_ip_pool(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v2/email/dedicated-ip-pools"])

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

pub fn create_deliverability_test_report(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v2/email/deliverability-dashboard/test"])

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

pub fn create_email_identity(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v2/email/identities"])

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

pub fn create_email_identity_policy(
  client: Client,
  email_identity: String,
  policy_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/v2/email/identities/",
      email_identity,
      "/policies/",
      policy_name,
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

pub fn create_email_template(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v2/email/templates"])

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

pub fn create_export_job(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v2/email/export-jobs"])

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

pub fn create_import_job(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v2/email/import-jobs"])

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

pub fn delete_configuration_set(
  client: Client,
  configuration_set_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/v2/email/configuration-sets/", configuration_set_name, ""])

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

pub fn delete_configuration_set_event_destination(
  client: Client,
  configuration_set_name: String,
  event_destination_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/v2/email/configuration-sets/",
      configuration_set_name,
      "/event-destinations/",
      event_destination_name,
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

pub fn delete_contact(
  client: Client,
  contact_list_name: String,
  email_address: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/v2/email/contact-lists/",
      contact_list_name,
      "/contacts/",
      email_address,
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

pub fn delete_contact_list(
  client: Client,
  contact_list_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v2/email/contact-lists/", contact_list_name, ""])

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

pub fn delete_custom_verification_email_template(
  client: Client,
  template_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/v2/email/custom-verification-email-templates/",
      template_name,
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

pub fn delete_dedicated_ip_pool(
  client: Client,
  pool_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v2/email/dedicated-ip-pools/", pool_name, ""])

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

pub fn delete_email_identity(
  client: Client,
  email_identity: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v2/email/identities/", email_identity, ""])

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

pub fn delete_email_identity_policy(
  client: Client,
  email_identity: String,
  policy_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/v2/email/identities/",
      email_identity,
      "/policies/",
      policy_name,
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

pub fn delete_email_template(
  client: Client,
  template_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v2/email/templates/", template_name, ""])

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

pub fn delete_suppressed_destination(
  client: Client,
  email_address: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/v2/email/suppression/addresses/", email_address, ""])

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

pub fn get_account(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v2/email/account"])

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

pub fn get_blacklist_reports(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/v2/email/deliverability-dashboard/blacklist-report"])

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

pub fn get_configuration_set(
  client: Client,
  configuration_set_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/v2/email/configuration-sets/", configuration_set_name, ""])

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

pub fn get_configuration_set_event_destinations(
  client: Client,
  configuration_set_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/v2/email/configuration-sets/",
      configuration_set_name,
      "/event-destinations",
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

pub fn get_contact(
  client: Client,
  contact_list_name: String,
  email_address: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/v2/email/contact-lists/",
      contact_list_name,
      "/contacts/",
      email_address,
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

pub fn get_contact_list(
  client: Client,
  contact_list_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v2/email/contact-lists/", contact_list_name, ""])

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

pub fn get_custom_verification_email_template(
  client: Client,
  template_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/v2/email/custom-verification-email-templates/",
      template_name,
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

pub fn get_dedicated_ip(
  client: Client,
  ip: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v2/email/dedicated-ips/", ip, ""])

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

pub fn get_dedicated_ip_pool(
  client: Client,
  pool_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v2/email/dedicated-ip-pools/", pool_name, ""])

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

pub fn get_dedicated_ips(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v2/email/dedicated-ips"])

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

pub fn get_deliverability_dashboard_options(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v2/email/deliverability-dashboard"])

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

pub fn get_deliverability_test_report(
  client: Client,
  report_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/v2/email/deliverability-dashboard/test-reports/",
      report_id,
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

pub fn get_domain_deliverability_campaign(
  client: Client,
  campaign_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/v2/email/deliverability-dashboard/campaigns/",
      campaign_id,
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

pub fn get_domain_statistics_report(
  client: Client,
  domain: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/v2/email/deliverability-dashboard/statistics-report/",
      domain,
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

pub fn get_email_identity(
  client: Client,
  email_identity: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v2/email/identities/", email_identity, ""])

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

pub fn get_email_identity_policies(
  client: Client,
  email_identity: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/v2/email/identities/", email_identity, "/policies"])

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

pub fn get_email_template(
  client: Client,
  template_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v2/email/templates/", template_name, ""])

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

pub fn get_export_job(
  client: Client,
  job_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v2/email/export-jobs/", job_id, ""])

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

pub fn get_import_job(
  client: Client,
  job_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v2/email/import-jobs/", job_id, ""])

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

pub fn get_message_insights(
  client: Client,
  message_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v2/email/insights/", message_id, ""])

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

pub fn get_suppressed_destination(
  client: Client,
  email_address: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/v2/email/suppression/addresses/", email_address, ""])

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

pub fn list_configuration_sets(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v2/email/configuration-sets"])

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

pub fn list_contact_lists(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v2/email/contact-lists"])

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

pub fn list_contacts(
  client: Client,
  contact_list_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/v2/email/contact-lists/",
      contact_list_name,
      "/contacts/list",
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

pub fn list_custom_verification_email_templates(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v2/email/custom-verification-email-templates"])

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

pub fn list_dedicated_ip_pools(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v2/email/dedicated-ip-pools"])

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

pub fn list_deliverability_test_reports(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v2/email/deliverability-dashboard/test-reports"])

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

pub fn list_domain_deliverability_campaigns(
  client: Client,
  subscribed_domain: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/v2/email/deliverability-dashboard/domains/",
      subscribed_domain,
      "/campaigns",
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

pub fn list_email_identities(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v2/email/identities"])

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

pub fn list_email_templates(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v2/email/templates"])

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

pub fn list_export_jobs(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v2/email/list-export-jobs"])

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

pub fn list_import_jobs(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v2/email/import-jobs/list"])

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

pub fn list_recommendations(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v2/email/vdm/recommendations"])

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

pub fn list_suppressed_destinations(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v2/email/suppression/addresses"])

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
  let path = string.concat(["/v2/email/tags"])

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

pub fn put_account_dedicated_ip_warmup_attributes(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v2/email/account/dedicated-ips/warmup"])

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

pub fn put_account_details(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v2/email/account/details"])

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

pub fn put_account_sending_attributes(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v2/email/account/sending"])

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

pub fn put_account_suppression_attributes(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v2/email/account/suppression"])

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

pub fn put_account_vdm_attributes(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v2/email/account/vdm"])

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

pub fn put_configuration_set_delivery_options(
  client: Client,
  configuration_set_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/v2/email/configuration-sets/",
      configuration_set_name,
      "/delivery-options",
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

pub fn put_configuration_set_reputation_options(
  client: Client,
  configuration_set_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/v2/email/configuration-sets/",
      configuration_set_name,
      "/reputation-options",
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

pub fn put_configuration_set_sending_options(
  client: Client,
  configuration_set_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/v2/email/configuration-sets/",
      configuration_set_name,
      "/sending",
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

pub fn put_configuration_set_suppression_options(
  client: Client,
  configuration_set_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/v2/email/configuration-sets/",
      configuration_set_name,
      "/suppression-options",
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

pub fn put_configuration_set_tracking_options(
  client: Client,
  configuration_set_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/v2/email/configuration-sets/",
      configuration_set_name,
      "/tracking-options",
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

pub fn put_configuration_set_vdm_options(
  client: Client,
  configuration_set_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/v2/email/configuration-sets/",
      configuration_set_name,
      "/vdm-options",
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

pub fn put_dedicated_ip_in_pool(
  client: Client,
  ip: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v2/email/dedicated-ips/", ip, "/pool"])

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

pub fn put_dedicated_ip_pool_scaling_attributes(
  client: Client,
  pool_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/v2/email/dedicated-ip-pools/", pool_name, "/scaling"])

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

pub fn put_dedicated_ip_warmup_attributes(
  client: Client,
  ip: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v2/email/dedicated-ips/", ip, "/warmup"])

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

pub fn put_deliverability_dashboard_option(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v2/email/deliverability-dashboard"])

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

pub fn put_email_identity_configuration_set_attributes(
  client: Client,
  email_identity: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/v2/email/identities/",
      email_identity,
      "/configuration-set",
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

pub fn put_email_identity_dkim_attributes(
  client: Client,
  email_identity: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v2/email/identities/", email_identity, "/dkim"])

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

pub fn put_email_identity_dkim_signing_attributes(
  client: Client,
  email_identity: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/v1/email/identities/", email_identity, "/dkim/signing"])

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

pub fn put_email_identity_feedback_attributes(
  client: Client,
  email_identity: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/v2/email/identities/", email_identity, "/feedback"])

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

pub fn put_email_identity_mail_from_attributes(
  client: Client,
  email_identity: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/v2/email/identities/", email_identity, "/mail-from"])

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

pub fn put_suppressed_destination(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v2/email/suppression/addresses"])

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

pub fn send_bulk_email(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v2/email/outbound-bulk-emails"])

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

pub fn send_custom_verification_email(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v2/email/outbound-custom-verification-emails"])

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

pub fn send_email(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v2/email/outbound-emails"])

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
  let path = string.concat(["/v2/email/tags"])

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

pub fn test_render_email_template(
  client: Client,
  template_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v2/email/templates/", template_name, "/render"])

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
  let path = string.concat(["/v2/email/tags"])

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

pub fn update_configuration_set_event_destination(
  client: Client,
  configuration_set_name: String,
  event_destination_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/v2/email/configuration-sets/",
      configuration_set_name,
      "/event-destinations/",
      event_destination_name,
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

pub fn update_contact(
  client: Client,
  contact_list_name: String,
  email_address: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/v2/email/contact-lists/",
      contact_list_name,
      "/contacts/",
      email_address,
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

pub fn update_contact_list(
  client: Client,
  contact_list_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v2/email/contact-lists/", contact_list_name, ""])

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

pub fn update_custom_verification_email_template(
  client: Client,
  template_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/v2/email/custom-verification-email-templates/",
      template_name,
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

pub fn update_email_identity_policy(
  client: Client,
  email_identity: String,
  policy_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/v2/email/identities/",
      email_identity,
      "/policies/",
      policy_name,
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

pub fn update_email_template(
  client: Client,
  template_name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/v2/email/templates/", template_name, ""])

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
