//
// FilterBy2.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct FilterBy2: Codable, Hashable {

    public enum MediaType: String, Codable, CaseIterable {
        case video = "video"
        case liveStream = "live-stream"
    }
    public enum Continent: String, Codable, CaseIterable {
        case _as = "AS"
        case af = "AF"
        case na = "NA"
        case sa = "SA"
        case an = "AN"
        case eu = "EU"
        case az = "AZ"
    }
    /** Returns analytics based on the unique identifiers of a video or a live stream. */
    public var mediaId: [String]?
    public var mediaType: MediaType?
    /** Returns analytics based on the viewers' continent. The list of supported continents names are based on the [GeoNames public database](https://www.geonames.org/countries/). You must use the ISO-3166 alpha2 format, for example `EU`. */
    public var continent: [Continent]?
    /** Returns analytics based on the viewers' country. The list of supported country names are based on the [GeoNames public database](https://www.geonames.org/countries/). You must use the ISO-3166 alpha2 format, for example `FR`. */
    public var country: [String]?
    /** Returns analytics based on the type of device used by the viewers. Response values can include: `computer`, `phone`, `tablet`, `tv`, `console`, `wearable`, `unknown`. */
    public var deviceType: [String]?
    /** Returns analytics based on the operating system used by the viewers. Response values can include `windows`, `mac osx`, `android`, `ios`, `linux`. */
    public var operatingSystem: [String]?
    /** Returns analytics based on the browser used by the viewers. Response values can include `chrome`, `firefox`, `edge`, `opera`. */
    public var browser: [String]?
    /** Returns analytics for videos using this tag. This filter only accepts a single value and is case sensitive. Read more about tagging your videos [here](https://docs.api.video/vod/tags-metadata). */
    public var tag: String?

    public init(mediaId: [String]? = nil, mediaType: MediaType? = nil, continent: [Continent]? = nil, country: [String]? = nil, deviceType: [String]? = nil, operatingSystem: [String]? = nil, browser: [String]? = nil, tag: String? = nil) {
        self.mediaId = mediaId
        self.mediaType = mediaType
        self.continent = continent
        self.country = country
        self.deviceType = deviceType
        self.operatingSystem = operatingSystem
        self.browser = browser
        self.tag = tag
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case mediaId
        case mediaType
        case continent
        case country
        case deviceType
        case operatingSystem
        case browser
        case tag
    }

      public func encodeToQueryParams() -> [URLQueryItem] {
        var queryItems = [URLQueryItem]()

        if let mediaId = mediaId, !mediaId.isEmpty {
            for (index, val) in mediaId.enumerated() {
                queryItems.append(URLQueryItem(name: "filterBy[mediaId][\(index)]", value: val))
            }
        }
        if let mediaType = mediaType {
            queryItems.append(URLQueryItem(name: "filterBy[mediaType]", value: mediaType.rawValue))
        }
        if let continent = continent, !continent.isEmpty {
            for (index, val) in continent.enumerated() {
                queryItems.append(URLQueryItem(name: "filterBy[continent][\(index)]", value: val.rawValue))
            }
        }
        if let country = country, !country.isEmpty {
            for (index, val) in country.enumerated() {
                queryItems.append(URLQueryItem(name: "filterBy[country][\(index)]", value: val))
            }
        }
        if let deviceType = deviceType, !deviceType.isEmpty {
            for (index, val) in deviceType.enumerated() {
                queryItems.append(URLQueryItem(name: "filterBy[deviceType][\(index)]", value: val))
            }
        }
        if let operatingSystem = operatingSystem, !operatingSystem.isEmpty {
            for (index, val) in operatingSystem.enumerated() {
                queryItems.append(URLQueryItem(name: "filterBy[operatingSystem][\(index)]", value: val))
            }
        }
        if let browser = browser, !browser.isEmpty {
            for (index, val) in browser.enumerated() {
                queryItems.append(URLQueryItem(name: "filterBy[browser][\(index)]", value: val))
            }
        }
        if let tag = tag {
            queryItems.append(URLQueryItem(name: "filterBy[tag]", value: tag))
        }

        return queryItems
    }
    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(mediaId, forKey: .mediaId)
        try container.encodeIfPresent(mediaType, forKey: .mediaType)
        try container.encodeIfPresent(continent, forKey: .continent)
        try container.encodeIfPresent(country, forKey: .country)
        try container.encodeIfPresent(deviceType, forKey: .deviceType)
        try container.encodeIfPresent(operatingSystem, forKey: .operatingSystem)
        try container.encodeIfPresent(browser, forKey: .browser)
        try container.encodeIfPresent(tag, forKey: .tag)
    }
}

