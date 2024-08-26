import gleam/option.{type Option}

pub type Metadata {
  Metadata(
    endpoint_prefix: String,
    service_id: String,
    signing_name: String,
    global: Option(Global),
  )
}

pub type Global {
  Global(credential_scope: String, hostname: String)
}
