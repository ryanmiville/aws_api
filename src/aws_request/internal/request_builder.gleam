import aws4_request.{type Signer, Signer}
import gleam/bit_array
import gleam/http.{type Header}
import gleam/http/request.{type Request, Request}
import gleam/option.{type Option}

pub fn build(
  signer: Signer,
  endpoint: String,
  method: http.Method,
  path: String,
  extra_headers: List(Header),
  query: Option(String),
  body: Option(BitArray),
) -> Request(BitArray) {
  let assert Ok(request) = request.to(endpoint <> path)

  let body = option.unwrap(body, bit_array.from_string(""))
  let request =
    request.Request(..request, headers: extra_headers, query: query)
    |> request.set_method(method)
    |> request.set_body(body)

  aws4_request.sign_bits(signer, request)
}
