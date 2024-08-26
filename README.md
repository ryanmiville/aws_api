# aws_request

[![Package Version](https://img.shields.io/hexpm/v/aws_request)](https://hex.pm/packages/aws_request)
[![Hex Docs](https://img.shields.io/badge/hex-docs-ffaff3)](https://hexdocs.pm/aws_request/)

```sh
gleam add aws_request@1
```
```gleam
import aws_request/config
import aws_request/service/dynamodb
import gleam/bit_array
import gleam/httpc
import gleam/result

pub fn main() {
  let assert Ok(dynamo_client) =
    config.new()
    |> config.with_region("us-east-1")
    |> config.build
    |> result.map(dynamodb.new)

  let body =
    "{
    \"TableName\": \"people\",
    \"Key\": { \"name\": { \"S\": \"Ryan\" } }
    }"
    |> bit_array.from_string

  let response =
    dynamodb.get_item(dynamo_client, body)
    |> httpc.send_bits
}
```

```sh
Ok(Response(
  200,
  [
    #("connection", "keep-alive"),
    #(
      "date",
      "Mon, 26 Aug 2024 01:14:37 GMT",
    ),
    #("server", "Server"),
    #("content-length", "48"),
    #(
      "content-type",
      "application/x-amz-json-1.0",
    ),
    #(
      "x-amzn-requestid",
      "9UDMAF5C9T46D39RJSCHUB7IMFVV4KQNSO5AEMVJF66Q9ASUAAJG",
    ),
    #("x-amz-crc32", "3152510195"),
  ],
  "{"Item":{"name":{"S":"Ryan"}}}",
))
```
