//
// Watermark.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Watermark: Codable, Hashable {

    /** The unique identifier of the watermark. */
    public var watermarkId: String?
    /** When the watermark was created, presented in ATOM UTC format. */
    public var createdAt: Date?

    public init(watermarkId: String? = nil, createdAt: Date? = nil) {
        self.watermarkId = watermarkId
        self.createdAt = createdAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case watermarkId
        case createdAt
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(watermarkId, forKey: .watermarkId)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
    }
}

