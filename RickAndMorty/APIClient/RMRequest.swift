//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by Charity Funtila on 7/20/23.
//

import Foundation


/// Object that represents a single API Call
final class RMRequest {
//    Base URL
//    Endpoint
//    path components
//    query parameters
//https://rickandmortyapi.com/api/location/1
    /// API Constants
    private struct Constants {
        static let baseURL = "https://rickandmortyapi.com/api"
    }
    
    /// Desired Endpoint
    private let endpoint: RMEndpoint
    
    /// Path Components for API, if any
    private let pathComponents: Set<String>
    
    /// Query Parameters for API, if any
    private let queryParameters: [URLQueryItem]
    
    /// Constructed url for api request in string format
    private var urlString: String {
        var string = Constants.baseURL
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty {
            for pathComponent in pathComponents {
                string += "/\(pathComponent)"
            }
        }
        
        if !queryParameters.isEmpty {
            string += "?"
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else {
                    return nil
                }
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += argumentString
        }
        
        return string
    }
    
    /// Constructed and computed API url
    public var url: URL? {
        return URL(string: urlString)
    }
    
    /// Desired API Method
    public let httpMethod = "GET "
    
    //MARK: - Public
    
    
    /// Construct Request
    /// - Parameters:
    ///   - endpoint:  Target Endpoint
    ///   - pathComponents: Collection of path components
    ///   - queryParameters: Collection of query parameters
    public init(endpoint: RMEndpoint, pathComponents: Set<String> = [], queryParameters: [URLQueryItem] = []) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
    
}
