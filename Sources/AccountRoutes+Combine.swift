//
//  AccountRoutes+Combine.swift
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
extension Account {
    /// Get the current authenticated user
    public static func me() -> AnyPublisher<Self, Error> {
        Future<Self, Error> { promise in
            me { (result: Result<Self, AFError>) in
                promise(result.mapError({ $0 as Error }))
            }
        }.eraseToAnyPublisher()
    }
}

#endif
