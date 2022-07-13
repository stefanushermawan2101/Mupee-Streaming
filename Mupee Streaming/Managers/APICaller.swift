//
//  APICaller.swift
//  Mupee Streaming
//
//  Created by Stefanus Hermawan Sebastian on 13/07/22.
//

import Foundation

struct Constants {
    static let API_KEY = "8a382b35a5b638a0f985f3cbc872e7b0"
    static let baseURL = "https://api.themoviedb.org"
}

enum APIError: Error {
    case failedTogetData
}

class APICaller {
    static let shared = APICaller()
    
    func getTrendingMovies(completion: @escaping (Result<[Movie], Error>) -> Void) {
        
        guard let url = URL(string: "\(Constants.baseURL)/3/trending/movie/day?api_key=\(Constants.API_KEY)") else {return}
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            do{
                let results = try JSONDecoder().decode(TrendingMoviesResponse.self, from: data)
                completion(.success(results.results))
            } catch {
                completion(.failure(error))
            }
            
           
        }
        
        task.resume()
        
    }
    
    func getTrendingTvs(completion: @escaping (Result<[String], Error>) -> Void) {
        guard let url = URL(string: "\(Constants.baseURL)/3/trending/tv/day?api_key=\(Constants.API_KEY)") else {return}
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            do{
                let results = try JSONDecoder().decode(TrendingTvResponse.self, from: data)
                print(results)
            } catch {
                print(error.localizedDescription)
            }
        }
        
        task.resume()
        
    }
    
    func getUpcomingMovies(completion: @escaping (Result<[Movie], Error>) -> Void) {
        guard let url = URL(string: "\(Constants.baseURL)/3/movie/upcoming?api_key=\(Constants.API_KEY)&language=en-US&page=1") else {return}
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            do{
                let results = try JSONDecoder().decode(TrendingMoviesResponse.self, from: data)
                print(results)
            } catch {
                print(error.localizedDescription)
            }
        }
        
        task.resume()
        
    }
    
    func getPopular(completion:  @escaping (Result<[Movie], Error>) -> Void) {
        guard let url = URL(string: "\(Constants.baseURL)/3/movie/popular?api_key=\(Constants.API_KEY)&language=en-US&page=1") else {return}
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            do{
                let results = try JSONDecoder().decode(TrendingMoviesResponse.self, from: data)
                print(results)
            } catch {
                print(error.localizedDescription)
            }
        }
        
        task.resume()
        
    }
    
    func getTopRated(completion:  @escaping (Result<[Movie], Error>) -> Void) {
        guard let url = URL(string: "\(Constants.baseURL)/3/movie/top_rated?api_key=\(Constants.API_KEY)&language=en-US&page=1") else {return}
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            do{
                let results = try JSONDecoder().decode(TrendingMoviesResponse.self, from: data)
                print(results)
            } catch {
                print(error.localizedDescription)
            }
        }
        
        task.resume()
        
    }
    
}

// https://api.themoviedb.org/3/movie/upcoming?api_key=<<api_key>>&language=en-US&page=1
// https://api.themoviedb.org/3/movie/popular?api_key=<<api_key>>&language=en-US&page=1
// https://api.themoviedb.org/3/movie/top_rated?api_key=<<api_key>>&language=en-US&page=1
