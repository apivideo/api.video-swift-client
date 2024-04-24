//
// LiveStreamsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class LiveStreamsAPI {

    /**
     Create live stream
     
     - parameter liveStreamCreationPayload: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects.
     */
    @discardableResult
    open class func create(liveStreamCreationPayload: LiveStreamCreationPayload, apiResponseQueue: DispatchQueue = ApiVideoClient.apiResponseQueue, completion: @escaping ((_ data: LiveStream?, _ error: Error?) -> Void)) -> RequestTask {
        return create(liveStreamCreationPayload: liveStreamCreationPayload, apiResponseQueue: apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Create live stream
     
     - parameter liveStreamCreationPayload: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result of the request (incl. headers).
     */
    @discardableResult
    open class func create(liveStreamCreationPayload: LiveStreamCreationPayload, apiResponseQueue: DispatchQueue = ApiVideoClient.apiResponseQueue, completion: @escaping (_ result: Swift.Result<Response<LiveStream>, ErrorResponse>) -> Void) -> RequestTask {
            return createWithRequestBuilder(liveStreamCreationPayload: liveStreamCreationPayload).execute(apiResponseQueue, completion)
    }


    /**
     Create live stream
     - POST /live-streams
     - Creates a livestream object.
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Retry-After(Int)]
     - parameter liveStreamCreationPayload: (body)  
     - returns: RequestBuilder<LiveStream> 
     */
    internal class func createWithRequestBuilder(liveStreamCreationPayload: LiveStreamCreationPayload) -> RequestBuilder<LiveStream> {
        let localVariablePath = "/live-streams"
        let localVariableURLString = ApiVideoClient.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: liveStreamCreationPayload)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<LiveStream>.Type = ApiVideoClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }


    /**
     Retrieve live stream
     
     - parameter liveStreamId: (path) The unique ID for the live stream you want to watch. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects.
     */
    @discardableResult
    open class func get(liveStreamId: String, apiResponseQueue: DispatchQueue = ApiVideoClient.apiResponseQueue, completion: @escaping ((_ data: LiveStream?, _ error: Error?) -> Void)) -> RequestTask {
        return get(liveStreamId: liveStreamId, apiResponseQueue: apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Retrieve live stream
     
     - parameter liveStreamId: (path) The unique ID for the live stream you want to watch. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result of the request (incl. headers).
     */
    @discardableResult
    open class func get(liveStreamId: String, apiResponseQueue: DispatchQueue = ApiVideoClient.apiResponseQueue, completion: @escaping (_ result: Swift.Result<Response<LiveStream>, ErrorResponse>) -> Void) -> RequestTask {
            return getWithRequestBuilder(liveStreamId: liveStreamId).execute(apiResponseQueue, completion)
    }


    /**
     Retrieve live stream
     - GET /live-streams/{liveStreamId}
     - Get a livestream by id.
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Retry-After(Int)]
     - parameter liveStreamId: (path) The unique ID for the live stream you want to watch. 
     - returns: RequestBuilder<LiveStream> 
     */
    internal class func getWithRequestBuilder(liveStreamId: String) -> RequestBuilder<LiveStream> {
        var localVariablePath = "/live-streams/{liveStreamId}"
        let liveStreamIdPreEscape = "\(APIHelper.mapValueToPathItem(liveStreamId))"
        let liveStreamIdPostEscape = liveStreamIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{liveStreamId}", with: liveStreamIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = ApiVideoClient.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<LiveStream>.Type = ApiVideoClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }


    /**
     Update a live stream
     
     - parameter liveStreamId: (path) The unique ID for the live stream that you want to update information for such as player details. 
     - parameter liveStreamUpdatePayload: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects.
     */
    @discardableResult
    open class func update(liveStreamId: String, liveStreamUpdatePayload: LiveStreamUpdatePayload, apiResponseQueue: DispatchQueue = ApiVideoClient.apiResponseQueue, completion: @escaping ((_ data: LiveStream?, _ error: Error?) -> Void)) -> RequestTask {
        return update(liveStreamId: liveStreamId, liveStreamUpdatePayload: liveStreamUpdatePayload, apiResponseQueue: apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Update a live stream
     
     - parameter liveStreamId: (path) The unique ID for the live stream that you want to update information for such as player details. 
     - parameter liveStreamUpdatePayload: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result of the request (incl. headers).
     */
    @discardableResult
    open class func update(liveStreamId: String, liveStreamUpdatePayload: LiveStreamUpdatePayload, apiResponseQueue: DispatchQueue = ApiVideoClient.apiResponseQueue, completion: @escaping (_ result: Swift.Result<Response<LiveStream>, ErrorResponse>) -> Void) -> RequestTask {
            return updateWithRequestBuilder(liveStreamId: liveStreamId, liveStreamUpdatePayload: liveStreamUpdatePayload).execute(apiResponseQueue, completion)
    }


    /**
     Update a live stream
     - PATCH /live-streams/{liveStreamId}
     - Updates the livestream object.
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Retry-After(Int)]
     - parameter liveStreamId: (path) The unique ID for the live stream that you want to update information for such as player details. 
     - parameter liveStreamUpdatePayload: (body)  
     - returns: RequestBuilder<LiveStream> 
     */
    internal class func updateWithRequestBuilder(liveStreamId: String, liveStreamUpdatePayload: LiveStreamUpdatePayload) -> RequestBuilder<LiveStream> {
        var localVariablePath = "/live-streams/{liveStreamId}"
        let liveStreamIdPreEscape = "\(APIHelper.mapValueToPathItem(liveStreamId))"
        let liveStreamIdPostEscape = liveStreamIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{liveStreamId}", with: liveStreamIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = ApiVideoClient.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: liveStreamUpdatePayload)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<LiveStream>.Type = ApiVideoClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }


    /**
     Delete a live stream
     
     - parameter liveStreamId: (path) The unique ID for the live stream that you want to remove. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects.
     */
    @discardableResult
    open class func delete(liveStreamId: String, apiResponseQueue: DispatchQueue = ApiVideoClient.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return delete(liveStreamId: liveStreamId, apiResponseQueue: apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Delete a live stream
     
     - parameter liveStreamId: (path) The unique ID for the live stream that you want to remove. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result of the request (incl. headers).
     */
    @discardableResult
    open class func delete(liveStreamId: String, apiResponseQueue: DispatchQueue = ApiVideoClient.apiResponseQueue, completion: @escaping (_ result: Swift.Result<Response<Void>, ErrorResponse>) -> Void) -> RequestTask {
            return deleteWithRequestBuilder(liveStreamId: liveStreamId).execute(apiResponseQueue, completion)
    }


    /**
     Delete a live stream
     - DELETE /live-streams/{liveStreamId}
     - If you do not need a live stream any longer, you can send a request to delete it. All you need is the liveStreamId.
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Retry-After(Int)]
     - parameter liveStreamId: (path) The unique ID for the live stream that you want to remove. 
     - returns: RequestBuilder<Void> 
     */
    internal class func deleteWithRequestBuilder(liveStreamId: String) -> RequestBuilder<Void> {
        var localVariablePath = "/live-streams/{liveStreamId}"
        let liveStreamIdPreEscape = "\(APIHelper.mapValueToPathItem(liveStreamId))"
        let liveStreamIdPostEscape = liveStreamIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{liveStreamId}", with: liveStreamIdPostEscape, options: .literal, range: nil)
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
     * enum for parameter sortBy
     */
    public enum SortByList: String, CaseIterable {
        case name = "name"
        case createdat = "createdAt"
        case updatedat = "updatedAt"
    }

    /**
     * enum for parameter sortOrder
     */
    public enum SortOrderList: String, CaseIterable {
        case asc = "asc"
        case desc = "desc"
    }

    /**
     List all live streams
     
     - parameter streamKey: (query) The unique stream key that allows you to stream videos. (optional)
     - parameter name: (query) You can filter live streams by their name or a part of their name. (optional)
     - parameter sortBy: (query) Enables you to sort live stream results. Allowed attributes: &#x60;name&#x60;, &#x60;createdAt&#x60;, &#x60;updatedAt&#x60;. &#x60;name&#x60; - the name of the live stream. &#x60;createdAt&#x60; - the time a live stream was created. &#x60;updatedAt&#x60; - the time a live stream was last updated.  When using &#x60;createdAt&#x60; or &#x60;updatedAt&#x60;, the API sorts the results based on the ISO-8601 time format.  (optional)
     - parameter sortOrder: (query) Allowed: asc, desc. Ascending for date and time means that earlier values precede later ones. Descending means that later values preced earlier ones. For title, it is 0-9 and A-Z ascending and Z-A, 9-0 descending. (optional)
     - parameter currentPage: (query) Choose the number of search results to return per page. Minimum value: 1 (optional, default to 1)
     - parameter pageSize: (query) Results per page. Allowed values 1-100, default is 25. (optional, default to 25)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects.
     */
    @discardableResult
    open class func list(streamKey: String? = nil, name: String? = nil, sortBy: SortByList? = nil, sortOrder: SortOrderList? = nil, currentPage: Int? = nil, pageSize: Int? = nil, apiResponseQueue: DispatchQueue = ApiVideoClient.apiResponseQueue, completion: @escaping ((_ data: LiveStreamListResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return list(streamKey: streamKey, name: name, sortBy: sortBy, sortOrder: sortOrder, currentPage: currentPage, pageSize: pageSize, apiResponseQueue: apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     List all live streams
     
     - parameter streamKey: (query) The unique stream key that allows you to stream videos. (optional)
     - parameter name: (query) You can filter live streams by their name or a part of their name. (optional)
     - parameter sortBy: (query) Enables you to sort live stream results. Allowed attributes: &#x60;name&#x60;, &#x60;createdAt&#x60;, &#x60;updatedAt&#x60;. &#x60;name&#x60; - the name of the live stream. &#x60;createdAt&#x60; - the time a live stream was created. &#x60;updatedAt&#x60; - the time a live stream was last updated.  When using &#x60;createdAt&#x60; or &#x60;updatedAt&#x60;, the API sorts the results based on the ISO-8601 time format.  (optional)
     - parameter sortOrder: (query) Allowed: asc, desc. Ascending for date and time means that earlier values precede later ones. Descending means that later values preced earlier ones. For title, it is 0-9 and A-Z ascending and Z-A, 9-0 descending. (optional)
     - parameter currentPage: (query) Choose the number of search results to return per page. Minimum value: 1 (optional, default to 1)
     - parameter pageSize: (query) Results per page. Allowed values 1-100, default is 25. (optional, default to 25)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result of the request (incl. headers).
     */
    @discardableResult
    open class func list(streamKey: String? = nil, name: String? = nil, sortBy: SortByList? = nil, sortOrder: SortOrderList? = nil, currentPage: Int? = nil, pageSize: Int? = nil, apiResponseQueue: DispatchQueue = ApiVideoClient.apiResponseQueue, completion: @escaping (_ result: Swift.Result<Response<LiveStreamListResponse>, ErrorResponse>) -> Void) -> RequestTask {
            return listWithRequestBuilder(streamKey: streamKey, name: name, sortBy: sortBy, sortOrder: sortOrder, currentPage: currentPage, pageSize: pageSize).execute(apiResponseQueue, completion)
    }


    /**
     List all live streams
     - GET /live-streams
     - Get the list of livestreams on the workspace.
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Retry-After(Int)]
     - parameter streamKey: (query) The unique stream key that allows you to stream videos. (optional)
     - parameter name: (query) You can filter live streams by their name or a part of their name. (optional)
     - parameter sortBy: (query) Enables you to sort live stream results. Allowed attributes: &#x60;name&#x60;, &#x60;createdAt&#x60;, &#x60;updatedAt&#x60;. &#x60;name&#x60; - the name of the live stream. &#x60;createdAt&#x60; - the time a live stream was created. &#x60;updatedAt&#x60; - the time a live stream was last updated.  When using &#x60;createdAt&#x60; or &#x60;updatedAt&#x60;, the API sorts the results based on the ISO-8601 time format.  (optional)
     - parameter sortOrder: (query) Allowed: asc, desc. Ascending for date and time means that earlier values precede later ones. Descending means that later values preced earlier ones. For title, it is 0-9 and A-Z ascending and Z-A, 9-0 descending. (optional)
     - parameter currentPage: (query) Choose the number of search results to return per page. Minimum value: 1 (optional, default to 1)
     - parameter pageSize: (query) Results per page. Allowed values 1-100, default is 25. (optional, default to 25)
     - returns: RequestBuilder<LiveStreamListResponse> 
     */
    internal class func listWithRequestBuilder(streamKey: String? = nil, name: String? = nil, sortBy: SortByList? = nil, sortOrder: SortOrderList? = nil, currentPage: Int? = nil, pageSize: Int? = nil) -> RequestBuilder<LiveStreamListResponse> {
        let localVariablePath = "/live-streams"
        let localVariableURLString = ApiVideoClient.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "streamKey": streamKey?.encodeToJSON(),
            "name": name?.encodeToJSON(),
            "sortBy": sortBy?.encodeToJSON(),
            "sortOrder": sortOrder?.encodeToJSON(),
            "currentPage": currentPage?.encodeToJSON(),
            "pageSize": pageSize?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<LiveStreamListResponse>.Type = ApiVideoClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }


    /**
     Upload a thumbnail
     
     - parameter liveStreamId: (path) The unique ID for the live stream you want to upload. 
     - parameter file: (form) The image to be added as a thumbnail. The mime type should be image/jpeg, image/png or image/webp. The max allowed size is 8 MiB. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects.
     */
    @discardableResult
    open class func uploadThumbnail(liveStreamId: String, file: URL, apiResponseQueue: DispatchQueue = ApiVideoClient.apiResponseQueue, completion: @escaping ((_ data: LiveStream?, _ error: Error?) -> Void)) -> RequestTask {
        return uploadThumbnail(liveStreamId: liveStreamId, file: file, apiResponseQueue: apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Upload a thumbnail
     
     - parameter liveStreamId: (path) The unique ID for the live stream you want to upload. 
     - parameter file: (form) The image to be added as a thumbnail. The mime type should be image/jpeg, image/png or image/webp. The max allowed size is 8 MiB. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result of the request (incl. headers).
     */
    @discardableResult
    open class func uploadThumbnail(liveStreamId: String, file: URL, apiResponseQueue: DispatchQueue = ApiVideoClient.apiResponseQueue, completion: @escaping (_ result: Swift.Result<Response<LiveStream>, ErrorResponse>) -> Void) -> RequestTask {
            return uploadThumbnailWithRequestBuilder(liveStreamId: liveStreamId, file: file).execute(apiResponseQueue, completion)
    }


    /**
     Upload a thumbnail
     - POST /live-streams/{liveStreamId}/thumbnail
     - Upload the thumbnail for the livestream.
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Retry-After(Int)]
     - parameter liveStreamId: (path) The unique ID for the live stream you want to upload. 
     - parameter file: (form) The image to be added as a thumbnail. The mime type should be image/jpeg, image/png or image/webp. The max allowed size is 8 MiB. 
     - returns: RequestBuilder<LiveStream> 
     */
    internal class func uploadThumbnailWithRequestBuilder(liveStreamId: String, file: URL) -> RequestBuilder<LiveStream> {
        var localVariablePath = "/live-streams/{liveStreamId}/thumbnail"
        let liveStreamIdPreEscape = "\(APIHelper.mapValueToPathItem(liveStreamId))"
        let liveStreamIdPostEscape = liveStreamIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{liveStreamId}", with: liveStreamIdPostEscape, options: .literal, range: nil)
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

        let localVariableRequestBuilder: RequestBuilder<LiveStream>.Type = ApiVideoClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }


    /**
     Delete a thumbnail
     
     - parameter liveStreamId: (path) The unique identifier of the live stream whose thumbnail you want to delete. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects.
     */
    @discardableResult
    open class func deleteThumbnail(liveStreamId: String, apiResponseQueue: DispatchQueue = ApiVideoClient.apiResponseQueue, completion: @escaping ((_ data: LiveStream?, _ error: Error?) -> Void)) -> RequestTask {
        return deleteThumbnail(liveStreamId: liveStreamId, apiResponseQueue: apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Delete a thumbnail
     
     - parameter liveStreamId: (path) The unique identifier of the live stream whose thumbnail you want to delete. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result of the request (incl. headers).
     */
    @discardableResult
    open class func deleteThumbnail(liveStreamId: String, apiResponseQueue: DispatchQueue = ApiVideoClient.apiResponseQueue, completion: @escaping (_ result: Swift.Result<Response<LiveStream>, ErrorResponse>) -> Void) -> RequestTask {
            return deleteThumbnailWithRequestBuilder(liveStreamId: liveStreamId).execute(apiResponseQueue, completion)
    }


    /**
     Delete a thumbnail
     - DELETE /live-streams/{liveStreamId}/thumbnail
     - Send the unique identifier for a live stream to delete its thumbnail.
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Retry-After(Int)]
     - parameter liveStreamId: (path) The unique identifier of the live stream whose thumbnail you want to delete. 
     - returns: RequestBuilder<LiveStream> 
     */
    internal class func deleteThumbnailWithRequestBuilder(liveStreamId: String) -> RequestBuilder<LiveStream> {
        var localVariablePath = "/live-streams/{liveStreamId}/thumbnail"
        let liveStreamIdPreEscape = "\(APIHelper.mapValueToPathItem(liveStreamId))"
        let liveStreamIdPostEscape = liveStreamIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{liveStreamId}", with: liveStreamIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = ApiVideoClient.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<LiveStream>.Type = ApiVideoClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

}
