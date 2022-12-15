# OpenapiClient::DefaultApi

All URIs are relative to *http://localhost:3000*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**sample_csv**](DefaultApi.md#sample_csv) | **GET** /api/accounts/csv |  |


## sample_csv

> File sample_csv



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::DefaultApi.new

begin
  
  result = api_instance.sample_csv
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->sample_csv: #{e}"
end
```

#### Using the sample_csv_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> sample_csv_with_http_info

```ruby
begin
  
  data, status_code, headers = api_instance.sample_csv_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue OpenapiClient::ApiError => e
  puts "Error when calling DefaultApi->sample_csv_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/zip

