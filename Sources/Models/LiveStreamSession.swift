//
// LiveStreamSession.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct LiveStreamSession: Codable, Hashable {

    public var session: LiveStreamSessionSession?
    public var location: LiveStreamSessionLocation?
    public var referrer: LiveStreamSessionReferrer?
    public var device: LiveStreamSessionDevice?
    public var os: VideoSessionOs?
    public var client: LiveStreamSessionClient?

    public init(session: LiveStreamSessionSession? = nil, location: LiveStreamSessionLocation? = nil, referrer: LiveStreamSessionReferrer? = nil, device: LiveStreamSessionDevice? = nil, os: VideoSessionOs? = nil, client: LiveStreamSessionClient? = nil) {
        self.session = session
        self.location = location
        self.referrer = referrer
        self.device = device
        self.os = os
        self.client = client
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case session
        case location
        case referrer
        case device
        case os
        case client
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(session, forKey: .session)
        try container.encodeIfPresent(location, forKey: .location)
        try container.encodeIfPresent(referrer, forKey: .referrer)
        try container.encodeIfPresent(device, forKey: .device)
        try container.encodeIfPresent(os, forKey: .os)
        try container.encodeIfPresent(client, forKey: .client)
    }
}

