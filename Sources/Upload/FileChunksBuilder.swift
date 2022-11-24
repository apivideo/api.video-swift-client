//  FileChunksBuilder.swift
//

import Foundation

class FileChunksBuilder {
    private let fileURL: URL
    let fileSize: Int64

    public init(fileURL: URL) throws {
        self.fileURL = fileURL
        self.fileSize = try Int64(fileURL.resourceValues(forKeys: [URLResourceKey.fileSizeKey]).fileSize!)
        let fileDictionary = try FileManager.default.attributesOfItem(atPath: self.fileURL.path)
        guard let fileSize = fileDictionary[FileAttributeKey.size] as? UInt64 else {
            print("Can't get FileManager filesize")
            return
        }
        print ("init: fileManager size = \(fileSize) - resourceValues = \(self.fileSize)")
    }

    public func build() -> [ChunkInputStream] {
        do {
            let resourcesfileSize = try Int64(fileURL.resourceValues(forKeys: [URLResourceKey.fileSizeKey]).fileSize!)
            let fileDictionary = try FileManager.default.attributesOfItem(atPath: self.fileURL.path)
            guard let fileManagerSize = fileDictionary[FileAttributeKey.size] as? UInt64 else {
                print("Can't get FileManager filesize")
                return []
            }
            print ("build: fileManager size = \(fileManagerSize) - resourceValues = \(resourcesfileSize)")
            
        } catch {
            print("build:: can't get file size: \(error)")
        }
        
        var chunks: [ChunkInputStream] = []
        for offset in stride(from: UInt64(0), through: UInt64(fileSize), by: ApiVideoClient.getChunkSize()) {
            print("build: chunkInputStream: from = \(offset) to + \(min(ApiVideoClient.getChunkSize(), Int(UInt64(fileSize) - offset)))")
            chunks.append(ChunkInputStream(fileURL: fileURL, offset: offset, maxSize: min(ApiVideoClient.getChunkSize(), Int(UInt64(fileSize) - offset))))
        }
        print("build: number of chunk = \(chunks.count)")

        return chunks
    }
}
