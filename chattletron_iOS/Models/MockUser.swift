//
//  MockUser.swift
//  chattletron_iOS
//
//  Created by Andrew Bui on 19/10/21.
//

import Foundation
import MessageKit

struct MockUser: SenderType, Equatable {
    var senderId: String
    var displayName: String
}
