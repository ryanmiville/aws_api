import aws_request/config.{type Config}
import aws_request/internal/metadata.{type Metadata, Global}
import gleam/option.{None, Some}
import gleam/string

pub type Endpoint {
  Endpoint(
    hostname: String,
    protocol: String,
    signing_region: String,
    signing_name: String,
  )
}

pub fn from(config: Config, metadata: Metadata) -> Endpoint {
  case config.endpoint {
    Some(ep) -> {
      let #(protocol, hostname) = split_scheme(ep)
      Endpoint(hostname, protocol, config.region, metadata.signing_name)
    }
    None -> resolve(config, metadata)
  }
}

fn split_scheme(uri: String) {
  case uri {
    "https://" <> host -> #("https", host)
    "http://" <> host -> #("http", host)
    other -> #("https", other)
  }
}

fn resolve(config: Config, metadata: Metadata) -> Endpoint {
  case config.region, metadata.global {
    "local", _ ->
      Endpoint("localhost:8000", "http", "us-east-1", metadata.signing_name)
    _, Some(Global(region, hostname)) ->
      Endpoint(hostname, "https", region, metadata.signing_name)
    region, None ->
      Endpoint(
        default(config, metadata),
        "https",
        region,
        metadata.signing_name,
      )
  }
}

fn default(config: Config, metadata: Metadata) {
  string.concat([
    metadata.endpoint_prefix,
    ".",
    config.region,
    ".",
    "amazonaws.com",
  ])
}
