//
//  SendMessage.swift
//  leucas
//
//  Created by Joel Tan on 21/12/2023.
//

import Foundation

struct DiscordMessage: Encodable {
    var content: String
    var username: String
    var avatarURL: String?
}

func sendMessage(apiURL: String, content: String, username: String, avatarURL: String? = nil) async {
    let discordAPIURL = URL(string: apiURL)!
    var request = URLRequest(url: discordAPIURL)
    request.setValue("application/json", forHTTPHeaderField: "Content-Type")
    request.httpMethod = "POST"
    
    var message = DiscordMessage(content: content, username: username)
    
    if (avatarURL != nil) {
        message.avatarURL = avatarURL
    }
    
    let encoder = JSONEncoder()
    
    var data: Data
    
    do {
        data = try encoder.encode(message)
    }
    catch {
        print(error)
        print("unable to send message. proceeding.")
        return
    }
    
    request.httpBody = data
    
    do {
        let (_, response) = try await URLSession.shared.upload(for: request, from: data)
        
        print(response)
    }
    catch {
        print(error)
    }
}
