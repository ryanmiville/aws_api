import aws4_request.{type Signer, Signer}
import aws_api/internal/metadata.{type Metadata, Global}
import gleam/option.{None, Some}
import gleam/string

pub fn resolve(signer: Signer, metadata: Metadata) -> #(Signer, String) {
  case signer.region {
    "local" -> #(
      Signer(..signer, region: "us-east-1", service: metadata.signing_name),
      "http://localhost:8000/",
    )
    region -> {
      case metadata.global {
        Some(Global(region, hostname)) -> #(
          Signer(..signer, region: region, service: metadata.signing_name),
          "https://" <> hostname <> "/",
        )
        None -> #(
          Signer(..signer, service: metadata.signing_name),
          default(region, metadata),
        )
      }
    }
  }
}

fn default(region: String, metadata: Metadata) {
  string.concat([
    "https://",
    metadata.endpoint_prefix,
    ".",
    region,
    ".",
    "amazonaws.com",
  ])
}
