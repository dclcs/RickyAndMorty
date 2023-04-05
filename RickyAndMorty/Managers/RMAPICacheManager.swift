//
//  RMAPICacheManager.swift
//  RickyAndMorty
//
//  Created by daicanglan on 2023/4/5.
//

import Foundation

/// Managers in memory session API caches
final class RMAPICacheManager {
    // API URL: Data
    
    private var cacheDictionary: [
        RMEndPoint : NSCache<NSString, NSData>
    ] = [:]

    private var cache = NSCache<NSString, NSData>()

    init() {
        setUpCache()
    }
    
    // MARK: - Public
    
    public func cachedResponse(for endpoint: RMEndPoint, url: URL?) -> Data? {
        guard let targetCache = cacheDictionary[endpoint], let url = url else {
            return nil
        }
        let key = url.absoluteString as NSString
        return targetCache.object(forKey: key) as? Data
    }
    
    public func setCache(for endpoint: RMEndPoint, url: URL?, data: Data) {
        guard let targetCache = cacheDictionary[endpoint], let url = url else {
            return
        }
        let key = url.absoluteString as NSString
        targetCache.setObject(data as NSData, forKey: key)
    }
    
    // MARK: - Private
    
    private func setUpCache() {
        RMEndPoint.allCases.forEach({ endPoint in
            cacheDictionary[endPoint] = NSCache<NSString, NSData>()
        })
    }

}
