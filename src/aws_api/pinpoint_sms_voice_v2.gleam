import aws4_request.{type Signer}
import aws_api/internal/endpoint
import aws_api/internal/metadata.{Metadata}
import aws_api/internal/request_builder
import gleam/http
import gleam/http/request.{type Request}
import gleam/option.{None, Some}

const content_type = "application/x-amz-json-1.0"

const metadata = Metadata(
  endpoint_prefix: "sms-voice",
  service_id: "PinpointSMSVoiceV2",
  signing_name: "sms-voice",
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

pub fn associate_origination_identity(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".AssociateOriginationIdentity"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn associate_protect_configuration(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".AssociateProtectConfiguration"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn create_configuration_set(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".CreateConfigurationSet"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn create_event_destination(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".CreateEventDestination"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn create_opt_out_list(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".CreateOptOutList"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn create_pool(client: Client, request_body: BitArray) -> Request(BitArray) {
  let target = metadata.service_id <> ".CreatePool"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn create_protect_configuration(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".CreateProtectConfiguration"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn create_registration(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".CreateRegistration"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn create_registration_association(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".CreateRegistrationAssociation"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn create_registration_attachment(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".CreateRegistrationAttachment"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn create_registration_version(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".CreateRegistrationVersion"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn create_verified_destination_number(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".CreateVerifiedDestinationNumber"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn delete_account_default_protect_configuration(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target =
    metadata.service_id <> ".DeleteAccountDefaultProtectConfiguration"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn delete_configuration_set(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DeleteConfigurationSet"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn delete_default_message_type(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DeleteDefaultMessageType"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn delete_default_sender_id(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DeleteDefaultSenderId"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn delete_event_destination(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DeleteEventDestination"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn delete_keyword(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DeleteKeyword"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn delete_media_message_spend_limit_override(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DeleteMediaMessageSpendLimitOverride"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn delete_opted_out_number(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DeleteOptedOutNumber"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn delete_opt_out_list(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DeleteOptOutList"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn delete_pool(client: Client, request_body: BitArray) -> Request(BitArray) {
  let target = metadata.service_id <> ".DeletePool"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn delete_protect_configuration(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DeleteProtectConfiguration"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn delete_registration(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DeleteRegistration"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn delete_registration_attachment(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DeleteRegistrationAttachment"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn delete_registration_field_value(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DeleteRegistrationFieldValue"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn delete_text_message_spend_limit_override(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DeleteTextMessageSpendLimitOverride"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn delete_verified_destination_number(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DeleteVerifiedDestinationNumber"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn delete_voice_message_spend_limit_override(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DeleteVoiceMessageSpendLimitOverride"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn describe_account_attributes(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DescribeAccountAttributes"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn describe_account_limits(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DescribeAccountLimits"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn describe_configuration_sets(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DescribeConfigurationSets"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn describe_keywords(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DescribeKeywords"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn describe_opted_out_numbers(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DescribeOptedOutNumbers"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn describe_opt_out_lists(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DescribeOptOutLists"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn describe_phone_numbers(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DescribePhoneNumbers"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn describe_pools(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DescribePools"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn describe_protect_configurations(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DescribeProtectConfigurations"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn describe_registration_attachments(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DescribeRegistrationAttachments"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn describe_registration_field_definitions(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DescribeRegistrationFieldDefinitions"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn describe_registration_field_values(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DescribeRegistrationFieldValues"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn describe_registrations(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DescribeRegistrations"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn describe_registration_section_definitions(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DescribeRegistrationSectionDefinitions"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn describe_registration_type_definitions(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DescribeRegistrationTypeDefinitions"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn describe_registration_versions(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DescribeRegistrationVersions"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn describe_sender_ids(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DescribeSenderIds"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn describe_spend_limits(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DescribeSpendLimits"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn describe_verified_destination_numbers(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DescribeVerifiedDestinationNumbers"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn disassociate_origination_identity(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DisassociateOriginationIdentity"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn disassociate_protect_configuration(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DisassociateProtectConfiguration"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn discard_registration_version(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DiscardRegistrationVersion"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn get_protect_configuration_country_rule_set(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".GetProtectConfigurationCountryRuleSet"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn list_pool_origination_identities(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".ListPoolOriginationIdentities"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn list_registration_associations(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".ListRegistrationAssociations"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
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
  let target = metadata.service_id <> ".ListTagsForResource"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn put_keyword(client: Client, request_body: BitArray) -> Request(BitArray) {
  let target = metadata.service_id <> ".PutKeyword"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn put_opted_out_number(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".PutOptedOutNumber"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn put_registration_field_value(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".PutRegistrationFieldValue"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn release_phone_number(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".ReleasePhoneNumber"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn release_sender_id(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".ReleaseSenderId"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn request_phone_number(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".RequestPhoneNumber"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn request_sender_id(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".RequestSenderId"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn send_destination_number_verification_code(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".SendDestinationNumberVerificationCode"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn send_media_message(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".SendMediaMessage"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn send_text_message(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".SendTextMessage"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn send_voice_message(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".SendVoiceMessage"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn set_account_default_protect_configuration(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".SetAccountDefaultProtectConfiguration"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn set_default_message_type(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".SetDefaultMessageType"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn set_default_sender_id(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".SetDefaultSenderId"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn set_media_message_spend_limit_override(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".SetMediaMessageSpendLimitOverride"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn set_text_message_spend_limit_override(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".SetTextMessageSpendLimitOverride"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn set_voice_message_spend_limit_override(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".SetVoiceMessageSpendLimitOverride"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn submit_registration_version(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".SubmitRegistrationVersion"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn tag_resource(client: Client, request_body: BitArray) -> Request(BitArray) {
  let target = metadata.service_id <> ".TagResource"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
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
  let target = metadata.service_id <> ".UntagResource"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn update_event_destination(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".UpdateEventDestination"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn update_phone_number(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".UpdatePhoneNumber"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn update_pool(client: Client, request_body: BitArray) -> Request(BitArray) {
  let target = metadata.service_id <> ".UpdatePool"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn update_protect_configuration(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".UpdateProtectConfiguration"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn update_protect_configuration_country_rule_set(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target =
    metadata.service_id <> ".UpdateProtectConfigurationCountryRuleSet"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn update_sender_id(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".UpdateSenderId"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}

pub fn verify_destination_number(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".VerifyDestinationNumber"
  let headers = [#("X-Amz-Target", target), #("content-type", content_type)]
  request_builder.build(
    client.signer,
    client.endpoint,
    http.Post,
    "",
    headers,
    None,
    Some(request_body),
  )
}
