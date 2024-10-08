import aws4_request.{type Signer}
import aws_api/internal/endpoint
import aws_api/internal/metadata.{Metadata}
import aws_api/internal/request_builder
import gleam/http.{type Header}
import gleam/http/request.{type Request}
import gleam/option.{type Option}
import gleam/string

const metadata = Metadata(
  endpoint_prefix: "managedblockchain",
  service_id: "TaigaWebService",
  signing_name: "managedblockchain",
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

pub fn create_accessor(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/accessors"])

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

pub fn create_member(
  client: Client,
  network_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/networks/", network_id, "/members"])

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

pub fn create_network(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/networks"])

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

pub fn create_node(
  client: Client,
  network_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/networks/", network_id, "/nodes"])

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

pub fn create_proposal(
  client: Client,
  network_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/networks/", network_id, "/proposals"])

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

pub fn delete_accessor(
  client: Client,
  accessor_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/accessors/", accessor_id, ""])

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

pub fn delete_member(
  client: Client,
  network_id: String,
  member_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/networks/", network_id, "/members/", member_id, ""])

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

pub fn delete_node(
  client: Client,
  network_id: String,
  node_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/networks/", network_id, "/nodes/", node_id, ""])

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

pub fn get_accessor(
  client: Client,
  accessor_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/accessors/", accessor_id, ""])

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

pub fn get_member(
  client: Client,
  network_id: String,
  member_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/networks/", network_id, "/members/", member_id, ""])

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

pub fn get_network(
  client: Client,
  network_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/networks/", network_id, ""])

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

pub fn get_node(
  client: Client,
  network_id: String,
  node_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/networks/", network_id, "/nodes/", node_id, ""])

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

pub fn get_proposal(
  client: Client,
  network_id: String,
  proposal_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/networks/", network_id, "/proposals/", proposal_id, ""])

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

pub fn list_accessors(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/accessors"])

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

pub fn list_invitations(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/invitations"])

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

pub fn list_members(
  client: Client,
  network_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/networks/", network_id, "/members"])

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

pub fn list_networks(
  client: Client,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/networks"])

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

pub fn list_nodes(
  client: Client,
  network_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/networks/", network_id, "/nodes"])

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

pub fn list_proposals(
  client: Client,
  network_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/networks/", network_id, "/proposals"])

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

pub fn list_proposal_votes(
  client: Client,
  network_id: String,
  proposal_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/networks/",
      network_id,
      "/proposals/",
      proposal_id,
      "/votes",
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

pub fn list_tags_for_resource(
  client: Client,
  resource_arn: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/tags/", resource_arn, ""])

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

pub fn reject_invitation(
  client: Client,
  invitation_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/invitations/", invitation_id, ""])

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

pub fn tag_resource(
  client: Client,
  resource_arn: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/tags/", resource_arn, ""])

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
  resource_arn: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/tags/", resource_arn, ""])

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

pub fn update_member(
  client: Client,
  network_id: String,
  member_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat(["/networks/", network_id, "/members/", member_id, ""])

  let headers = [#("content-type", "application/json"), ..headers]

  request_builder.build(
    client.signer,
    client.endpoint,
    http.Patch,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn update_node(
  client: Client,
  network_id: String,
  node_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path = string.concat(["/networks/", network_id, "/nodes/", node_id, ""])

  let headers = [#("content-type", "application/json"), ..headers]

  request_builder.build(
    client.signer,
    client.endpoint,
    http.Patch,
    path,
    headers,
    query,
    option.None,
  )
}

pub fn vote_on_proposal(
  client: Client,
  network_id: String,
  proposal_id: String,
  headers: List(Header),
  query: Option(String),
) -> Request(BitArray) {
  let path =
    string.concat([
      "/networks/",
      network_id,
      "/proposals/",
      proposal_id,
      "/votes",
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
