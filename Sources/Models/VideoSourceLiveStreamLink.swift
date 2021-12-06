//
// VideoSourceLiveStreamLink.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct VideoSourceLiveStreamLink: Codable, Hashable {

    public var rel: String?
    public var uri: String?

    public init(rel: String? = nil, uri: String? = nil) {
        self.rel = rel
        self.uri = uri
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case rel
        case uri
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(rel, forKey: .rel)
        try container.encodeIfPresent(uri, forKey: .uri)
    }
}

