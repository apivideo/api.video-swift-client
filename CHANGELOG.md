# Changelog
All changes to this project will be documented in this file.

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
