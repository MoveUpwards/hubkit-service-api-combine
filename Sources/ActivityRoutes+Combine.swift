//
//  ActivityRoutes+Combine.swift
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

extension Activity {
    /// Get the current authenticated user
    public static func all() -> AnyPublisher<[Self], Error> {
        Future<[Self], Error> { promise in
            all { (result: Result<[Self], AFError>) in
                promise(result.mapError({ $0 as Error }))
            }
        }.eraseToAnyPublisher()
    }

    /// Get the activity for the given identifier
    public static func get(with identifier: String) -> AnyPublisher<Self, Error> {
        Future<Self, Error> { promise in
            get(with: identifier) { (result: Result<Self, AFError>) in
                promise(result.mapError({ $0 as Error }))
            }
        }.eraseToAnyPublisher()
    }
}
