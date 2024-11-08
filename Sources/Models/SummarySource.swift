//
// SummarySource.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct SummarySource: Codable, Hashable {

    /** A short outline of the contents of the video. The length of an `abstract` depends on the amount of content in a video that can be transcribed. The API condenses the contents into minimum 20, maximum 300 words. */
    public var abstract: String?
    /** A list of 3 key points from the video, in chronological order. */
    public var takeaways: [String]?

    public init(abstract: String? = nil, takeaways: [String]? = nil) {
        self.abstract = abstract
        self.takeaways = takeaways
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case abstract
        case takeaways
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(abstract, forKey: .abstract)
        try container.encodeIfPresent(takeaways, forKey: .takeaways)
    }
}

