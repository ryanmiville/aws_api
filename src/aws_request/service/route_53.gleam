import aws_request/config.{type Config}
import aws_request/internal/endpoint
import aws_request/internal/metadata.{Metadata}
import aws_request/internal/request_builder.{type RequestBuilder, RequestBuilder}
import gleam/http.{type Header}
import gleam/http/request.{type Request}
import gleam/option.{type Option}
import gleam/string

const metadata = Metadata(
  endpoint_prefix: "route53",
  service_id: "AWSDnsV20130401",
  signing_name: "route53",
  global: option.Some(metadata.Global("us-east-1", "route53.amazonaws.com")),
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

pub fn activate_key_signing_key(
  client: Client,
  hosted_zone_id: String,
  name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/2013-04-01/keysigningkey/",
      hosted_zone_id,
      "/",
      name,
      "/activate",
    ])

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

pub fn associate_vpc_with_hosted_zone(
  client: Client,
  hosted_zone_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/2013-04-01/hostedzone/", hosted_zone_id, "/associatevpc"])

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

pub fn change_cidr_collection(
  client: Client,
  id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/2013-04-01/cidrcollection/", id, ""])

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

pub fn change_resource_record_sets(
  client: Client,
  hosted_zone_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/2013-04-01/hostedzone/", hosted_zone_id, "/rrset"])

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

pub fn change_tags_for_resource(
  client: Client,
  resource_type: String,
  resource_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/2013-04-01/tags/", resource_type, "/", resource_id, ""])

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

pub fn create_cidr_collection(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/2013-04-01/cidrcollection"])

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

pub fn create_health_check(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/2013-04-01/healthcheck"])

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

pub fn create_hosted_zone(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/2013-04-01/hostedzone"])

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

pub fn create_key_signing_key(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/2013-04-01/keysigningkey"])

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

pub fn create_query_logging_config(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/2013-04-01/queryloggingconfig"])

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

pub fn create_reusable_delegation_set(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/2013-04-01/delegationset"])

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

pub fn create_traffic_policy(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/2013-04-01/trafficpolicy"])

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

pub fn create_traffic_policy_instance(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/2013-04-01/trafficpolicyinstance"])

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

pub fn create_traffic_policy_version(
  client: Client,
  id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/2013-04-01/trafficpolicy/", id, ""])

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

pub fn create_vpc_association_authorization(
  client: Client,
  hosted_zone_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/2013-04-01/hostedzone/",
      hosted_zone_id,
      "/authorizevpcassociation",
    ])

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

pub fn deactivate_key_signing_key(
  client: Client,
  hosted_zone_id: String,
  name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/2013-04-01/keysigningkey/",
      hosted_zone_id,
      "/",
      name,
      "/deactivate",
    ])

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

pub fn delete_cidr_collection(
  client: Client,
  id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/2013-04-01/cidrcollection/", id, ""])

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

pub fn delete_health_check(
  client: Client,
  health_check_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/2013-04-01/healthcheck/", health_check_id, ""])

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

pub fn delete_hosted_zone(
  client: Client,
  id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/2013-04-01/hostedzone/", id, ""])

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

pub fn delete_key_signing_key(
  client: Client,
  hosted_zone_id: String,
  name: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/2013-04-01/keysigningkey/", hosted_zone_id, "/", name, ""])

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

pub fn delete_query_logging_config(
  client: Client,
  id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/2013-04-01/queryloggingconfig/", id, ""])

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

pub fn delete_reusable_delegation_set(
  client: Client,
  id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/2013-04-01/delegationset/", id, ""])

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

pub fn delete_traffic_policy(
  client: Client,
  id: String,
  version: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/2013-04-01/trafficpolicy/", id, "/", version, ""])

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

pub fn delete_traffic_policy_instance(
  client: Client,
  id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/2013-04-01/trafficpolicyinstance/", id, ""])

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

pub fn delete_vpc_association_authorization(
  client: Client,
  hosted_zone_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/2013-04-01/hostedzone/",
      hosted_zone_id,
      "/deauthorizevpcassociation",
    ])

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

pub fn disable_hosted_zone_dnssec(
  client: Client,
  hosted_zone_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/2013-04-01/hostedzone/", hosted_zone_id, "/disable-dnssec"])

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

pub fn disassociate_vpc_from_hosted_zone(
  client: Client,
  hosted_zone_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/2013-04-01/hostedzone/",
      hosted_zone_id,
      "/disassociatevpc",
    ])

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

pub fn enable_hosted_zone_dnssec(
  client: Client,
  hosted_zone_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/2013-04-01/hostedzone/", hosted_zone_id, "/enable-dnssec"])

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

pub fn get_account_limit(
  client: Client,
  type_: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/2013-04-01/accountlimit/", type_, ""])

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

pub fn get_change(
  client: Client,
  id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/2013-04-01/change/", id, ""])

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

pub fn get_checker_ip_ranges(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/2013-04-01/checkeripranges"])

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

pub fn get_dnssec(
  client: Client,
  hosted_zone_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/2013-04-01/hostedzone/", hosted_zone_id, "/dnssec"])

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

pub fn get_geo_location(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/2013-04-01/geolocation"])

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

pub fn get_health_check(
  client: Client,
  health_check_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/2013-04-01/healthcheck/", health_check_id, ""])

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

pub fn get_health_check_count(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/2013-04-01/healthcheckcount"])

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

pub fn get_health_check_last_failure_reason(
  client: Client,
  health_check_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/2013-04-01/healthcheck/",
      health_check_id,
      "/lastfailurereason",
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

pub fn get_health_check_status(
  client: Client,
  health_check_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/2013-04-01/healthcheck/", health_check_id, "/status"])

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

pub fn get_hosted_zone(
  client: Client,
  id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/2013-04-01/hostedzone/", id, ""])

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

pub fn get_hosted_zone_count(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/2013-04-01/hostedzonecount"])

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

pub fn get_hosted_zone_limit(
  client: Client,
  hosted_zone_id: String,
  type_: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/2013-04-01/hostedzonelimit/",
      hosted_zone_id,
      "/",
      type_,
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

pub fn get_query_logging_config(
  client: Client,
  id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/2013-04-01/queryloggingconfig/", id, ""])

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

pub fn get_reusable_delegation_set(
  client: Client,
  id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/2013-04-01/delegationset/", id, ""])

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

pub fn get_reusable_delegation_set_limit(
  client: Client,
  delegation_set_id: String,
  type_: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/2013-04-01/reusabledelegationsetlimit/",
      delegation_set_id,
      "/",
      type_,
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

pub fn get_traffic_policy(
  client: Client,
  id: String,
  version: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/2013-04-01/trafficpolicy/", id, "/", version, ""])

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

pub fn get_traffic_policy_instance(
  client: Client,
  id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/2013-04-01/trafficpolicyinstance/", id, ""])

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

pub fn get_traffic_policy_instance_count(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/2013-04-01/trafficpolicyinstancecount"])

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

pub fn list_cidr_blocks(
  client: Client,
  collection_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/2013-04-01/cidrcollection/", collection_id, "/cidrblocks"])

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

pub fn list_cidr_collections(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/2013-04-01/cidrcollection"])

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

pub fn list_cidr_locations(
  client: Client,
  collection_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/2013-04-01/cidrcollection/", collection_id, ""])

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

pub fn list_geo_locations(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/2013-04-01/geolocations"])

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

pub fn list_health_checks(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/2013-04-01/healthcheck"])

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

pub fn list_hosted_zones(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/2013-04-01/hostedzone"])

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

pub fn list_hosted_zones_by_name(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/2013-04-01/hostedzonesbyname"])

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

pub fn list_hosted_zones_by_vpc(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/2013-04-01/hostedzonesbyvpc"])

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

pub fn list_query_logging_configs(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/2013-04-01/queryloggingconfig"])

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

pub fn list_resource_record_sets(
  client: Client,
  hosted_zone_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/2013-04-01/hostedzone/", hosted_zone_id, "/rrset"])

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

pub fn list_reusable_delegation_sets(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/2013-04-01/delegationset"])

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
  resource_type: String,
  resource_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/2013-04-01/tags/", resource_type, "/", resource_id, ""])

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

pub fn list_tags_for_resources(
  client: Client,
  resource_type: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/2013-04-01/tags/", resource_type, ""])

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

pub fn list_traffic_policies(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/2013-04-01/trafficpolicies"])

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

pub fn list_traffic_policy_instances(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/2013-04-01/trafficpolicyinstances"])

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

pub fn list_traffic_policy_instances_by_hosted_zone(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/2013-04-01/trafficpolicyinstances/hostedzone"])

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

pub fn list_traffic_policy_instances_by_policy(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/2013-04-01/trafficpolicyinstances/trafficpolicy"])

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

pub fn list_traffic_policy_versions(
  client: Client,
  id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/2013-04-01/trafficpolicies/", id, "/versions"])

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

pub fn list_vpc_association_authorizations(
  client: Client,
  hosted_zone_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/2013-04-01/hostedzone/",
      hosted_zone_id,
      "/authorizevpcassociation",
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

pub fn test_dns_answer(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/2013-04-01/testdnsanswer"])

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

pub fn update_health_check(
  client: Client,
  health_check_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/2013-04-01/healthcheck/", health_check_id, ""])

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

pub fn update_hosted_zone_comment(
  client: Client,
  id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/2013-04-01/hostedzone/", id, ""])

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

pub fn update_traffic_policy_comment(
  client: Client,
  id: String,
  version: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/2013-04-01/trafficpolicy/", id, "/", version, ""])

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

pub fn update_traffic_policy_instance(
  client: Client,
  id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/2013-04-01/trafficpolicyinstance/", id, ""])

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
