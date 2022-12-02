//  ChunkInputStreamBuilder.swift
//

import Foundation

class ChunkInputStreamBuilder {
    private let file: URL
    private let fileSize: Int64

    public init(file: URL) throws {
        self.file = file
        fileSize = try file.fileSize
    }

    public func build() -> [FileChunkInputStream] {
        let chunkSize = ApiVideoClient.getChunkSize()
        var chunkInputStreams: [FileChunkInputStream] = []
        for offset in stride(from: 0, through: fileSize, by: chunkSize) {
            chunkInputStreams.append(FileChunkInputStream(file: file, offset: offset, capacity: min(chunkSize, Int(fileSize - offset))))
        }

        return chunkInputStreams
    }
}
