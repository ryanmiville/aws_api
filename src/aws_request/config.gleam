import envoy
import gleam/option.{type Option, None}
import gleam/result

const aws_access_key_id = "AWS_ACCESS_KEY_ID"

const aws_secret_access_key = "AWS_SECRET_ACCESS_KEY"

const aws_session_token = "AWS_SESSION_TOKEN"

const aws_default_region = "AWS_DEFAULT_REGION"

type Env =
  Result(String, String)

pub type ConfigError {
  ConfigError(message: String)
}

pub opaque type ConfigBuilder {
  ConfigBuilder(
    access_key_id: Env,
    secret_access_key: Env,
    session_token: Env,
    region: Env,
    endpoint: Option(String),
    proto: String,
    port: Int,
  )
}

pub type Config {
  Config(
    access_key_id: String,
    secret_access_key: String,
    region: String,
    session_token: Option(String),
    endpoint: Option(String),
  )
}

pub fn new() -> ConfigBuilder {
  let access_key_id = env(aws_access_key_id)
  let secret_access_key = env(aws_secret_access_key)
  let region = env(aws_default_region)
  let session_token = env(aws_session_token)

  ConfigBuilder(
    access_key_id:,
    secret_access_key:,
    session_token:,
    region:,
    endpoint: None,
    proto: "https",
    port: 443,
  )
}

pub fn with_region(builder: ConfigBuilder, region: String) {
  ConfigBuilder(..builder, region: Ok(region))
}

pub fn with_credentials(
  builder: ConfigBuilder,
  access_key_id: String,
  secret_access_key: String,
) {
  ConfigBuilder(
    ..builder,
    access_key_id: Ok(access_key_id),
    secret_access_key: Ok(secret_access_key),
  )
}

pub fn with_session_token(builder: ConfigBuilder, session_token: String) {
  ConfigBuilder(..builder, session_token: Ok(session_token))
}

pub fn build(builder: ConfigBuilder) -> Result(Config, ConfigError) {
  builder |> do_build |> result.map_error(ConfigError)
}

fn do_build(builder: ConfigBuilder) -> Result(Config, String) {
  use access_key_id <- result.try(builder.access_key_id)
  use secret_access_key <- result.try(builder.secret_access_key)
  use region <- result.map(builder.region)
  let session_token = option.from_result(builder.session_token)
  Config(
    access_key_id:,
    secret_access_key:,
    region:,
    session_token:,
    endpoint: builder.endpoint,
  )
}

fn env(name: String) -> Env {
  envoy.get(name)
  |> result.replace_error(name <> "not set")
}
