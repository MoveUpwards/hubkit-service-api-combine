//
//  ApiToken+Combine.swift
//  
//
//  Created by lgriffie on 06/04/2021.
//

import Alamofire
import Combine
import Foundation
import HubkitApi
import Offenbach

extension ApiToken {
    /// Authenticate a user and get a ApiToken
    public static func authenticate(with params: LoginForm) -> AnyPublisher<Self, Error> {
        Future<Self, Error> { promise in
            authenticate(with: params) { (result: Result<Self, AFError>) in
                promise(result.mapError({ $0 as Error }))
            }
        }.eraseToAnyPublisher()
    }
}
