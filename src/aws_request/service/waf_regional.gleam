import aws_request/config.{type Config}
import aws_request/internal/endpoint
import aws_request/internal/metadata.{Metadata}
import aws_request/internal/request_builder.{type RequestBuilder, RequestBuilder}
import gleam/http
import gleam/http/request.{type Request}
import gleam/option.{None, Some}

const content_type = "application/x-amz-json-1.1"

const metadata = Metadata(
  endpoint_prefix: "waf-regional",
  service_id: "AWSWAF_Regional_20161128",
  signing_name: "waf-regional",
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

pub fn associate_web_acl(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".AssociateWebACL"
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

pub fn create_byte_match_set(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".CreateByteMatchSet"
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

pub fn create_geo_match_set(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".CreateGeoMatchSet"
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

pub fn create_ip_set(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".CreateIPSet"
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

pub fn create_rate_based_rule(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".CreateRateBasedRule"
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

pub fn create_regex_match_set(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".CreateRegexMatchSet"
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

pub fn create_regex_pattern_set(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".CreateRegexPatternSet"
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

pub fn create_rule(client: Client, request_body: BitArray) -> Request(BitArray) {
  let target = client.builder.service_id <> ".CreateRule"
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

pub fn create_rule_group(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".CreateRuleGroup"
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

pub fn create_size_constraint_set(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".CreateSizeConstraintSet"
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

pub fn create_sql_injection_match_set(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".CreateSqlInjectionMatchSet"
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

pub fn create_web_acl(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".CreateWebACL"
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

pub fn create_web_acl_migration_stack(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".CreateWebACLMigrationStack"
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

pub fn create_xss_match_set(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".CreateXssMatchSet"
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

pub fn delete_byte_match_set(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".DeleteByteMatchSet"
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

pub fn delete_geo_match_set(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".DeleteGeoMatchSet"
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

pub fn delete_ip_set(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".DeleteIPSet"
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

pub fn delete_logging_configuration(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".DeleteLoggingConfiguration"
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

pub fn delete_permission_policy(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".DeletePermissionPolicy"
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

pub fn delete_rate_based_rule(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".DeleteRateBasedRule"
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

pub fn delete_regex_match_set(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".DeleteRegexMatchSet"
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

pub fn delete_regex_pattern_set(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".DeleteRegexPatternSet"
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

pub fn delete_rule(client: Client, request_body: BitArray) -> Request(BitArray) {
  let target = client.builder.service_id <> ".DeleteRule"
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

pub fn delete_rule_group(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".DeleteRuleGroup"
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

pub fn delete_size_constraint_set(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".DeleteSizeConstraintSet"
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

pub fn delete_sql_injection_match_set(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".DeleteSqlInjectionMatchSet"
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

pub fn delete_web_acl(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".DeleteWebACL"
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

pub fn delete_xss_match_set(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".DeleteXssMatchSet"
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

pub fn disassociate_web_acl(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".DisassociateWebACL"
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

pub fn get_byte_match_set(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".GetByteMatchSet"
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

pub fn get_change_token(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".GetChangeToken"
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

pub fn get_change_token_status(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".GetChangeTokenStatus"
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

pub fn get_geo_match_set(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".GetGeoMatchSet"
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

pub fn get_ip_set(client: Client, request_body: BitArray) -> Request(BitArray) {
  let target = client.builder.service_id <> ".GetIPSet"
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

pub fn get_logging_configuration(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".GetLoggingConfiguration"
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

pub fn get_permission_policy(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".GetPermissionPolicy"
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

pub fn get_rate_based_rule(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".GetRateBasedRule"
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

pub fn get_rate_based_rule_managed_keys(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".GetRateBasedRuleManagedKeys"
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

pub fn get_regex_match_set(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".GetRegexMatchSet"
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

pub fn get_regex_pattern_set(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".GetRegexPatternSet"
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

pub fn get_rule(client: Client, request_body: BitArray) -> Request(BitArray) {
  let target = client.builder.service_id <> ".GetRule"
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

pub fn get_rule_group(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".GetRuleGroup"
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

pub fn get_sampled_requests(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".GetSampledRequests"
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

pub fn get_size_constraint_set(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".GetSizeConstraintSet"
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

pub fn get_sql_injection_match_set(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".GetSqlInjectionMatchSet"
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

pub fn get_web_acl(client: Client, request_body: BitArray) -> Request(BitArray) {
  let target = client.builder.service_id <> ".GetWebACL"
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

pub fn get_web_acl_for_resource(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".GetWebACLForResource"
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

pub fn get_xss_match_set(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".GetXssMatchSet"
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

pub fn list_activated_rules_in_rule_group(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".ListActivatedRulesInRuleGroup"
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

pub fn list_byte_match_sets(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".ListByteMatchSets"
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

pub fn list_geo_match_sets(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".ListGeoMatchSets"
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

pub fn list_ip_sets(client: Client, request_body: BitArray) -> Request(BitArray) {
  let target = client.builder.service_id <> ".ListIPSets"
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

pub fn list_logging_configurations(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".ListLoggingConfigurations"
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

pub fn list_rate_based_rules(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".ListRateBasedRules"
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

pub fn list_regex_match_sets(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".ListRegexMatchSets"
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

pub fn list_regex_pattern_sets(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".ListRegexPatternSets"
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

pub fn list_resources_for_web_acl(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".ListResourcesForWebACL"
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

pub fn list_rule_groups(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".ListRuleGroups"
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

pub fn list_rules(client: Client, request_body: BitArray) -> Request(BitArray) {
  let target = client.builder.service_id <> ".ListRules"
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

pub fn list_size_constraint_sets(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".ListSizeConstraintSets"
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

pub fn list_sql_injection_match_sets(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".ListSqlInjectionMatchSets"
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

pub fn list_subscribed_rule_groups(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".ListSubscribedRuleGroups"
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

pub fn list_web_ac_ls(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".ListWebACLs"
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

pub fn list_xss_match_sets(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".ListXssMatchSets"
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

pub fn put_logging_configuration(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".PutLoggingConfiguration"
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

pub fn put_permission_policy(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".PutPermissionPolicy"
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

pub fn update_byte_match_set(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".UpdateByteMatchSet"
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

pub fn update_geo_match_set(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".UpdateGeoMatchSet"
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

pub fn update_ip_set(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".UpdateIPSet"
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

pub fn update_rate_based_rule(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".UpdateRateBasedRule"
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

pub fn update_regex_match_set(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".UpdateRegexMatchSet"
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

pub fn update_regex_pattern_set(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".UpdateRegexPatternSet"
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

pub fn update_rule(client: Client, request_body: BitArray) -> Request(BitArray) {
  let target = client.builder.service_id <> ".UpdateRule"
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

pub fn update_rule_group(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".UpdateRuleGroup"
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

pub fn update_size_constraint_set(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".UpdateSizeConstraintSet"
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

pub fn update_sql_injection_match_set(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".UpdateSqlInjectionMatchSet"
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

pub fn update_web_acl(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".UpdateWebACL"
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

pub fn update_xss_match_set(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".UpdateXssMatchSet"
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
