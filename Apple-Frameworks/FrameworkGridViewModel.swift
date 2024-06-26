//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Rodrigo Prado on 23/10/23.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject{
    
    var selectedFramework: Framework? {
        didSet{
            isShowingDetailView = true
        }
    }
        
    @Published var isShowingDetailView = false
    
}
