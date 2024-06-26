//
//   FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Rodrigo Prado on 23/10/23.
//

import SwiftUI

struct _FrameworkDetailView: View {
    
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack{
            
            HStack{
                
                Spacer()
                
                Button{
                    
                    isShowingDetailView = false
                    
                } label:{
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
            }.padding()
            
            Spacer()
            
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button{
                isShowingSafariView = true
            }label:{
                AFButton(title: "Learn More")
            }
        }.sheet(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        })
    }
}

//#Preview {
//    _FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
//}
