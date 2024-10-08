//
// PlayerSessionEvent.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PlayerSessionEvent: Codable, Hashable {

    /** Possible values are: ready, play, pause, resume, seek.backward, seek.forward, end */
    public var type: String?
    /** When an event occurred, presented in ATOM UTC format. */
    public var emittedAt: Date?
    public var at: Int?
    public var from: Int?
    public var to: Int?

    public init(type: String? = nil, emittedAt: Date? = nil, at: Int? = nil, from: Int? = nil, to: Int? = nil) {
        self.type = type
        self.emittedAt = emittedAt
        self.at = at
        self.from = from
        self.to = to
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case emittedAt
        case at
        case from
        case to
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(emittedAt, forKey: .emittedAt)
        try container.encodeIfPresent(at, forKey: .at)
        try container.encodeIfPresent(from, forKey: .from)
        try container.encodeIfPresent(to, forKey: .to)
    }
}

