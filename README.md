<!--<documentation_excluded>-->
[![badge](https://img.shields.io/twitter/follow/api_video?style=social)](https://twitter.com/intent/follow?screen_name=api_video) &nbsp; [![badge](https://img.shields.io/github/stars/apivideo/api.video-swift-client?style=social)]() &nbsp; [![badge](https://img.shields.io/discourse/topics?server=https%3A%2F%2Fcommunity.api.video)](https://community.api.video)
![](https://github.com/apivideo/.github/blob/main/assets/apivideo_banner.png)
<h1 align="center">api.video Swift client</h1>

[api.video](https://api.video) is the video infrastructure for product builders. Lightning fast video APIs for integrating, scaling, and managing on-demand & low latency live streaming features in your app.

## Table of contents

- [Project description](#project-description)
- [Getting started](#getting-started)
  - [Installation](#installation)
    - [Carthage](#carthage)
    - [CocoaPods](#cocoaPods)
  - [Code sample](#code-sample)
- [Documentation](#documentation)
  - [API Endpoints](#api-endpoints)
    - [AnalyticsAPI](#AnalyticsAPI)
    - [CaptionsAPI](#CaptionsAPI)
    - [ChaptersAPI](#ChaptersAPI)
    - [LiveStreamsAPI](#LiveStreamsAPI)
    - [PlayerThemesAPI](#PlayerThemesAPI)
    - [SummariesAPI](#SummariesAPI)
    - [TagsAPI](#TagsAPI)
    - [UploadTokensAPI](#UploadTokensAPI)
    - [VideosAPI](#VideosAPI)
    - [WatermarksAPI](#WatermarksAPI)
    - [WebhooksAPI](#WebhooksAPI)
  - [Models](#models)
  - [Authorization](#documentation-for-authorization)
    - [API key](#api-key)
    - [Public endpoints](#public-endpoints)
- [Have you gotten use from this API client?](#have-you-gotten-use-from-this-api-client)
- [Contribution](#contribution)
<!--</documentation_excluded>-->
<!--<documentation_only>
---
title: Swift API client
meta: 
  description: The official Swift API client for api.video. [api.video](https://api.video/) is the video infrastructure for product builders. Lightning fast video APIs for integrating, scaling, and managing on-demand & low latency live streaming features in your app.
---

# api.video Swift API client

[api.video](https://api.video/) is the video infrastructure for product builders. Lightning fast video APIs for integrating, scaling, and managing on-demand & low latency live streaming features in your app.
</documentation_only>-->

## Project description
api.video's Swift API client for iOS, macOS and tvOS streamlines the coding process. Chunking files is handled for you, as is pagination and refreshing your tokens.

## Getting started

### Installation

#### Carthage

Specify it in your `Cartfile`:

```
github "apivideo/api.video-swift-client" ~> 1.3.6
```

Run `carthage update`

#### CocoaPods

Add `pod 'ApiVideoClient', '1.3.6'` in your `Podfile`

Run `pod install`

## Code sample

Please follow the [installation](#installation) instruction and execute the following Swift code:
```swift
import ApiVideoClient

// If you rather like to use the sandbox environment:
// ApiVideoClient.basePath = Environment.sandbox.rawValue

try VideosAPI.uploadWithUploadToken(token: "MY_UPLOAD_TOKEN", file: url) { video, error in
    if let video = video {
        // Manage upload with upload token success here
    }
    if let error = error {
        // Manage upload with upload token error here
    }
}
```

## Documentation

### API Endpoints

All URIs are relative to *https://ws.api.video*


#### AnalyticsAPI

##### Retrieve an instance of AnalyticsAPI:

```swift
AnalyticsAPI
```

##### Endpoints

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAggregatedMetrics**](https://github.com/apivideo/api.video-swift-client/blob/main/docs/AnalyticsAPI.md#getAggregatedMetrics) | **GET** `/data/metrics/{metric}/{aggregation}` | Retrieve aggregated metrics
[**getMetricsBreakdown**](https://github.com/apivideo/api.video-swift-client/blob/main/docs/AnalyticsAPI.md#getMetricsBreakdown) | **GET** `/data/buckets/{metric}/{breakdown}` | Retrieve metrics in a breakdown of dimensions
[**getMetricsOverTime**](https://github.com/apivideo/api.video-swift-client/blob/main/docs/AnalyticsAPI.md#getMetricsOverTime) | **GET** `/data/timeseries/{metric}` | Retrieve metrics over time


#### CaptionsAPI

##### Retrieve an instance of CaptionsAPI:

```swift
CaptionsAPI
```

##### Endpoints

Method | HTTP request | Description
------------- | ------------- | -------------
[**upload**](https://github.com/apivideo/api.video-swift-client/blob/main/docs/CaptionsAPI.md#upload) | **POST** `/videos/{videoId}/captions/{language}` | Upload a caption
[**get**](https://github.com/apivideo/api.video-swift-client/blob/main/docs/CaptionsAPI.md#get) | **GET** `/videos/{videoId}/captions/{language}` | Retrieve a caption
[**update**](https://github.com/apivideo/api.video-swift-client/blob/main/docs/CaptionsAPI.md#update) | **PATCH** `/videos/{videoId}/captions/{language}` | Update a caption
[**delete**](https://github.com/apivideo/api.video-swift-client/blob/main/docs/CaptionsAPI.md#delete) | **DELETE** `/videos/{videoId}/captions/{language}` | Delete a caption
[**list**](https://github.com/apivideo/api.video-swift-client/blob/main/docs/CaptionsAPI.md#list) | **GET** `/videos/{videoId}/captions` | List video captions


#### ChaptersAPI

##### Retrieve an instance of ChaptersAPI:

```swift
ChaptersAPI
```

##### Endpoints

Method | HTTP request | Description
------------- | ------------- | -------------
[**upload**](https://github.com/apivideo/api.video-swift-client/blob/main/docs/ChaptersAPI.md#upload) | **POST** `/videos/{videoId}/chapters/{language}` | Upload a chapter
[**get**](https://github.com/apivideo/api.video-swift-client/blob/main/docs/ChaptersAPI.md#get) | **GET** `/videos/{videoId}/chapters/{language}` | Retrieve a chapter
[**delete**](https://github.com/apivideo/api.video-swift-client/blob/main/docs/ChaptersAPI.md#delete) | **DELETE** `/videos/{videoId}/chapters/{language}` | Delete a chapter
[**list**](https://github.com/apivideo/api.video-swift-client/blob/main/docs/ChaptersAPI.md#list) | **GET** `/videos/{videoId}/chapters` | List video chapters


#### LiveStreamsAPI

##### Retrieve an instance of LiveStreamsAPI:

```swift
LiveStreamsAPI
```

##### Endpoints

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](https://github.com/apivideo/api.video-swift-client/blob/main/docs/LiveStreamsAPI.md#create) | **POST** `/live-streams` | Create live stream
[**get**](https://github.com/apivideo/api.video-swift-client/blob/main/docs/LiveStreamsAPI.md#get) | **GET** `/live-streams/{liveStreamId}` | Retrieve live stream
[**update**](https://github.com/apivideo/api.video-swift-client/blob/main/docs/LiveStreamsAPI.md#update) | **PATCH** `/live-streams/{liveStreamId}` | Update a live stream
[**delete**](https://github.com/apivideo/api.video-swift-client/blob/main/docs/LiveStreamsAPI.md#delete) | **DELETE** `/live-streams/{liveStreamId}` | Delete a live stream
[**list**](https://github.com/apivideo/api.video-swift-client/blob/main/docs/LiveStreamsAPI.md#list) | **GET** `/live-streams` | List all live streams
[**uploadThumbnail**](https://github.com/apivideo/api.video-swift-client/blob/main/docs/LiveStreamsAPI.md#uploadThumbnail) | **POST** `/live-streams/{liveStreamId}/thumbnail` | Upload a thumbnail
[**deleteThumbnail**](https://github.com/apivideo/api.video-swift-client/blob/main/docs/LiveStreamsAPI.md#deleteThumbnail) | **DELETE** `/live-streams/{liveStreamId}/thumbnail` | Delete a thumbnail
[**complete**](https://github.com/apivideo/api.video-swift-client/blob/main/docs/LiveStreamsAPI.md#complete) | **PUT** `/live-streams/{liveStreamId}/complete` | Complete a live stream


#### PlayerThemesAPI

##### Retrieve an instance of PlayerThemesAPI:

```swift
PlayerThemesAPI
```

##### Endpoints

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](https://github.com/apivideo/api.video-swift-client/blob/main/docs/PlayerThemesAPI.md#create) | **POST** `/players` | Create a player
[**get**](https://github.com/apivideo/api.video-swift-client/blob/main/docs/PlayerThemesAPI.md#get) | **GET** `/players/{playerId}` | Retrieve a player
[**update**](https://github.com/apivideo/api.video-swift-client/blob/main/docs/PlayerThemesAPI.md#update) | **PATCH** `/players/{playerId}` | Update a player
[**delete**](https://github.com/apivideo/api.video-swift-client/blob/main/docs/PlayerThemesAPI.md#delete) | **DELETE** `/players/{playerId}` | Delete a player
[**list**](https://github.com/apivideo/api.video-swift-client/blob/main/docs/PlayerThemesAPI.md#list) | **GET** `/players` | List all player themes
[**uploadLogo**](https://github.com/apivideo/api.video-swift-client/blob/main/docs/PlayerThemesAPI.md#uploadLogo) | **POST** `/players/{playerId}/logo` | Upload a logo
[**deleteLogo**](https://github.com/apivideo/api.video-swift-client/blob/main/docs/PlayerThemesAPI.md#deleteLogo) | **DELETE** `/players/{playerId}/logo` | Delete logo


#### SummariesAPI

##### Retrieve an instance of SummariesAPI:

```swift
SummariesAPI
```

##### Endpoints

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](https://github.com/apivideo/api.video-swift-client/blob/main/docs/SummariesAPI.md#create) | **POST** `/summaries` | Generate video summary
[**update**](https://github.com/apivideo/api.video-swift-client/blob/main/docs/SummariesAPI.md#update) | **PATCH** `/summaries/{summaryId}/source` | Update summary details
[**delete**](https://github.com/apivideo/api.video-swift-client/blob/main/docs/SummariesAPI.md#delete) | **DELETE** `/summaries/{summaryId}` | Delete video summary
[**list**](https://github.com/apivideo/api.video-swift-client/blob/main/docs/SummariesAPI.md#list) | **GET** `/summaries` | List summaries
[**getSummarySource**](https://github.com/apivideo/api.video-swift-client/blob/main/docs/SummariesAPI.md#getSummarySource) | **GET** `/summaries/{summaryId}/source` | Get summary details


#### TagsAPI

##### Retrieve an instance of TagsAPI:

```swift
TagsAPI
```

##### Endpoints

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](https://github.com/apivideo/api.video-swift-client/blob/main/docs/TagsAPI.md#list) | **GET** `/tags` | List all video tags


#### UploadTokensAPI

##### Retrieve an instance of UploadTokensAPI:

```swift
UploadTokensAPI
```

##### Endpoints

Method | HTTP request | Description
------------- | ------------- | -------------
[**createToken**](https://github.com/apivideo/api.video-swift-client/blob/main/docs/UploadTokensAPI.md#createToken) | **POST** `/upload-tokens` | Generate an upload token
[**getToken**](https://github.com/apivideo/api.video-swift-client/blob/main/docs/UploadTokensAPI.md#getToken) | **GET** `/upload-tokens/{uploadToken}` | Retrieve upload token
[**deleteToken**](https://github.com/apivideo/api.video-swift-client/blob/main/docs/UploadTokensAPI.md#deleteToken) | **DELETE** `/upload-tokens/{uploadToken}` | Delete an upload token
[**list**](https://github.com/apivideo/api.video-swift-client/blob/main/docs/UploadTokensAPI.md#list) | **GET** `/upload-tokens` | List all active upload tokens


#### VideosAPI

##### Retrieve an instance of VideosAPI:

```swift
VideosAPI
```

##### Endpoints

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](https://github.com/apivideo/api.video-swift-client/blob/main/docs/VideosAPI.md#create) | **POST** `/videos` | Create a video object
[**upload**](https://github.com/apivideo/api.video-swift-client/blob/main/docs/VideosAPI.md#upload) | **POST** `/videos/{videoId}/source` | Upload a video
[**uploadWithUploadToken**](https://github.com/apivideo/api.video-swift-client/blob/main/docs/VideosAPI.md#uploadWithUploadToken) | **POST** `/upload` | Upload with an delegated upload token
[**get**](https://github.com/apivideo/api.video-swift-client/blob/main/docs/VideosAPI.md#get) | **GET** `/videos/{videoId}` | Retrieve a video object
[**update**](https://github.com/apivideo/api.video-swift-client/blob/main/docs/VideosAPI.md#update) | **PATCH** `/videos/{videoId}` | Update a video object
[**delete**](https://github.com/apivideo/api.video-swift-client/blob/main/docs/VideosAPI.md#delete) | **DELETE** `/videos/{videoId}` | Delete a video object
[**list**](https://github.com/apivideo/api.video-swift-client/blob/main/docs/VideosAPI.md#list) | **GET** `/videos` | List all video objects
[**uploadThumbnail**](https://github.com/apivideo/api.video-swift-client/blob/main/docs/VideosAPI.md#uploadThumbnail) | **POST** `/videos/{videoId}/thumbnail` | Upload a thumbnail
[**pickThumbnail**](https://github.com/apivideo/api.video-swift-client/blob/main/docs/VideosAPI.md#pickThumbnail) | **PATCH** `/videos/{videoId}/thumbnail` | Set a thumbnail
[**getDiscarded**](https://github.com/apivideo/api.video-swift-client/blob/main/docs/VideosAPI.md#getDiscarded) | **GET** `/discarded/videos/{videoId}` | Retrieve a discarded video object
[**getStatus**](https://github.com/apivideo/api.video-swift-client/blob/main/docs/VideosAPI.md#getStatus) | **GET** `/videos/{videoId}/status` | Retrieve video status and details
[**listDiscarded**](https://github.com/apivideo/api.video-swift-client/blob/main/docs/VideosAPI.md#listDiscarded) | **GET** `/discarded/videos` | List all discarded video objects
[**updateDiscarded**](https://github.com/apivideo/api.video-swift-client/blob/main/docs/VideosAPI.md#updateDiscarded) | **PATCH** `/discarded/videos/{videoId}` | Update a discarded video object


#### WatermarksAPI

##### Retrieve an instance of WatermarksAPI:

```swift
WatermarksAPI
```

##### Endpoints

Method | HTTP request | Description
------------- | ------------- | -------------
[**upload**](https://github.com/apivideo/api.video-swift-client/blob/main/docs/WatermarksAPI.md#upload) | **POST** `/watermarks` | Upload a watermark
[**delete**](https://github.com/apivideo/api.video-swift-client/blob/main/docs/WatermarksAPI.md#delete) | **DELETE** `/watermarks/{watermarkId}` | Delete a watermark
[**list**](https://github.com/apivideo/api.video-swift-client/blob/main/docs/WatermarksAPI.md#list) | **GET** `/watermarks` | List all watermarks


#### WebhooksAPI

##### Retrieve an instance of WebhooksAPI:

```swift
WebhooksAPI
```

##### Endpoints

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](https://github.com/apivideo/api.video-swift-client/blob/main/docs/WebhooksAPI.md#create) | **POST** `/webhooks` | Create Webhook
[**get**](https://github.com/apivideo/api.video-swift-client/blob/main/docs/WebhooksAPI.md#get) | **GET** `/webhooks/{webhookId}` | Retrieve Webhook details
[**delete**](https://github.com/apivideo/api.video-swift-client/blob/main/docs/WebhooksAPI.md#delete) | **DELETE** `/webhooks/{webhookId}` | Delete a Webhook
[**list**](https://github.com/apivideo/api.video-swift-client/blob/main/docs/WebhooksAPI.md#list) | **GET** `/webhooks` | List all webhooks



### Models

 - [AccessToken](https://github.com/apivideo/api.video-swift-client/blob/main/docs/AccessToken.md)
 - [AdditionalBadRequestErrors](https://github.com/apivideo/api.video-swift-client/blob/main/docs/AdditionalBadRequestErrors.md)
 - [AnalyticsAggregatedMetricsResponse](https://github.com/apivideo/api.video-swift-client/blob/main/docs/AnalyticsAggregatedMetricsResponse.md)
 - [AnalyticsAggregatedMetricsResponseContext](https://github.com/apivideo/api.video-swift-client/blob/main/docs/AnalyticsAggregatedMetricsResponseContext.md)
 - [AnalyticsAggregatedMetricsResponseContextTimeframe](https://github.com/apivideo/api.video-swift-client/blob/main/docs/AnalyticsAggregatedMetricsResponseContextTimeframe.md)
 - [AnalyticsData](https://github.com/apivideo/api.video-swift-client/blob/main/docs/AnalyticsData.md)
 - [AnalyticsMetricsBreakdownResponse](https://github.com/apivideo/api.video-swift-client/blob/main/docs/AnalyticsMetricsBreakdownResponse.md)
 - [AnalyticsMetricsBreakdownResponseContext](https://github.com/apivideo/api.video-swift-client/blob/main/docs/AnalyticsMetricsBreakdownResponseContext.md)
 - [AnalyticsMetricsBreakdownResponseData](https://github.com/apivideo/api.video-swift-client/blob/main/docs/AnalyticsMetricsBreakdownResponseData.md)
 - [AnalyticsMetricsOverTimeResponse](https://github.com/apivideo/api.video-swift-client/blob/main/docs/AnalyticsMetricsOverTimeResponse.md)
 - [AnalyticsMetricsOverTimeResponseContext](https://github.com/apivideo/api.video-swift-client/blob/main/docs/AnalyticsMetricsOverTimeResponseContext.md)
 - [AnalyticsMetricsOverTimeResponseData](https://github.com/apivideo/api.video-swift-client/blob/main/docs/AnalyticsMetricsOverTimeResponseData.md)
 - [AnalyticsPlays400Error](https://github.com/apivideo/api.video-swift-client/blob/main/docs/AnalyticsPlays400Error.md)
 - [AnalyticsPlaysResponse](https://github.com/apivideo/api.video-swift-client/blob/main/docs/AnalyticsPlaysResponse.md)
 - [AuthenticatePayload](https://github.com/apivideo/api.video-swift-client/blob/main/docs/AuthenticatePayload.md)
 - [BadRequest](https://github.com/apivideo/api.video-swift-client/blob/main/docs/BadRequest.md)
 - [BytesRange](https://github.com/apivideo/api.video-swift-client/blob/main/docs/BytesRange.md)
 - [Caption](https://github.com/apivideo/api.video-swift-client/blob/main/docs/Caption.md)
 - [CaptionsListResponse](https://github.com/apivideo/api.video-swift-client/blob/main/docs/CaptionsListResponse.md)
 - [CaptionsUpdatePayload](https://github.com/apivideo/api.video-swift-client/blob/main/docs/CaptionsUpdatePayload.md)
 - [Chapter](https://github.com/apivideo/api.video-swift-client/blob/main/docs/Chapter.md)
 - [ChaptersListResponse](https://github.com/apivideo/api.video-swift-client/blob/main/docs/ChaptersListResponse.md)
 - [ConflictError](https://github.com/apivideo/api.video-swift-client/blob/main/docs/ConflictError.md)
 - [DiscardedVideoUpdatePayload](https://github.com/apivideo/api.video-swift-client/blob/main/docs/DiscardedVideoUpdatePayload.md)
 - [FilterBy](https://github.com/apivideo/api.video-swift-client/blob/main/docs/FilterBy.md)
 - [FilterBy1](https://github.com/apivideo/api.video-swift-client/blob/main/docs/FilterBy1.md)
 - [FilterBy2](https://github.com/apivideo/api.video-swift-client/blob/main/docs/FilterBy2.md)
 - [Link](https://github.com/apivideo/api.video-swift-client/blob/main/docs/Link.md)
 - [ListTagsResponse](https://github.com/apivideo/api.video-swift-client/blob/main/docs/ListTagsResponse.md)
 - [ListTagsResponseData](https://github.com/apivideo/api.video-swift-client/blob/main/docs/ListTagsResponseData.md)
 - [LiveStream](https://github.com/apivideo/api.video-swift-client/blob/main/docs/LiveStream.md)
 - [LiveStreamAssets](https://github.com/apivideo/api.video-swift-client/blob/main/docs/LiveStreamAssets.md)
 - [LiveStreamCreationPayload](https://github.com/apivideo/api.video-swift-client/blob/main/docs/LiveStreamCreationPayload.md)
 - [LiveStreamListResponse](https://github.com/apivideo/api.video-swift-client/blob/main/docs/LiveStreamListResponse.md)
 - [LiveStreamUpdatePayload](https://github.com/apivideo/api.video-swift-client/blob/main/docs/LiveStreamUpdatePayload.md)
 - [Metadata](https://github.com/apivideo/api.video-swift-client/blob/main/docs/Metadata.md)
 - [Model403ErrorSchema](https://github.com/apivideo/api.video-swift-client/blob/main/docs/Model403ErrorSchema.md)
 - [NotFound](https://github.com/apivideo/api.video-swift-client/blob/main/docs/NotFound.md)
 - [Pagination](https://github.com/apivideo/api.video-swift-client/blob/main/docs/Pagination.md)
 - [PaginationLink](https://github.com/apivideo/api.video-swift-client/blob/main/docs/PaginationLink.md)
 - [PlayerSessionEvent](https://github.com/apivideo/api.video-swift-client/blob/main/docs/PlayerSessionEvent.md)
 - [PlayerTheme](https://github.com/apivideo/api.video-swift-client/blob/main/docs/PlayerTheme.md)
 - [PlayerThemeAssets](https://github.com/apivideo/api.video-swift-client/blob/main/docs/PlayerThemeAssets.md)
 - [PlayerThemeCreationPayload](https://github.com/apivideo/api.video-swift-client/blob/main/docs/PlayerThemeCreationPayload.md)
 - [PlayerThemeUpdatePayload](https://github.com/apivideo/api.video-swift-client/blob/main/docs/PlayerThemeUpdatePayload.md)
 - [PlayerThemesListResponse](https://github.com/apivideo/api.video-swift-client/blob/main/docs/PlayerThemesListResponse.md)
 - [Quality](https://github.com/apivideo/api.video-swift-client/blob/main/docs/Quality.md)
 - [RefreshTokenPayload](https://github.com/apivideo/api.video-swift-client/blob/main/docs/RefreshTokenPayload.md)
 - [RestreamsRequestObject](https://github.com/apivideo/api.video-swift-client/blob/main/docs/RestreamsRequestObject.md)
 - [RestreamsResponseObject](https://github.com/apivideo/api.video-swift-client/blob/main/docs/RestreamsResponseObject.md)
 - [SummariesListResponse](https://github.com/apivideo/api.video-swift-client/blob/main/docs/SummariesListResponse.md)
 - [Summary](https://github.com/apivideo/api.video-swift-client/blob/main/docs/Summary.md)
 - [SummaryCreationPayload](https://github.com/apivideo/api.video-swift-client/blob/main/docs/SummaryCreationPayload.md)
 - [SummarySource](https://github.com/apivideo/api.video-swift-client/blob/main/docs/SummarySource.md)
 - [SummaryUpdatePayload](https://github.com/apivideo/api.video-swift-client/blob/main/docs/SummaryUpdatePayload.md)
 - [TokenCreationPayload](https://github.com/apivideo/api.video-swift-client/blob/main/docs/TokenCreationPayload.md)
 - [TokenListResponse](https://github.com/apivideo/api.video-swift-client/blob/main/docs/TokenListResponse.md)
 - [TooManyRequests](https://github.com/apivideo/api.video-swift-client/blob/main/docs/TooManyRequests.md)
 - [UnrecognizedRequestUrl](https://github.com/apivideo/api.video-swift-client/blob/main/docs/UnrecognizedRequestUrl.md)
 - [UploadToken](https://github.com/apivideo/api.video-swift-client/blob/main/docs/UploadToken.md)
 - [Video](https://github.com/apivideo/api.video-swift-client/blob/main/docs/Video.md)
 - [VideoAssets](https://github.com/apivideo/api.video-swift-client/blob/main/docs/VideoAssets.md)
 - [VideoClip](https://github.com/apivideo/api.video-swift-client/blob/main/docs/VideoClip.md)
 - [VideoCreationPayload](https://github.com/apivideo/api.video-swift-client/blob/main/docs/VideoCreationPayload.md)
 - [VideoSource](https://github.com/apivideo/api.video-swift-client/blob/main/docs/VideoSource.md)
 - [VideoSourceLiveStream](https://github.com/apivideo/api.video-swift-client/blob/main/docs/VideoSourceLiveStream.md)
 - [VideoSourceLiveStreamLink](https://github.com/apivideo/api.video-swift-client/blob/main/docs/VideoSourceLiveStreamLink.md)
 - [VideoStatus](https://github.com/apivideo/api.video-swift-client/blob/main/docs/VideoStatus.md)
 - [VideoStatusEncoding](https://github.com/apivideo/api.video-swift-client/blob/main/docs/VideoStatusEncoding.md)
 - [VideoStatusEncodingMetadata](https://github.com/apivideo/api.video-swift-client/blob/main/docs/VideoStatusEncodingMetadata.md)
 - [VideoStatusIngest](https://github.com/apivideo/api.video-swift-client/blob/main/docs/VideoStatusIngest.md)
 - [VideoStatusIngestReceivedParts](https://github.com/apivideo/api.video-swift-client/blob/main/docs/VideoStatusIngestReceivedParts.md)
 - [VideoThumbnailPickPayload](https://github.com/apivideo/api.video-swift-client/blob/main/docs/VideoThumbnailPickPayload.md)
 - [VideoUpdatePayload](https://github.com/apivideo/api.video-swift-client/blob/main/docs/VideoUpdatePayload.md)
 - [VideoWatermark](https://github.com/apivideo/api.video-swift-client/blob/main/docs/VideoWatermark.md)
 - [VideosListResponse](https://github.com/apivideo/api.video-swift-client/blob/main/docs/VideosListResponse.md)
 - [Watermark](https://github.com/apivideo/api.video-swift-client/blob/main/docs/Watermark.md)
 - [WatermarksListResponse](https://github.com/apivideo/api.video-swift-client/blob/main/docs/WatermarksListResponse.md)
 - [Webhook](https://github.com/apivideo/api.video-swift-client/blob/main/docs/Webhook.md)
 - [WebhooksCreationPayload](https://github.com/apivideo/api.video-swift-client/blob/main/docs/WebhooksCreationPayload.md)
 - [WebhooksListResponse](https://github.com/apivideo/api.video-swift-client/blob/main/docs/WebhooksListResponse.md)


### Rate limiting

api.video implements rate limiting to ensure fair usage and stability of the service. The API provides the rate limit values in the response headers for any API requests you make. The /auth endpoint is the only route without rate limitation.

In this client, you can access these headers by using the methods with the `completion: @escaping (_ result: Swift.Result<Response<T>, ErrorResponse>) -> Void)` parameters. These methods return both the response body and the headers, allowing you to check the `X-RateLimit-Limit`, `X-RateLimit-Remaining`, and `X-RateLimit-Retry-After` headers to understand your current rate limit status.
Read more about these response headers in the [API reference](https://docs.api.video/reference#limitation).

```swift
try VideosAPI.uploadWithUploadToken(token: "MY_UPLOAD_TOKEN", file: url) { result in
    switch result {
    case .success(let response):
        print("X-RateLimit-Limit:  \(String(describing: response.header["X-RateLimit-Limit"]))")
        print("X-RateLimit-Remaining:  \(String(describing: response.header["X-RateLimit-Remaining"]))")
        print("X-RateLimit-Retry-After:  \(String(describing: response.header["X-RateLimit-Retry-After"]))")
    case .failure(_):
        break
    }
}
```

### Authorization

#### API key

Most endpoints required to be authenticated using the API key mechanism described in our [documentation](https://docs.api.video/reference#authentication).

You must NOT store your API key in your application code to prevent your API key from being exposed in your source code.
Only the [Public endpoints](#public-endpoints) can be called without authentication.
In the case, you want to call an endpoint that requires authentication, you will have to use a backend server. See [Security best practices](https://docs.api.video/sdks/security) for more details.

#### Public endpoints

Some endpoints don't require authentication. These one can be called without setting `ApiVideoClient.apiKey`.

### Have you gotten use from this API client?

Please take a moment to leave a star on the client ⭐

This helps other users to find the clients and also helps us understand which clients are most popular. Thank you!

## Contribution

Since this API client is generated from an OpenAPI description, we cannot accept pull requests made directly to the repository. If you want to contribute, you can open a pull request on the repository of our [client generator](https://github.com/apivideo/api-client-generator). Otherwise, you can also simply open an issue detailing your need on this repository.
