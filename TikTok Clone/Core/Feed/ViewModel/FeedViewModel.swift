//
//  FeedViewModel.swift
//  TikTok Clone
//
//  Created by Ikbal Demirdoven on 2023-12-15.
//

import Foundation

@MainActor
class FeedViewModel : ObservableObject {
    @Published var posts = [Post]()
    let videoURLs =
    [
     "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
     "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
     "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
     "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4",
     "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4",
     "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4",
     "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerMeltdowns.mp4",
    ]
    init() {
        fetchPosts()
    }
    
    func fetchPosts() {
        self.posts =
        [
         .init(id: NSUUID().uuidString, videoURL: videoURLs[0]),
         .init(id: NSUUID().uuidString, videoURL: videoURLs[1]),
         .init(id: NSUUID().uuidString, videoURL: videoURLs[2]),
         .init(id: NSUUID().uuidString, videoURL: videoURLs[3]),
         .init(id: NSUUID().uuidString, videoURL: videoURLs[4]),
         .init(id: NSUUID().uuidString, videoURL: videoURLs[5]),
         .init(id: NSUUID().uuidString, videoURL: videoURLs[6])
        ]
    }
}
