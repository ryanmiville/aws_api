# aws_api

A `gleam_http` request builder for AWS service APIs, generated using [aws_codegen](https://github.com/ryanmiville/aws_codegen) and built on top of [aws4_request](https://github.com/lpil/aws4_request).

[![Package Version](https://img.shields.io/hexpm/v/aws_api)](https://hex.pm/packages/aws_api)
[![Hex Docs](https://img.shields.io/badge/hex-docs-ffaff3)](https://hexdocs.pm/aws_api/)

```sh
gleam add aws_api
```

```gleam
import aws_api/dynamodb
import gleam/bit_array
import gleam/httpc

pub fn main() {
  // create a client for the AWS service, such as DynamoDB
  let dynamo_client =
    dynamodb.new(
      access_key_id: "AKIDEXAMPLE",
      secret_access_key: "wJalrXUtnFEMI/K7MDENG+bPxRfiCYEXAMPLEKEY",
      region: "us-east-1",
    )

  // Create the request body if necessary
  let body =
    "{
    \"TableName\": \"people\",
    \"Key\": { \"name\": { \"S\": \"Ryan\" } }
    }"
    |> bit_array.from_string

    // each API endpoint is a function in the service's module
    let req = dynamodb.get_item(dynamo_client, body)

    // use a gleam_http client adapter to send the request
    let resp = httpc.send_bits(req)
}
```

```gleam
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
  "{\"Item\":{\"name\":{\"S\":\"Ryan\"}}}",
))
```

## Project Goals

`aws_api` is NOT an AWS SDK for Gleam. It intends to be a base for idiomatic SDKs.

## Missing features

- [ ] other AWS partitions (gov, cn, etc.)
- [ ] fips and dualstack endpoints
- [ ] docs
- [ ] tests
