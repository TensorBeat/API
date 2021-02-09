# Protocol Documentation
<a name="top"></a>

## Table of Contents

- [tensorbeat/common.proto](#tensorbeat/common.proto)
    - [File](#tensorbeat.common.File)
    - [File.MetadataEntry](#tensorbeat.common.File.MetadataEntry)
  
- [tensorbeat/datalake.proto](#tensorbeat/datalake.proto)
    - [AddSongsRequest](#tensorbeat.datalake.AddSongsRequest)
    - [AddSongsResponse](#tensorbeat.datalake.AddSongsResponse)
    - [GetSongsRequest](#tensorbeat.datalake.GetSongsRequest)
    - [GetSongsRequest.MetadataEntry](#tensorbeat.datalake.GetSongsRequest.MetadataEntry)
    - [GetSongsResponse](#tensorbeat.datalake.GetSongsResponse)
  
    - [DatalakeService](#tensorbeat.datalake.DatalakeService)
  
- [Scalar Value Types](#scalar-value-types)



<a name="tensorbeat/common.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## tensorbeat/common.proto



<a name="tensorbeat.common.File"></a>

### File



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| uri | [string](#string) |  |  |
| metadata | [File.MetadataEntry](#tensorbeat.common.File.MetadataEntry) | repeated |  |






<a name="tensorbeat.common.File.MetadataEntry"></a>

### File.MetadataEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [string](#string) |  |  |





 

 

 

 



<a name="tensorbeat/datalake.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## tensorbeat/datalake.proto



<a name="tensorbeat.datalake.AddSongsRequest"></a>

### AddSongsRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| songs | [tensorbeat.common.File](#tensorbeat.common.File) | repeated |  |






<a name="tensorbeat.datalake.AddSongsResponse"></a>

### AddSongsResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| successful | [bool](#bool) |  |  |






<a name="tensorbeat.datalake.GetSongsRequest"></a>

### GetSongsRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| metadata | [GetSongsRequest.MetadataEntry](#tensorbeat.datalake.GetSongsRequest.MetadataEntry) | repeated | Pass in map of metadata to be matched on returned songs { &#34;genre&#34;: &#34;rock&#34;, &#34;genre&#34;: &#34;metal&#34;, } These should be &#34;ORed&#34; so if song matches any of the metadata it is returned |






<a name="tensorbeat.datalake.GetSongsRequest.MetadataEntry"></a>

### GetSongsRequest.MetadataEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [string](#string) |  |  |






<a name="tensorbeat.datalake.GetSongsResponse"></a>

### GetSongsResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| songs | [tensorbeat.common.File](#tensorbeat.common.File) | repeated |  |





 

 

 


<a name="tensorbeat.datalake.DatalakeService"></a>

### DatalakeService


| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| GetSongs | [GetSongsRequest](#tensorbeat.datalake.GetSongsRequest) | [GetSongsResponse](#tensorbeat.datalake.GetSongsResponse) |  |
| AddSongs | [AddSongsRequest](#tensorbeat.datalake.AddSongsRequest) | [AddSongsResponse](#tensorbeat.datalake.AddSongsResponse) |  |

 



## Scalar Value Types

| .proto Type | Notes | C++ | Java | Python | Go | C# | PHP | Ruby |
| ----------- | ----- | --- | ---- | ------ | -- | -- | --- | ---- |
| <a name="double" /> double |  | double | double | float | float64 | double | float | Float |
| <a name="float" /> float |  | float | float | float | float32 | float | float | Float |
| <a name="int32" /> int32 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint32 instead. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="int64" /> int64 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint64 instead. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="uint32" /> uint32 | Uses variable-length encoding. | uint32 | int | int/long | uint32 | uint | integer | Bignum or Fixnum (as required) |
| <a name="uint64" /> uint64 | Uses variable-length encoding. | uint64 | long | int/long | uint64 | ulong | integer/string | Bignum or Fixnum (as required) |
| <a name="sint32" /> sint32 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int32s. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="sint64" /> sint64 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int64s. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="fixed32" /> fixed32 | Always four bytes. More efficient than uint32 if values are often greater than 2^28. | uint32 | int | int | uint32 | uint | integer | Bignum or Fixnum (as required) |
| <a name="fixed64" /> fixed64 | Always eight bytes. More efficient than uint64 if values are often greater than 2^56. | uint64 | long | int/long | uint64 | ulong | integer/string | Bignum |
| <a name="sfixed32" /> sfixed32 | Always four bytes. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="sfixed64" /> sfixed64 | Always eight bytes. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="bool" /> bool |  | bool | boolean | boolean | bool | bool | boolean | TrueClass/FalseClass |
| <a name="string" /> string | A string must always contain UTF-8 encoded or 7-bit ASCII text. | string | String | str/unicode | string | string | string | String (UTF-8) |
| <a name="bytes" /> bytes | May contain any arbitrary sequence of bytes. | string | ByteString | str | []byte | ByteString | string | String (ASCII-8BIT) |

