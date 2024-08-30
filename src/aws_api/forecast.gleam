import aws4_request.{type Signer}
import aws_api/internal/endpoint
import aws_api/internal/metadata.{Metadata}
import aws_api/internal/request_builder
import gleam/http
import gleam/http/request.{type Request}
import gleam/option.{None, Some}

const content_type = "application/x-amz-json-1.1"

const metadata = Metadata(
  endpoint_prefix: "forecast",
  service_id: "AmazonForecast",
  signing_name: "forecast",
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

pub fn create_auto_predictor(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".CreateAutoPredictor"
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

pub fn create_dataset(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".CreateDataset"
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

pub fn create_dataset_group(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".CreateDatasetGroup"
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

pub fn create_dataset_import_job(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".CreateDatasetImportJob"
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

pub fn create_explainability(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".CreateExplainability"
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

pub fn create_explainability_export(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".CreateExplainabilityExport"
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

pub fn create_forecast(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".CreateForecast"
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

pub fn create_forecast_export_job(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".CreateForecastExportJob"
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

pub fn create_monitor(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".CreateMonitor"
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

pub fn create_predictor(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".CreatePredictor"
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

pub fn create_predictor_backtest_export_job(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".CreatePredictorBacktestExportJob"
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

pub fn create_what_if_analysis(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".CreateWhatIfAnalysis"
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

pub fn create_what_if_forecast(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".CreateWhatIfForecast"
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

pub fn create_what_if_forecast_export(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".CreateWhatIfForecastExport"
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

pub fn delete_dataset(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DeleteDataset"
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

pub fn delete_dataset_group(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DeleteDatasetGroup"
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

pub fn delete_dataset_import_job(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DeleteDatasetImportJob"
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

pub fn delete_explainability(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DeleteExplainability"
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

pub fn delete_explainability_export(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DeleteExplainabilityExport"
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

pub fn delete_forecast(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DeleteForecast"
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

pub fn delete_forecast_export_job(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DeleteForecastExportJob"
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

pub fn delete_monitor(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DeleteMonitor"
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

pub fn delete_predictor(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DeletePredictor"
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

pub fn delete_predictor_backtest_export_job(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DeletePredictorBacktestExportJob"
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

pub fn delete_resource_tree(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DeleteResourceTree"
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

pub fn delete_what_if_analysis(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DeleteWhatIfAnalysis"
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

pub fn delete_what_if_forecast(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DeleteWhatIfForecast"
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

pub fn delete_what_if_forecast_export(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DeleteWhatIfForecastExport"
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

pub fn describe_auto_predictor(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DescribeAutoPredictor"
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

pub fn describe_dataset(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DescribeDataset"
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

pub fn describe_dataset_group(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DescribeDatasetGroup"
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

pub fn describe_dataset_import_job(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DescribeDatasetImportJob"
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

pub fn describe_explainability(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DescribeExplainability"
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

pub fn describe_explainability_export(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DescribeExplainabilityExport"
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

pub fn describe_forecast(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DescribeForecast"
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

pub fn describe_forecast_export_job(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DescribeForecastExportJob"
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

pub fn describe_monitor(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DescribeMonitor"
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

pub fn describe_predictor(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DescribePredictor"
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

pub fn describe_predictor_backtest_export_job(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DescribePredictorBacktestExportJob"
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

pub fn describe_what_if_analysis(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DescribeWhatIfAnalysis"
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

pub fn describe_what_if_forecast(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DescribeWhatIfForecast"
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

pub fn describe_what_if_forecast_export(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".DescribeWhatIfForecastExport"
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

pub fn get_accuracy_metrics(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".GetAccuracyMetrics"
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

pub fn list_dataset_groups(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".ListDatasetGroups"
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

pub fn list_dataset_import_jobs(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".ListDatasetImportJobs"
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

pub fn list_datasets(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".ListDatasets"
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

pub fn list_explainabilities(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".ListExplainabilities"
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

pub fn list_explainability_exports(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".ListExplainabilityExports"
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

pub fn list_forecast_export_jobs(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".ListForecastExportJobs"
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

pub fn list_forecasts(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".ListForecasts"
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

pub fn list_monitor_evaluations(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".ListMonitorEvaluations"
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

pub fn list_monitors(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".ListMonitors"
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

pub fn list_predictor_backtest_export_jobs(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".ListPredictorBacktestExportJobs"
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

pub fn list_predictors(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".ListPredictors"
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

pub fn list_tags_for_resource(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".ListTagsForResource"
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

pub fn list_what_if_analyses(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".ListWhatIfAnalyses"
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

pub fn list_what_if_forecast_exports(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".ListWhatIfForecastExports"
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

pub fn list_what_if_forecasts(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".ListWhatIfForecasts"
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

pub fn resume_resource(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".ResumeResource"
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

pub fn stop_resource(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".StopResource"
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

pub fn tag_resource(client: Client, request_body: BitArray) -> Request(BitArray) {
  let target = metadata.service_id <> ".TagResource"
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

pub fn untag_resource(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".UntagResource"
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

pub fn update_dataset_group(
  client: Client,
  request_body: BitArray,
) -> Request(BitArray) {
  let target = metadata.service_id <> ".UpdateDatasetGroup"
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
