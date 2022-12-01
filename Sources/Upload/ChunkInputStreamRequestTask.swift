import Foundation
import Alamofire


public class ChunkInputStreamRequestTask<T>: ChunkRequestTask<T> {
    private let chunkInputStreams: [ChunkInputStream]
    internal let numOfChunks: Int
    private var chunkId: Int = 0

    internal init(fileSize: Int64,
                  chunkInputStreams: [ChunkInputStream],
                  onProgressReady: ((Progress) -> Void)? = nil,
                  apiResponseQueue: DispatchQueue = ApiVideoClient.apiResponseQueue,
                  completion: @escaping (_ data: T?, _ error: Error?) -> Void) throws {
        self.chunkInputStreams = chunkInputStreams
        numOfChunks = chunkInputStreams.count

        super.init(uploadSize: fileSize, downloadSize: 0, onProgressReady: onProgressReady, apiResponseQueue: apiResponseQueue, completion: completion)
        // Start upload
        guard let firstRequestBuilder = getNextRequestBuilder() else {
            throw ParameterError.emptyRequest
        }
        executeRequestBuilder(firstRequestBuilder)
    }

    internal func createNextRequestBuilder(chunkInputStream: ChunkInputStream, chunkId: Int) -> RequestBuilder<T>? {
        preconditionFailure("This method must be overridden")
    }

    private func getNextChunkInputStream() -> (ChunkInputStream, Int)? {
        if chunkId < numOfChunks {
            let chunkInputStream = chunkInputStreams[chunkId]
            chunkId += 1
            return (chunkInputStream, chunkId)
        } else {
            return nil
        }
    }

    internal override func getNextRequestBuilder() -> RequestBuilder<T>? {
        guard let (chunkInputStream, chunkId) = getNextChunkInputStream() else {
            return nil
        }
        return createNextRequestBuilder(chunkInputStream: chunkInputStream, chunkId: chunkId)
    }
}

public class VideoChunkInputStreamRequestTask: ChunkInputStreamRequestTask<Video> {
    private let videoId: String

    internal init(videoId: String,
                  file: URL,
                  onProgressReady: ((Progress) -> Void)? = nil,
                  apiResponseQueue: DispatchQueue = ApiVideoClient.apiResponseQueue,
                  completion: @escaping (_ data: Video?, _ error: Error?) -> Void) throws {
        self.videoId = videoId

        let chunkInputStreams = try ChunkInputStreamBuilder(file: file).build()
        try super.init(fileSize: file.fileSize, chunkInputStreams: chunkInputStreams, onProgressReady: onProgressReady, apiResponseQueue: apiResponseQueue, completion: completion)
    }

    internal override func createNextRequestBuilder(chunkInputStream: ChunkInputStream, chunkId: Int) -> RequestBuilder<Video>? {
        uploadWithRequestBuilder(chunkInputStream: chunkInputStream, chunkId: chunkId)
    }

    private func uploadWithRequestBuilder(chunkInputStream: ChunkInputStream, chunkId: Int) -> RequestBuilder<Video> {
        VideosAPI.uploadWithRequestBuilder(videoId: videoId, chunkInputStream: chunkInputStream, chunkId: chunkId, numOfChunks: numOfChunks, onProgressReady: { progress in
            self.progressReadyHook(progress: progress)
        })
    }
}

public class VideoWithUploadTokenChunkRequestTask: ChunkInputStreamRequestTask<Video> {
    private let token: String
    private var videoId: String?

    internal init(token: String,
                  file: URL,
                  onProgressReady: ((Progress) -> Void)? = nil,
                  apiResponseQueue: DispatchQueue = ApiVideoClient.apiResponseQueue,
                  completion: @escaping (_ data: Video?, _ error: Error?) -> Void) throws {
        self.token = token

        let chunkInputStreams = try ChunkInputStreamBuilder(file: file).build()
        try super.init(fileSize: file.fileSize, chunkInputStreams: chunkInputStreams, onProgressReady: onProgressReady, apiResponseQueue: apiResponseQueue, completion: completion)
    }

    internal override func createNextRequestBuilder(chunkInputStream: ChunkInputStream, chunkId: Int) -> RequestBuilder<Video>? {
        uploadWithUploadTokenWithRequestBuilder(chunkInputStream: chunkInputStream, chunkId: chunkId)
    }

    internal override func onSuccessResponse(data: Video) {
        videoId = data.videoId
    }

    private func uploadWithUploadTokenWithRequestBuilder(chunkInputStream: ChunkInputStream, chunkId: Int) -> RequestBuilder<Video> {
        VideosAPI.uploadWithUploadTokenWithRequestBuilder(token: token, file: chunkInputStream, videoId: videoId, chunkId: chunkId, numOfChunks: numOfChunks, onProgressReady: { progress in
            self.progressReadyHook(progress: progress)
        })
    }
}
