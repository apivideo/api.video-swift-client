// APIHelper.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct APIHelper {
    public static func rejectNil(_ source: [String: Any?]) -> [String: Any]? {
        let destination = source.reduce(into: [String: Any]()) { result, item in
            if let value = item.value {
                result[item.key] = value
            }
        }

        if destination.isEmpty {
            return nil
        }
        return destination
    }

    public static func rejectNilHeaders(_ source: [String: Any?]) -> [String: String] {
        return source.reduce(into: [String: String]()) { result, item in
            if let collection = item.value as? [Any?] {
                result[item.key] = collection
                    .compactMap { value in
                        guard let value = value else { return nil }
                        return "\(value)"
                    }
                    .joined(separator: ",")
            } else if let value: Any = item.value {
                result[item.key] = "\(value)"
            }
        }
    }

    public static func convertBoolToString(_ source: [String: Any]?) -> [String: Any]? {
        guard let source = source else {
            return nil
        }

        return source.reduce(into: [String: Any]()) { result, item in
            switch item.value {
            case let x as Bool:
                result[item.key] = x.description
            default:
                result[item.key] = item.value
            }
        }
    }

    public static func mapValueToPathItem(_ source: Any) -> Any {
        if let collection = source as? [Any?] {
            return collection
                .compactMap { value in
                    guard let value = value else { return nil }
                    return "\(value)"
                }
                .joined(separator: ",")
        }
        return source
    }

    public static func mapValuesToQueryItems(_ source: [String: Any?]) -> [URLQueryItem]? {
        let destination = source.filter { $0.value != nil }.reduce(into: [URLQueryItem]()) { result, item in
            if let collection = item.value as? [Any?] {
                collection
                    .compactMap { value in
                        guard let value = value else { return nil }
                        return "\(value)"
                    }
                    .forEach { value in
                        result.append(URLQueryItem(name: item.key, value: value))
                    }
            } else if let value = item.value {
                result.append(URLQueryItem(name: item.key, value: "\(value)"))
            }
        }
        return destination
    }
}
