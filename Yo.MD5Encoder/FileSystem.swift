//
//  FileSystem.swift
//  Yo.MD5Encoder
//
//  Created by Sergei on 26/02/2019.
//  Copyright © 2019 Yo. All rights reserved.
//

import Foundation

class FileSystem {
    static func doWork() {
        if let path = Bundle.main.path(forResource: "concept", ofType: "png") {
            if let data = try? NSMutableData(contentsOfFile: path) {
                data?.appendByte(1)
                while ((data?.length)! * 8) % 512 != 448 {
                    data?.appendByte(0)
                }
                print(data?.length)
                print(data!)
            }
        }
    }
}


extension NSMutableData {
    func appendByte(_ i: Int8) {
        var i = i
        self.append(&i, length: 1)
    }
}
