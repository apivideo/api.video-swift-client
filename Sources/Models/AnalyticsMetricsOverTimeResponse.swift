//
// AnalyticsMetricsOverTimeResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AnalyticsMetricsOverTimeResponse: Codable, Hashable {

    public var context: AnalyticsMetricsOverTimeResponseContext
    /** Returns an array of metrics and the timestamps. */
    public var data: [AnalyticsMetricsOverTimeResponseData]
    public var pagination: Pagination

    public init(context: AnalyticsMetricsOverTimeResponseContext, data: [AnalyticsMetricsOverTimeResponseData], pagination: Pagination) {
        self.context = context
        self.data = data
        self.pagination = pagination
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case context
        case data
        case pagination
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(context, forKey: .context)
        try container.encode(data, forKey: .data)
        try container.encode(pagination, forKey: .pagination)
    }
}

