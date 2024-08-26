import aws4_request
import aws_request/internal/endpoint.{type Endpoint}
import aws_request/internal/time
import gleam/bit_array
import gleam/http.{type Header}
import gleam/http/request.{type Request, Request}
import gleam/option.{type Option}

pub type RequestBuilder {
  RequestBuilder(
    access_key_id: String,
    secret_access_key: String,
    service_id: String,
    endpoint: Endpoint,
  )
}

fn sign_v4(builder: RequestBuilder, request: Request(BitArray)) {
  let date_time = time.utc_now() |> time.to_parts
  aws4_request.sign(
    request,
    date_time,
    builder.access_key_id,
    builder.secret_access_key,
    builder.endpoint.signing_region,
    builder.endpoint.signing_name,
  )
}

pub fn build(
  builder: RequestBuilder,
  method: http.Method,
  path: String,
  headers: List(Header),
  query: Option(String),
  body: Option(BitArray),
) -> Request(BitArray) {
  let assert Ok(request) = request.to(url(builder.endpoint) <> path)
  let headers = [#("host", builder.endpoint.hostname), ..headers]

  let body = option.unwrap(body, bit_array.from_string(""))
  let request =
    request.Request(..request, headers: headers, query: query)
    |> request.set_method(method)
    |> request.set_body(body)

  sign_v4(builder, request)
}

fn url(endpoint: Endpoint) -> String {
  endpoint.protocol <> "://" <> endpoint.hostname <> "/"
}
