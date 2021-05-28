//
//  DeviceRoutes+Combine.swift
//  
//
//  Created by lgriffie on 06/04/2021.
//

import Alamofire
import Combine
import Foundation
import HubkitApi
import HubkitModel
import Offenbach

extension Device {
    /// Create a new device
    public func create() -> AnyPublisher<Self, Error> {
        Future<Self, Error> { promise in
            create { (result: Result<Self, AFError>) in
                promise(result.mapError({ $0 as Error }))
            }
        }.eraseToAnyPublisher()
    }

    /// Get the device for the given identifier
    public static func get(with identifier: String) -> AnyPublisher<Self, Error> {
        Future<Self, Error> { promise in
            get(with: identifier) { (result: Result<Self, AFError>) in
                promise(result.mapError({ $0 as Error }))
            }
        }.eraseToAnyPublisher()
    }

    /// Update a device
    public func update(_ parameters: [String: String]) -> AnyPublisher<Self, Error> {
        Future<Self, Error> { promise in
            update(parameters) { (result: Result<Self, AFError>) in
                promise(result.mapError({ $0 as Error }))
            }
        }.eraseToAnyPublisher()
    }

    /// Get the activity for the given identifier
    public func activate() -> AnyPublisher<Self, Error> {
        Future<Self, Error> { promise in
            activate { (result: Result<Self, AFError>) in
                promise(result.mapError({ $0 as Error }))
            }
        }.eraseToAnyPublisher()
    }
}
