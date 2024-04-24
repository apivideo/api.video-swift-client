//
// ChaptersAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class ChaptersAPI {

    /**
     Upload a chapter
     
     - parameter videoId: (path) The unique identifier for the video you want to upload a chapter for. 
     - parameter language: (path) A valid [BCP 47](https://github.com/libyal/libfwnt/wiki/Language-Code-identifiers) language representation. 
     - parameter file: (form) The VTT file describing the chapters you want to upload. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects.
     */
    @discardableResult
    open class func upload(videoId: String, language: String, file: URL, apiResponseQueue: DispatchQueue = ApiVideoClient.apiResponseQueue, completion: @escaping ((_ data: Chapter?, _ error: Error?) -> Void)) -> RequestTask {
        return upload(videoId: videoId, language: language, file: file, apiResponseQueue: apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Upload a chapter
     
     - parameter videoId: (path) The unique identifier for the video you want to upload a chapter for. 
     - parameter language: (path) A valid [BCP 47](https://github.com/libyal/libfwnt/wiki/Language-Code-identifiers) language representation. 
     - parameter file: (form) The VTT file describing the chapters you want to upload. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result of the request (incl. headers).
     */
    @discardableResult
    open class func upload(videoId: String, language: String, file: URL, apiResponseQueue: DispatchQueue = ApiVideoClient.apiResponseQueue, completion: @escaping (_ result: Swift.Result<Response<Chapter>, ErrorResponse>) -> Void) -> RequestTask {
            return uploadWithRequestBuilder(videoId: videoId, language: language, file: file).execute(apiResponseQueue, completion)
    }


    /**
     Upload a chapter
     - POST /videos/{videoId}/chapters/{language}
     - Upload a VTT file to add chapters to your video. Chapters help break the video into sections. Read our [tutorial](https://api.video/blog/tutorials/adding-chapters-to-your-videos/) for more details.
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Retry-After(Int)]
     - parameter videoId: (path) The unique identifier for the video you want to upload a chapter for. 
     - parameter language: (path) A valid [BCP 47](https://github.com/libyal/libfwnt/wiki/Language-Code-identifiers) language representation. 
     - parameter file: (form) The VTT file describing the chapters you want to upload. 
     - returns: RequestBuilder<Chapter> 
     */
    internal class func uploadWithRequestBuilder(videoId: String, language: String, file: URL) -> RequestBuilder<Chapter> {
        var localVariablePath = "/videos/{videoId}/chapters/{language}"
        let videoIdPreEscape = "\(APIHelper.mapValueToPathItem(videoId))"
        let videoIdPostEscape = videoIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{videoId}", with: videoIdPostEscape, options: .literal, range: nil)
        let languagePreEscape = "\(APIHelper.mapValueToPathItem(language))"
        let languagePostEscape = languagePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{language}", with: languagePostEscape, options: .literal, range: nil)
        let localVariableURLString = ApiVideoClient.basePath + localVariablePath
        let localVariableFormParams: [String: Any?] = [
            "file": file.encodeToJSON(),
        ]
        let localVariableNonNullParameters = APIHelper.rejectNil(localVariableFormParams)
        let localVariableParameters = APIHelper.convertBoolToString(localVariableNonNullParameters)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "multipart/form-data",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Chapter>.Type = ApiVideoClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }


    /**
     Retrieve a chapter
     
     - parameter videoId: (path) The unique identifier for the video you want to show a chapter for. 
     - parameter language: (path) A valid [BCP 47](https://github.com/libyal/libfwnt/wiki/Language-Code-identifiers) language representation. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects.
     */
    @discardableResult
    open class func get(videoId: String, language: String, apiResponseQueue: DispatchQueue = ApiVideoClient.apiResponseQueue, completion: @escaping ((_ data: Chapter?, _ error: Error?) -> Void)) -> RequestTask {
        return get(videoId: videoId, language: language, apiResponseQueue: apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Retrieve a chapter
     
     - parameter videoId: (path) The unique identifier for the video you want to show a chapter for. 
     - parameter language: (path) A valid [BCP 47](https://github.com/libyal/libfwnt/wiki/Language-Code-identifiers) language representation. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result of the request (incl. headers).
     */
    @discardableResult
    open class func get(videoId: String, language: String, apiResponseQueue: DispatchQueue = ApiVideoClient.apiResponseQueue, completion: @escaping (_ result: Swift.Result<Response<Chapter>, ErrorResponse>) -> Void) -> RequestTask {
            return getWithRequestBuilder(videoId: videoId, language: language).execute(apiResponseQueue, completion)
    }


    /**
     Retrieve a chapter
     - GET /videos/{videoId}/chapters/{language}
     - Retrieve a chapter for by video id in a specific language. 
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Retry-After(Int)]
     - parameter videoId: (path) The unique identifier for the video you want to show a chapter for. 
     - parameter language: (path) A valid [BCP 47](https://github.com/libyal/libfwnt/wiki/Language-Code-identifiers) language representation. 
     - returns: RequestBuilder<Chapter> 
     */
    internal class func getWithRequestBuilder(videoId: String, language: String) -> RequestBuilder<Chapter> {
        var localVariablePath = "/videos/{videoId}/chapters/{language}"
        let videoIdPreEscape = "\(APIHelper.mapValueToPathItem(videoId))"
        let videoIdPostEscape = videoIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{videoId}", with: videoIdPostEscape, options: .literal, range: nil)
        let languagePreEscape = "\(APIHelper.mapValueToPathItem(language))"
        let languagePostEscape = languagePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{language}", with: languagePostEscape, options: .literal, range: nil)
        let localVariableURLString = ApiVideoClient.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Chapter>.Type = ApiVideoClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }


    /**
     Delete a chapter
     
     - parameter videoId: (path) The unique identifier for the video you want to delete a chapter from. 
     - parameter language: (path) A valid [BCP 47](https://github.com/libyal/libfwnt/wiki/Language-Code-identifiers) language representation. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects.
     */
    @discardableResult
    open class func delete(videoId: String, language: String, apiResponseQueue: DispatchQueue = ApiVideoClient.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return delete(videoId: videoId, language: language, apiResponseQueue: apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Delete a chapter
     
     - parameter videoId: (path) The unique identifier for the video you want to delete a chapter from. 
     - parameter language: (path) A valid [BCP 47](https://github.com/libyal/libfwnt/wiki/Language-Code-identifiers) language representation. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result of the request (incl. headers).
     */
    @discardableResult
    open class func delete(videoId: String, language: String, apiResponseQueue: DispatchQueue = ApiVideoClient.apiResponseQueue, completion: @escaping (_ result: Swift.Result<Response<Void>, ErrorResponse>) -> Void) -> RequestTask {
            return deleteWithRequestBuilder(videoId: videoId, language: language).execute(apiResponseQueue, completion)
    }


    /**
     Delete a chapter
     - DELETE /videos/{videoId}/chapters/{language}
     - Delete a chapter in a specific language by providing the video ID for the video you want to delete the chapter from and the language the chapter is in.
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Retry-After(Int)]
     - parameter videoId: (path) The unique identifier for the video you want to delete a chapter from. 
     - parameter language: (path) A valid [BCP 47](https://github.com/libyal/libfwnt/wiki/Language-Code-identifiers) language representation. 
     - returns: RequestBuilder<Void> 
     */
    internal class func deleteWithRequestBuilder(videoId: String, language: String) -> RequestBuilder<Void> {
        var localVariablePath = "/videos/{videoId}/chapters/{language}"
        let videoIdPreEscape = "\(APIHelper.mapValueToPathItem(videoId))"
        let videoIdPostEscape = videoIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{videoId}", with: videoIdPostEscape, options: .literal, range: nil)
        let languagePreEscape = "\(APIHelper.mapValueToPathItem(language))"
        let languagePostEscape = languagePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{language}", with: languagePostEscape, options: .literal, range: nil)
        let localVariableURLString = ApiVideoClient.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = ApiVideoClient.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }


    /**
     List video chapters
     
     - parameter videoId: (path) The unique identifier for the video you want to retrieve a list of chapters for. 
     - parameter currentPage: (query) Choose the number of search results to return per page. Minimum value: 1 (optional, default to 1)
     - parameter pageSize: (query) Results per page. Allowed values 1-100, default is 25. (optional, default to 25)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects.
     */
    @discardableResult
    open class func list(videoId: String, currentPage: Int? = nil, pageSize: Int? = nil, apiResponseQueue: DispatchQueue = ApiVideoClient.apiResponseQueue, completion: @escaping ((_ data: ChaptersListResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return list(videoId: videoId, currentPage: currentPage, pageSize: pageSize, apiResponseQueue: apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     List video chapters
     
     - parameter videoId: (path) The unique identifier for the video you want to retrieve a list of chapters for. 
     - parameter currentPage: (query) Choose the number of search results to return per page. Minimum value: 1 (optional, default to 1)
     - parameter pageSize: (query) Results per page. Allowed values 1-100, default is 25. (optional, default to 25)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result of the request (incl. headers).
     */
    @discardableResult
    open class func list(videoId: String, currentPage: Int? = nil, pageSize: Int? = nil, apiResponseQueue: DispatchQueue = ApiVideoClient.apiResponseQueue, completion: @escaping (_ result: Swift.Result<Response<ChaptersListResponse>, ErrorResponse>) -> Void) -> RequestTask {
            return listWithRequestBuilder(videoId: videoId, currentPage: currentPage, pageSize: pageSize).execute(apiResponseQueue, completion)
    }


    /**
     List video chapters
     - GET /videos/{videoId}/chapters
     - Retrieve a list of all chapters for by video id.
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Retry-After(Int)]
     - parameter videoId: (path) The unique identifier for the video you want to retrieve a list of chapters for. 
     - parameter currentPage: (query) Choose the number of search results to return per page. Minimum value: 1 (optional, default to 1)
     - parameter pageSize: (query) Results per page. Allowed values 1-100, default is 25. (optional, default to 25)
     - returns: RequestBuilder<ChaptersListResponse> 
     */
    internal class func listWithRequestBuilder(videoId: String, currentPage: Int? = nil, pageSize: Int? = nil) -> RequestBuilder<ChaptersListResponse> {
        var localVariablePath = "/videos/{videoId}/chapters"
        let videoIdPreEscape = "\(APIHelper.mapValueToPathItem(videoId))"
        let videoIdPostEscape = videoIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{videoId}", with: videoIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = ApiVideoClient.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "currentPage": currentPage?.encodeToJSON(),
            "pageSize": pageSize?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ChaptersListResponse>.Type = ApiVideoClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

}
