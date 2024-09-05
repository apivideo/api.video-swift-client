//
// AnalyticsMetricsOverTimeResponseData.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AnalyticsMetricsOverTimeResponseData: Codable, Hashable {

    /** Returns the timestamp of the event that belongs to a specific metric in ATOM date-time format. For example, if you set `play` with an `hour` interval in your request, then `emittedAt` returns the hourly timestamps of every play event within the timeframe you defined. */
    public var emittedAt: String?
    /** Returns the data for a specific metric value. */
    public var metricValue: Float?

    public init(emittedAt: String? = nil, metricValue: Float? = nil) {
        self.emittedAt = emittedAt
        self.metricValue = metricValue
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case emittedAt
        case metricValue
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(emittedAt, forKey: .emittedAt)
        try container.encodeIfPresent(metricValue, forKey: .metricValue)
    }
}
