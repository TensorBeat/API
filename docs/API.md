# Protocol Documentation
<a name="top"></a>

## Table of Contents

- [tensorbeat/common.proto](#tensorbeat/common.proto)
    - [AddFile](#tensorbeat.common.AddFile)
    - [AddFile.TagsEntry](#tensorbeat.common.AddFile.TagsEntry)
    - [File](#tensorbeat.common.File)
    - [File.TagsEntry](#tensorbeat.common.File.TagsEntry)
  
- [tensorbeat/datalake.proto](#tensorbeat/datalake.proto)
    - [AddSongsRequest](#tensorbeat.datalake.AddSongsRequest)
    - [AddSongsResponse](#tensorbeat.datalake.AddSongsResponse)
    - [AddTagsRequest](#tensorbeat.datalake.AddTagsRequest)
    - [AddTagsRequest.TagsEntry](#tensorbeat.datalake.AddTagsRequest.TagsEntry)
    - [AddTagsResponse](#tensorbeat.datalake.AddTagsResponse)
    - [GetSongsRequest](#tensorbeat.datalake.GetSongsRequest)
    - [GetSongsRequest.TagsEntry](#tensorbeat.datalake.GetSongsRequest.TagsEntry)
    - [GetSongsResponse](#tensorbeat.datalake.GetSongsResponse)
    - [RemoveTagsRequest](#tensorbeat.datalake.RemoveTagsRequest)
    - [RemoveTagsRequest.TagsEntry](#tensorbeat.datalake.RemoveTagsRequest.TagsEntry)
    - [RemoveTagsResponse](#tensorbeat.datalake.RemoveTagsResponse)
  
    - [LogicalOperator](#tensorbeat.datalake.LogicalOperator)
  
    - [DatalakeService](#tensorbeat.datalake.DatalakeService)
  
- [Scalar Value Types](#scalar-value-types)



<a name="tensorbeat/common.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## tensorbeat/common.proto



<a name="tensorbeat.common.AddFile"></a>

### AddFile



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  |  |
| uri | [string](#string) |  |  |
| mimeType | [string](#string) |  |  |
| tags | [AddFile.TagsEntry](#tensorbeat.common.AddFile.TagsEntry) | repeated |  |






<a name="tensorbeat.common.AddFile.TagsEntry"></a>

### AddFile.TagsEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [string](#string) |  |  |






<a name="tensorbeat.common.File"></a>

### File



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  |  |
| name | [string](#string) |  |  |
| uri | [string](#string) |  |  |
| mimeType | [string](#string) |  |  |
| tags | [File.TagsEntry](#tensorbeat.common.File.TagsEntry) | repeated |  |






<a name="tensorbeat.common.File.TagsEntry"></a>

### File.TagsEntry



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
| songs | [tensorbeat.common.AddFile](#tensorbeat.common.AddFile) | repeated |  |






<a name="tensorbeat.datalake.AddSongsResponse"></a>

### AddSongsResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| successful | [bool](#bool) |  |  |






<a name="tensorbeat.datalake.AddTagsRequest"></a>

### AddTagsRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  |  |
| tags | [AddTagsRequest.TagsEntry](#tensorbeat.datalake.AddTagsRequest.TagsEntry) | repeated |  |






<a name="tensorbeat.datalake.AddTagsRequest.TagsEntry"></a>

### AddTagsRequest.TagsEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [string](#string) |  |  |






<a name="tensorbeat.datalake.AddTagsResponse"></a>

### AddTagsResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| successful | [bool](#bool) |  |  |






<a name="tensorbeat.datalake.GetSongsRequest"></a>

### GetSongsRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| tags | [GetSongsRequest.TagsEntry](#tensorbeat.datalake.GetSongsRequest.TagsEntry) | repeated | Pass in map of tags to be matched on returned songs { &#34;genre&#34;: &#34;rock&#34;, &#34;genre&#34;: &#34;metal&#34;, } The tags will be combined using the logical operator: - OR means songs matching any of the tags will be returned. - AND means songs matching all of the tags will be returned. - NOT means songs that dont match any of the tags will be returned. |
| operator | [LogicalOperator](#tensorbeat.datalake.LogicalOperator) |  |  |






<a name="tensorbeat.datalake.GetSongsRequest.TagsEntry"></a>

### GetSongsRequest.TagsEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [string](#string) |  |  |






<a name="tensorbeat.datalake.GetSongsResponse"></a>

### GetSongsResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| songs | [tensorbeat.common.File](#tensorbeat.common.File) | repeated |  |






<a name="tensorbeat.datalake.RemoveTagsRequest"></a>

### RemoveTagsRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  |  |
| tags | [RemoveTagsRequest.TagsEntry](#tensorbeat.datalake.RemoveTagsRequest.TagsEntry) | repeated |  |






<a name="tensorbeat.datalake.RemoveTagsRequest.TagsEntry"></a>

### RemoveTagsRequest.TagsEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [string](#string) |  |  |






<a name="tensorbeat.datalake.RemoveTagsResponse"></a>

### RemoveTagsResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| successful | [bool](#bool) |  |  |





 


<a name="tensorbeat.datalake.LogicalOperator"></a>

### LogicalOperator


| Name | Number | Description |
| ---- | ------ | ----------- |
| UNKNOWN_LOGICAL_OPERATOR | 0 |  |
| OR | 1 |  |
| AND | 2 |  |
| NOT | 3 |  |


 

 


<a name="tensorbeat.datalake.DatalakeService"></a>

### DatalakeService


| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| GetSongs | [GetSongsRequest](#tensorbeat.datalake.GetSongsRequest) | [GetSongsResponse](#tensorbeat.datalake.GetSongsResponse) |  |
| AddSongs | [AddSongsRequest](#tensorbeat.datalake.AddSongsRequest) | [AddSongsResponse](#tensorbeat.datalake.AddSongsResponse) |  |
| AddTags | [AddTagsRequest](#tensorbeat.datalake.AddTagsRequest) | [AddTagsResponse](#tensorbeat.datalake.AddTagsResponse) |  |
| RemoveTags | [RemoveTagsRequest](#tensorbeat.datalake.RemoveTagsRequest) | [RemoveTagsResponse](#tensorbeat.datalake.RemoveTagsResponse) |  |

 



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

