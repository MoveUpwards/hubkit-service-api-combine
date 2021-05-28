//
//  SessionRoutes+Combine.swift
//  
//
//  Created by lgriffie on 06/04/2021.
//

#if canImport(Combine)

import Alamofire
import HubkitModel
import Combine
import Foundation
import Offenbach

@available(iOS 13.0, *)
extension HubkitModel.Session {
    /// Create a new session
    public static func create(in project: Project,
                              _ metas: [String: Any] = [:],
                              _ capturedAt: Date) -> AnyPublisher<Self, Error> {
        Future<Self, Error> { promise in
            create(in: project, metas, capturedAt) { (result: Result<Self, AFError>) in
                promise(result.mapError({ $0 as Error }))
            }
        }.eraseToAnyPublisher()
    }

    /// Get the session for the given identifier
    public static func get(with identifier: String) -> AnyPublisher<Self, Error> {
        Future<Self, Error> { promise in
            get(with: identifier) { (result: Result<Self, AFError>) in
                promise(result.mapError({ $0 as Error }))
            }
        }.eraseToAnyPublisher()
    }

    /// Change a session state to ready
    public func ready() -> AnyPublisher<Self, Error> {
        Future<Self, Error> { promise in
            ready { (result: Result<Self, AFError>) in
                promise(result.mapError({ $0 as Error }))
            }
        }.eraseToAnyPublisher()
    }
}

#endif
