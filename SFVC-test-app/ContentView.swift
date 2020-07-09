//
//  ContentView.swift
//  SFVC-test-app
//
//  Created by Lee, Bryan on 7/7/20.
//  Copyright © 2020 Lee, Bryan. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var url = "https://www.paypal.com"
    @State var showSFVC = false
    
    var body: some View {
        VStack {
            HStack {
                Text("URL:")
                    .font(.callout)
                    .bold()
                
                TextField("URL", text: $url)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            .padding()
            
            Button(action: {
                HSHosting.openSafari(url: URL(string: self.url)!)
            }) {
                HStack {
                    Image(systemName: "safari")
                    
                    Text("Open in SFSafariViewController")
                }
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .cornerRadius(10)
            }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
