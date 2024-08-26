import aws_request/config.{type Config}
import aws_request/internal/endpoint
import aws_request/internal/metadata.{Metadata}
import aws_request/internal/request_builder.{type RequestBuilder, RequestBuilder}
import gleam/http
import gleam/http/request.{type Request}
import gleam/option.{None, Some}

const content_type = "application/x-amz-json-1.1"

const metadata = Metadata(
  endpoint_prefix: "opsworks",
  service_id: "OpsWorks_20130218",
  signing_name: "opsworks",
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

pub fn assign_instance(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".AssignInstance"
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

pub fn assign_volume(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".AssignVolume"
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

pub fn associate_elastic_ip(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".AssociateElasticIp"
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

pub fn attach_elastic_load_balancer(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".AttachElasticLoadBalancer"
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

pub fn clone_stack(client: Client, request_body: BitArray) -> Request(BitArray) {
  let target = client.builder.service_id <> ".CloneStack"
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

pub fn create_app(client: Client, request_body: BitArray) -> Request(BitArray) {
  let target = client.builder.service_id <> ".CreateApp"
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

pub fn create_deployment(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".CreateDeployment"
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

pub fn create_instance(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".CreateInstance"
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

pub fn create_layer(client: Client, request_body: BitArray) -> Request(BitArray) {
  let target = client.builder.service_id <> ".CreateLayer"
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

pub fn create_stack(client: Client, request_body: BitArray) -> Request(BitArray) {
  let target = client.builder.service_id <> ".CreateStack"
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

pub fn create_user_profile(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".CreateUserProfile"
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

pub fn delete_app(client: Client, request_body: BitArray) -> Request(BitArray) {
  let target = client.builder.service_id <> ".DeleteApp"
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

pub fn delete_instance(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".DeleteInstance"
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

pub fn delete_layer(client: Client, request_body: BitArray) -> Request(BitArray) {
  let target = client.builder.service_id <> ".DeleteLayer"
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

pub fn delete_stack(client: Client, request_body: BitArray) -> Request(BitArray) {
  let target = client.builder.service_id <> ".DeleteStack"
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

pub fn delete_user_profile(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".DeleteUserProfile"
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

pub fn deregister_ecs_cluster(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".DeregisterEcsCluster"
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

pub fn deregister_elastic_ip(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".DeregisterElasticIp"
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

pub fn deregister_instance(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".DeregisterInstance"
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

pub fn deregister_rds_db_instance(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".DeregisterRdsDbInstance"
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

pub fn deregister_volume(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".DeregisterVolume"
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

pub fn describe_agent_versions(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".DescribeAgentVersions"
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

pub fn describe_apps(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".DescribeApps"
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

pub fn describe_commands(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".DescribeCommands"
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

pub fn describe_deployments(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".DescribeDeployments"
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

pub fn describe_ecs_clusters(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".DescribeEcsClusters"
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

pub fn describe_elastic_ips(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".DescribeElasticIps"
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

pub fn describe_elastic_load_balancers(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".DescribeElasticLoadBalancers"
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

pub fn describe_instances(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".DescribeInstances"
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

pub fn describe_layers(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".DescribeLayers"
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

pub fn describe_load_based_auto_scaling(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".DescribeLoadBasedAutoScaling"
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

pub fn describe_my_user_profile(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".DescribeMyUserProfile"
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

pub fn describe_operating_systems(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".DescribeOperatingSystems"
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

pub fn describe_permissions(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".DescribePermissions"
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

pub fn describe_raid_arrays(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".DescribeRaidArrays"
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

pub fn describe_rds_db_instances(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".DescribeRdsDbInstances"
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

pub fn describe_service_errors(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".DescribeServiceErrors"
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

pub fn describe_stack_provisioning_parameters(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target =
    client.builder.service_id <> ".DescribeStackProvisioningParameters"
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

pub fn describe_stacks(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".DescribeStacks"
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

pub fn describe_stack_summary(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".DescribeStackSummary"
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

pub fn describe_time_based_auto_scaling(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".DescribeTimeBasedAutoScaling"
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

pub fn describe_user_profiles(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".DescribeUserProfiles"
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

pub fn describe_volumes(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".DescribeVolumes"
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

pub fn detach_elastic_load_balancer(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".DetachElasticLoadBalancer"
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

pub fn disassociate_elastic_ip(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".DisassociateElasticIp"
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

pub fn get_hostname_suggestion(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".GetHostnameSuggestion"
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

pub fn grant_access(client: Client, request_body: BitArray) -> Request(BitArray) {
  let target = client.builder.service_id <> ".GrantAccess"
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

pub fn list_tags(client: Client, request_body: BitArray) -> Request(BitArray) {
  let target = client.builder.service_id <> ".ListTags"
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

pub fn reboot_instance(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".RebootInstance"
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

pub fn register_ecs_cluster(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".RegisterEcsCluster"
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

pub fn register_elastic_ip(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".RegisterElasticIp"
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

pub fn register_instance(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".RegisterInstance"
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

pub fn register_rds_db_instance(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".RegisterRdsDbInstance"
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

pub fn register_volume(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".RegisterVolume"
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

pub fn set_load_based_auto_scaling(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".SetLoadBasedAutoScaling"
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

pub fn set_permission(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".SetPermission"
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

pub fn set_time_based_auto_scaling(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".SetTimeBasedAutoScaling"
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

pub fn start_instance(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".StartInstance"
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

pub fn start_stack(client: Client, request_body: BitArray) -> Request(BitArray) {
  let target = client.builder.service_id <> ".StartStack"
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

pub fn stop_instance(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".StopInstance"
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

pub fn stop_stack(client: Client, request_body: BitArray) -> Request(BitArray) {
  let target = client.builder.service_id <> ".StopStack"
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

pub fn unassign_instance(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".UnassignInstance"
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

pub fn unassign_volume(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".UnassignVolume"
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

pub fn update_app(client: Client, request_body: BitArray) -> Request(BitArray) {
  let target = client.builder.service_id <> ".UpdateApp"
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

pub fn update_elastic_ip(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".UpdateElasticIp"
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

pub fn update_instance(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".UpdateInstance"
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

pub fn update_layer(client: Client, request_body: BitArray) -> Request(BitArray) {
  let target = client.builder.service_id <> ".UpdateLayer"
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

pub fn update_my_user_profile(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".UpdateMyUserProfile"
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

pub fn update_rds_db_instance(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".UpdateRdsDbInstance"
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

pub fn update_stack(client: Client, request_body: BitArray) -> Request(BitArray) {
  let target = client.builder.service_id <> ".UpdateStack"
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

pub fn update_user_profile(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".UpdateUserProfile"
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

pub fn update_volume(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = client.builder.service_id <> ".UpdateVolume"
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
