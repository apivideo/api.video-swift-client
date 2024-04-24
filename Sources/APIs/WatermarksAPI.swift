//
// WatermarksAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class WatermarksAPI {

    /**
     Upload a watermark
     
     - parameter file: (form) The &#x60;.jpg&#x60; or &#x60;.png&#x60; image to be added as a watermark. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects.
     */
    @discardableResult
    open class func upload(file: URL, apiResponseQueue: DispatchQueue = ApiVideoClient.apiResponseQueue, completion: @escaping ((_ data: Watermark?, _ error: Error?) -> Void)) -> RequestTask {
        return upload(file: file, apiResponseQueue: apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Upload a watermark
     
     - parameter file: (form) The &#x60;.jpg&#x60; or &#x60;.png&#x60; image to be added as a watermark. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result of the request (incl. headers).
     */
    @discardableResult
    open class func upload(file: URL, apiResponseQueue: DispatchQueue = ApiVideoClient.apiResponseQueue, completion: @escaping (_ result: Swift.Result<Response<Watermark>, ErrorResponse>) -> Void) -> RequestTask {
            return uploadWithRequestBuilder(file: file).execute(apiResponseQueue, completion)
    }


    /**
     Upload a watermark
     - POST /watermarks
     - Create a new watermark by uploading a `JPG` or a `PNG` image.
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Retry-After(Int)]
     - parameter file: (form) The &#x60;.jpg&#x60; or &#x60;.png&#x60; image to be added as a watermark. 
     - returns: RequestBuilder<Watermark> 
     */
    internal class func uploadWithRequestBuilder(file: URL) -> RequestBuilder<Watermark> {
        let localVariablePath = "/watermarks"
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

        let localVariableRequestBuilder: RequestBuilder<Watermark>.Type = ApiVideoClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }


    /**
     Delete a watermark
     
     - parameter watermarkId: (path) The watermark ID for the watermark you want to delete. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects.
     */
    @discardableResult
    open class func delete(watermarkId: String, apiResponseQueue: DispatchQueue = ApiVideoClient.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return delete(watermarkId: watermarkId, apiResponseQueue: apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Delete a watermark
     
     - parameter watermarkId: (path) The watermark ID for the watermark you want to delete. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result of the request (incl. headers).
     */
    @discardableResult
    open class func delete(watermarkId: String, apiResponseQueue: DispatchQueue = ApiVideoClient.apiResponseQueue, completion: @escaping (_ result: Swift.Result<Response<Void>, ErrorResponse>) -> Void) -> RequestTask {
            return deleteWithRequestBuilder(watermarkId: watermarkId).execute(apiResponseQueue, completion)
    }


    /**
     Delete a watermark
     - DELETE /watermarks/{watermarkId}
     - Delete a watermark.
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Retry-After(Int)]
     - parameter watermarkId: (path) The watermark ID for the watermark you want to delete. 
     - returns: RequestBuilder<Void> 
     */
    internal class func deleteWithRequestBuilder(watermarkId: String) -> RequestBuilder<Void> {
        var localVariablePath = "/watermarks/{watermarkId}"
        let watermarkIdPreEscape = "\(APIHelper.mapValueToPathItem(watermarkId))"
        let watermarkIdPostEscape = watermarkIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{watermarkId}", with: watermarkIdPostEscape, options: .literal, range: nil)
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
     List all watermarks
     
     - parameter sortBy: (query) Allowed: createdAt. You can search by the time watermark were created at. (optional)
     - parameter sortOrder: (query) Allowed: asc, desc. asc is ascending and sorts from A to Z. desc is descending and sorts from Z to A. (optional)
     - parameter currentPage: (query) Choose the number of search results to return per page. Minimum value: 1 (optional, default to 1)
     - parameter pageSize: (query) Results per page. Allowed values 1-100, default is 25. (optional, default to 25)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects.
     */
    @discardableResult
    open class func list(sortBy: String? = nil, sortOrder: String? = nil, currentPage: Int? = nil, pageSize: Int? = nil, apiResponseQueue: DispatchQueue = ApiVideoClient.apiResponseQueue, completion: @escaping ((_ data: WatermarksListResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return list(sortBy: sortBy, sortOrder: sortOrder, currentPage: currentPage, pageSize: pageSize, apiResponseQueue: apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     List all watermarks
     
     - parameter sortBy: (query) Allowed: createdAt. You can search by the time watermark were created at. (optional)
     - parameter sortOrder: (query) Allowed: asc, desc. asc is ascending and sorts from A to Z. desc is descending and sorts from Z to A. (optional)
     - parameter currentPage: (query) Choose the number of search results to return per page. Minimum value: 1 (optional, default to 1)
     - parameter pageSize: (query) Results per page. Allowed values 1-100, default is 25. (optional, default to 25)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result of the request (incl. headers).
     */
    @discardableResult
    open class func list(sortBy: String? = nil, sortOrder: String? = nil, currentPage: Int? = nil, pageSize: Int? = nil, apiResponseQueue: DispatchQueue = ApiVideoClient.apiResponseQueue, completion: @escaping (_ result: Swift.Result<Response<WatermarksListResponse>, ErrorResponse>) -> Void) -> RequestTask {
            return listWithRequestBuilder(sortBy: sortBy, sortOrder: sortOrder, currentPage: currentPage, pageSize: pageSize).execute(apiResponseQueue, completion)
    }


    /**
     List all watermarks
     - GET /watermarks
     - List all watermarks associated with your workspace.
     - responseHeaders: [X-RateLimit-Limit(Int), X-RateLimit-Remaining(Int), X-RateLimit-Retry-After(Int)]
     - parameter sortBy: (query) Allowed: createdAt. You can search by the time watermark were created at. (optional)
     - parameter sortOrder: (query) Allowed: asc, desc. asc is ascending and sorts from A to Z. desc is descending and sorts from Z to A. (optional)
     - parameter currentPage: (query) Choose the number of search results to return per page. Minimum value: 1 (optional, default to 1)
     - parameter pageSize: (query) Results per page. Allowed values 1-100, default is 25. (optional, default to 25)
     - returns: RequestBuilder<WatermarksListResponse> 
     */
    internal class func listWithRequestBuilder(sortBy: String? = nil, sortOrder: String? = nil, currentPage: Int? = nil, pageSize: Int? = nil) -> RequestBuilder<WatermarksListResponse> {
        let localVariablePath = "/watermarks"
        let localVariableURLString = ApiVideoClient.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "sortBy": sortBy?.encodeToJSON(),
            "sortOrder": sortOrder?.encodeToJSON(),
            "currentPage": currentPage?.encodeToJSON(),
            "pageSize": pageSize?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<WatermarksListResponse>.Type = ApiVideoClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

}
