//
//  CustomEnvironmentProperties.swift
//  QuestionApp
//
//  Created by Dagmar Beckel on 7/16/23.
//

import Foundation
import SwiftUI
 
struct RootPresentationKey: EnvironmentKey{
    static let defaultValue: Binding<Bool> = .constant(false)
}
 
extension EnvironmentValues {
    var rootPresentation: Binding<Bool> {
        get{
            self[RootPresentationKey.self]
        }
        set{
            self[RootPresentationKey.self] = newValue
        }
    }
}
