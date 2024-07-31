# Changelog
All changes to this project will be documented in this file.

## [1.3.0] - 2024-07-29
- Add new analytics methods
- Add livestream complete() method

## [1.2.3] - 2024-04-25
- Add API to get rate limiting headers

## [1.2.2] - 2024-02-19
- Update VideoStatusIngest enum

## [1.2.1] - 2023-08-25
- Fix progressive upload with upload token and video id
- Use pascal case for enums

## [1.2.0] - 2023-06-28
- Introducing new live streams restream feature
- Introducing new analytics endpoints

## [1.1.1] - 2022-12-09
- Fix on upload by chunk and progressive upload.
- Add test on progressive upload.
- Add a `build.yml` CI workflow.

## [1.1.0] - 2022-12-06
- Refactor upload by chunk and progressive upload. It is now possible to cancel an upload.
- Add timeout API

## [1.0.6] - 2022-09-13
- period parameter is now mandatory in analytics endpoints

## [1.0.5] - 2022-06-30
- Add SDK origin header

## [1.0.4] - 2022-04-21
- Fix `video.publishedAt` type

## [1.0.3] - 2022-03-21
- Add `ingest.receivedParts` attribute in GET /videos/{video_id}/status

## [1.0.2] - 2022-03-11
- Add Origin identification headers

## [1.0.1] - 2022-01-24
- Add applicationName parameter (to allow user agent extension)

## [1.0.0] - 2022-01-07
- Add watermark endpoints
- Add video clips
- Fix tags[] query parameter format of GET /videos
- Correctly distinguish between "undefined", "defined" and "null" values if the playerId parameter of PATCH /videos/{videoId}

## [0.1.2] - 2021-12-14
- Set protocol for progressive upload session visibility to public

## [0.1.1] - 2021-12-14
- Add a protocol for progressive upload session

## [0.1.0] - 2021-12-06
- Initial release
