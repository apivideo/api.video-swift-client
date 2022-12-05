import Foundation
import Alamofire

public class RequestTaskQueue<T>: RequestTask {
    private let executeQueue: DispatchQueue
    private let executeLock = NSLock()
    private var requestBuilders: [RequestBuilder<T>] = []

    private let _downloadProgress = Progress(totalUnitCount: 0)
    private let _uploadProgress = Progress(totalUnitCount: 0)

    internal init(queueLabel: String) {
        executeQueue = DispatchQueue(label: "video.api.UploadQueue.\(queueLabel)")
        super.init()
    }

    override var uploadProgress: Progress {
        var completedUnitCount: Int64 = 0
        var totalUnitCount: Int64 = 0
        requestBuilders.forEach {
            completedUnitCount += $0.requestTask.uploadProgress.completedUnitCount
            totalUnitCount += $0.requestTask.uploadProgress.totalUnitCount
        }

        _uploadProgress.totalUnitCount = totalUnitCount
        _uploadProgress.completedUnitCount = completedUnitCount
        return _uploadProgress
    }

    override var downloadProgress: Progress {
        var completedUnitCount: Int64 = 0
        var totalUnitCount: Int64 = 0
        requestBuilders.forEach {
            completedUnitCount += $0.requestTask.downloadProgress.completedUnitCount
            totalUnitCount += $0.requestTask.downloadProgress.totalUnitCount
        }

        _downloadProgress.totalUnitCount = totalUnitCount
        _downloadProgress.completedUnitCount = completedUnitCount
        return _downloadProgress
    }

    internal func willExecuteRequestBuilder(requestBuilder: RequestBuilder<T>) -> Void {
    }

    internal func execute(_ requestBuilder: RequestBuilder<T>,
                          apiResponseQueue: DispatchQueue = ApiVideoClient.apiResponseQueue,
                          completion: @escaping (_ data: T?, _ error: Error?) -> Void) -> Void {
        requestBuilders.append(requestBuilder)
        return executeQueue.async {
            print("will lock")
            self.executeLock.lock()
            print("was unlock")
            self.willExecuteRequestBuilder(requestBuilder: requestBuilder)
            requestBuilder.execute(apiResponseQueue) { result in
                switch result {
                case let .success(response):
                    completion(response.body, nil)
                case let .failure(error):
                    completion(nil, error)
                }
                print("will unlock")
                self.executeLock.unlock()
            }
        }
    }

    override public func cancel() {
        executeQueue.suspend()
        requestBuilders.forEach {
            $0.requestTask.cancel()
        }
    }
}
