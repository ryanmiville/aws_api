import aws4_request.{type Signer}
import aws_api/internal/endpoint
import aws_api/internal/metadata.{Metadata}
import aws_api/internal/request_builder
import gleam/http
import gleam/http/request.{type Request}
import gleam/option.{None, Some}

const content_type = "application/x-amz-json-1.1"

const metadata = Metadata(
  endpoint_prefix: "workspaces",
  service_id: "WorkspacesService",
  signing_name: "workspaces",
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

pub fn accept_account_link_invitation(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".AcceptAccountLinkInvitation"
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

pub fn associate_connection_alias(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".AssociateConnectionAlias"
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

pub fn associate_ip_groups(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".AssociateIpGroups"
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

pub fn associate_workspace_application(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".AssociateWorkspaceApplication"
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

pub fn authorize_ip_rules(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".AuthorizeIpRules"
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

pub fn copy_workspace_image(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".CopyWorkspaceImage"
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

pub fn create_account_link_invitation(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".CreateAccountLinkInvitation"
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

pub fn create_connect_client_add_in(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".CreateConnectClientAddIn"
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

pub fn create_connection_alias(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".CreateConnectionAlias"
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

pub fn create_ip_group(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".CreateIpGroup"
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

pub fn create_standby_workspaces(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".CreateStandbyWorkspaces"
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

pub fn create_tags(client: Client, request_body: BitArray) -> Request(BitArray) {
  let target = metadata.service_id <> ".CreateTags"
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

pub fn create_updated_workspace_image(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".CreateUpdatedWorkspaceImage"
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

pub fn create_workspace_bundle(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".CreateWorkspaceBundle"
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

pub fn create_workspace_image(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".CreateWorkspaceImage"
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

pub fn create_workspaces(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".CreateWorkspaces"
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

pub fn create_workspaces_pool(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".CreateWorkspacesPool"
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

pub fn delete_account_link_invitation(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DeleteAccountLinkInvitation"
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

pub fn delete_client_branding(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DeleteClientBranding"
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

pub fn delete_connect_client_add_in(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DeleteConnectClientAddIn"
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

pub fn delete_connection_alias(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DeleteConnectionAlias"
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

pub fn delete_ip_group(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DeleteIpGroup"
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

pub fn delete_tags(client: Client, request_body: BitArray) -> Request(BitArray) {
  let target = metadata.service_id <> ".DeleteTags"
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

pub fn delete_workspace_bundle(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DeleteWorkspaceBundle"
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

pub fn delete_workspace_image(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DeleteWorkspaceImage"
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

pub fn deploy_workspace_applications(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DeployWorkspaceApplications"
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

pub fn deregister_workspace_directory(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DeregisterWorkspaceDirectory"
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

pub fn describe_account(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DescribeAccount"
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

pub fn describe_account_modifications(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DescribeAccountModifications"
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

pub fn describe_application_associations(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DescribeApplicationAssociations"
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

pub fn describe_applications(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DescribeApplications"
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

pub fn describe_bundle_associations(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DescribeBundleAssociations"
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

pub fn describe_client_branding(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DescribeClientBranding"
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

pub fn describe_client_properties(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DescribeClientProperties"
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

pub fn describe_connect_client_add_ins(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DescribeConnectClientAddIns"
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

pub fn describe_connection_aliases(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DescribeConnectionAliases"
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

pub fn describe_connection_alias_permissions(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DescribeConnectionAliasPermissions"
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

pub fn describe_image_associations(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DescribeImageAssociations"
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

pub fn describe_ip_groups(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DescribeIpGroups"
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

pub fn describe_tags(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DescribeTags"
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

pub fn describe_workspace_associations(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DescribeWorkspaceAssociations"
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

pub fn describe_workspace_bundles(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DescribeWorkspaceBundles"
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

pub fn describe_workspace_directories(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DescribeWorkspaceDirectories"
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

pub fn describe_workspace_image_permissions(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DescribeWorkspaceImagePermissions"
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

pub fn describe_workspace_images(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DescribeWorkspaceImages"
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

pub fn describe_workspaces(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DescribeWorkspaces"
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

pub fn describe_workspaces_connection_status(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DescribeWorkspacesConnectionStatus"
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

pub fn describe_workspace_snapshots(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DescribeWorkspaceSnapshots"
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

pub fn describe_workspaces_pools(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DescribeWorkspacesPools"
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

pub fn describe_workspaces_pool_sessions(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DescribeWorkspacesPoolSessions"
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

pub fn disassociate_connection_alias(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DisassociateConnectionAlias"
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

pub fn disassociate_ip_groups(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DisassociateIpGroups"
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

pub fn disassociate_workspace_application(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DisassociateWorkspaceApplication"
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

pub fn get_account_link(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".GetAccountLink"
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

pub fn import_client_branding(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".ImportClientBranding"
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

pub fn import_workspace_image(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".ImportWorkspaceImage"
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

pub fn list_account_links(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".ListAccountLinks"
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

pub fn list_available_management_cidr_ranges(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".ListAvailableManagementCidrRanges"
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

pub fn migrate_workspace(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".MigrateWorkspace"
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

pub fn modify_account(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".ModifyAccount"
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

pub fn modify_certificate_based_auth_properties(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".ModifyCertificateBasedAuthProperties"
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

pub fn modify_client_properties(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".ModifyClientProperties"
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

pub fn modify_saml_properties(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".ModifySamlProperties"
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

pub fn modify_selfservice_permissions(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".ModifySelfservicePermissions"
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

pub fn modify_streaming_properties(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".ModifyStreamingProperties"
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

pub fn modify_workspace_access_properties(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".ModifyWorkspaceAccessProperties"
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

pub fn modify_workspace_creation_properties(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".ModifyWorkspaceCreationProperties"
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

pub fn modify_workspace_properties(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".ModifyWorkspaceProperties"
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

pub fn modify_workspace_state(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".ModifyWorkspaceState"
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

pub fn reboot_workspaces(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".RebootWorkspaces"
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

pub fn rebuild_workspaces(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".RebuildWorkspaces"
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

pub fn register_workspace_directory(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".RegisterWorkspaceDirectory"
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

pub fn reject_account_link_invitation(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".RejectAccountLinkInvitation"
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

pub fn restore_workspace(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".RestoreWorkspace"
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

pub fn revoke_ip_rules(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".RevokeIpRules"
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

pub fn start_workspaces(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".StartWorkspaces"
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

pub fn start_workspaces_pool(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".StartWorkspacesPool"
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

pub fn stop_workspaces(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".StopWorkspaces"
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

pub fn stop_workspaces_pool(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".StopWorkspacesPool"
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

pub fn terminate_workspaces(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".TerminateWorkspaces"
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

pub fn terminate_workspaces_pool(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".TerminateWorkspacesPool"
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

pub fn terminate_workspaces_pool_session(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".TerminateWorkspacesPoolSession"
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

pub fn update_connect_client_add_in(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".UpdateConnectClientAddIn"
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

pub fn update_connection_alias_permission(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".UpdateConnectionAliasPermission"
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

pub fn update_rules_of_ip_group(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".UpdateRulesOfIpGroup"
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

pub fn update_workspace_bundle(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".UpdateWorkspaceBundle"
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

pub fn update_workspace_image_permission(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".UpdateWorkspaceImagePermission"
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

pub fn update_workspaces_pool(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".UpdateWorkspacesPool"
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
