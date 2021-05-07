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
    - [GetAllSongsRequest](#tensorbeat.datalake.GetAllSongsRequest)
    - [GetAllSongsResponse](#tensorbeat.datalake.GetAllSongsResponse)
    - [GetSongsByIDsRequest](#tensorbeat.datalake.GetSongsByIDsRequest)
    - [GetSongsByIDsResponse](#tensorbeat.datalake.GetSongsByIDsResponse)
    - [GetSongsByTagsRequest](#tensorbeat.datalake.GetSongsByTagsRequest)
    - [GetSongsByTagsRequest.TagsEntry](#tensorbeat.datalake.GetSongsByTagsRequest.TagsEntry)
    - [GetSongsByTagsResponse](#tensorbeat.datalake.GetSongsByTagsResponse)
    - [RemoveTagsRequest](#tensorbeat.datalake.RemoveTagsRequest)
    - [RemoveTagsRequest.TagsEntry](#tensorbeat.datalake.RemoveTagsRequest.TagsEntry)
    - [RemoveTagsResponse](#tensorbeat.datalake.RemoveTagsResponse)
  
    - [Filter](#tensorbeat.datalake.Filter)
  
    - [DatalakeService](#tensorbeat.datalake.DatalakeService)
  
- [tensorbeat/recommender.proto](#tensorbeat/recommender.proto)
    - [GetSongsRequest](#tensorbeat.recommender.GetSongsRequest)
    - [GetSongsResponse](#tensorbeat.recommender.GetSongsResponse)
    - [RecommenderRequest](#tensorbeat.recommender.RecommenderRequest)
    - [RecommenderResponse](#tensorbeat.recommender.RecommenderResponse)
  
    - [RecommenderService](#tensorbeat.recommender.RecommenderService)
  
- [tensorbeat/sarosh_gen.proto](#tensorbeat/sarosh_gen.proto)
    - [GenerateMusicRequest](#tensorbeat.sarosh_gen.GenerateMusicRequest)
    - [GenerateMusicResponse](#tensorbeat.sarosh_gen.GenerateMusicResponse)
  
    - [SaroshGenerator](#tensorbeat.sarosh_gen.SaroshGenerator)
  
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






<a name="tensorbeat.datalake.GetAllSongsRequest"></a>

### GetAllSongsRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| page_token | [int64](#int64) | optional |  |
| page_size | [int64](#int64) | optional |  |






<a name="tensorbeat.datalake.GetAllSongsResponse"></a>

### GetAllSongsResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| songs | [tensorbeat.common.File](#tensorbeat.common.File) | repeated |  |
| next_page_token | [int64](#int64) |  |  |






<a name="tensorbeat.datalake.GetSongsByIDsRequest"></a>

### GetSongsByIDsRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| ids | [string](#string) | repeated |  |
| page_token | [int64](#int64) | optional |  |
| page_size | [int64](#int64) | optional |  |






<a name="tensorbeat.datalake.GetSongsByIDsResponse"></a>

### GetSongsByIDsResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| songs | [tensorbeat.common.File](#tensorbeat.common.File) | repeated |  |
| next_page_token | [int64](#int64) |  |  |






<a name="tensorbeat.datalake.GetSongsByTagsRequest"></a>

### GetSongsByTagsRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| tags | [GetSongsByTagsRequest.TagsEntry](#tensorbeat.datalake.GetSongsByTagsRequest.TagsEntry) | repeated | Pass in map of tags to be matched on returned songs EX: { &#34;genre&#34;: &#34;rock&#34;, &#34;spectrogram_id&#34;: &#34;*&#34;, } The tags will be combined using the filter: - ANY means songs matching any of the tags will be returned. - ALL means songs matching all of the tags will be returned. - NONE means songs that dont match any of the tags will be returned.

Using an * for the value will return any song with that tag set. Using a specific value for the tag will return only songs with that exact combination of Key/Value |
| filter | [Filter](#tensorbeat.datalake.Filter) |  |  |
| page_token | [int64](#int64) | optional |  |
| page_size | [int64](#int64) | optional |  |






<a name="tensorbeat.datalake.GetSongsByTagsRequest.TagsEntry"></a>

### GetSongsByTagsRequest.TagsEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [string](#string) |  |  |






<a name="tensorbeat.datalake.GetSongsByTagsResponse"></a>

### GetSongsByTagsResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| songs | [tensorbeat.common.File](#tensorbeat.common.File) | repeated |  |
| next_page_token | [int64](#int64) |  |  |






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





 


<a name="tensorbeat.datalake.Filter"></a>

### Filter


| Name | Number | Description |
| ---- | ------ | ----------- |
| ANY | 0 |  |
| ALL | 1 |  |
| NONE | 2 |  |


 

 


<a name="tensorbeat.datalake.DatalakeService"></a>

### DatalakeService


| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| GetAllSongs | [GetAllSongsRequest](#tensorbeat.datalake.GetAllSongsRequest) | [GetAllSongsResponse](#tensorbeat.datalake.GetAllSongsResponse) |  |
| GetSongsByIDs | [GetSongsByIDsRequest](#tensorbeat.datalake.GetSongsByIDsRequest) | [GetSongsByIDsResponse](#tensorbeat.datalake.GetSongsByIDsResponse) |  |
| GetSongsByTags | [GetSongsByTagsRequest](#tensorbeat.datalake.GetSongsByTagsRequest) | [GetSongsByTagsResponse](#tensorbeat.datalake.GetSongsByTagsResponse) |  |
| AddSongs | [AddSongsRequest](#tensorbeat.datalake.AddSongsRequest) | [AddSongsResponse](#tensorbeat.datalake.AddSongsResponse) |  |
| AddTags | [AddTagsRequest](#tensorbeat.datalake.AddTagsRequest) | [AddTagsResponse](#tensorbeat.datalake.AddTagsResponse) |  |
| RemoveTags | [RemoveTagsRequest](#tensorbeat.datalake.RemoveTagsRequest) | [RemoveTagsResponse](#tensorbeat.datalake.RemoveTagsResponse) |  |

 



<a name="tensorbeat/recommender.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## tensorbeat/recommender.proto



<a name="tensorbeat.recommender.GetSongsRequest"></a>

### GetSongsRequest







<a name="tensorbeat.recommender.GetSongsResponse"></a>

### GetSongsResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| song_name | [string](#string) | repeated |  |






<a name="tensorbeat.recommender.RecommenderRequest"></a>

### RecommenderRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| song_name | [string](#string) |  |  |






<a name="tensorbeat.recommender.RecommenderResponse"></a>

### RecommenderResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| songs | [string](#string) | repeated |  |





 

 

 


<a name="tensorbeat.recommender.RecommenderService"></a>

### RecommenderService


| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| RecommendSong | [RecommenderRequest](#tensorbeat.recommender.RecommenderRequest) | [RecommenderResponse](#tensorbeat.recommender.RecommenderResponse) |  |

 



<a name="tensorbeat/sarosh_gen.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## tensorbeat/sarosh_gen.proto



<a name="tensorbeat.sarosh_gen.GenerateMusicRequest"></a>

### GenerateMusicRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| notes | [string](#string) | repeated |  |






<a name="tensorbeat.sarosh_gen.GenerateMusicResponse"></a>

### GenerateMusicResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| notes | [string](#string) | repeated |  |





 

 

 


<a name="tensorbeat.sarosh_gen.SaroshGenerator"></a>

### SaroshGenerator


| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| GenerateMusic | [GenerateMusicRequest](#tensorbeat.sarosh_gen.GenerateMusicRequest) | [GenerateMusicResponse](#tensorbeat.sarosh_gen.GenerateMusicResponse) |  |

 



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

