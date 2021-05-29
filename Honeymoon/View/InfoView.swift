//
//  InfoView.swift
//  Honeymoon
//
//  Created by Evgenii Lysenko on 5/22/21.
//

import SwiftUI

struct InfoView: View {
    // MARK: - PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    
    // MARK: - BODY
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
        VStack(alignment: .center, spacing: 20) {
            HeaderComponent()
            
            Spacer(minLength: 10)
            
            Text("App Info")
                .fontWeight(.black)
                .modifier(TitleModifier())
            
            AppInfoView()
            
            Text("Credits")
                .fontWeight(.black)
                .modifier(TitleModifier())
            
            CreditsView()
            
            Spacer(minLength: 10)
            
            Button(action: {
                // ACTION
               // print("A button was tapped.")
                self.presentationMode.wrappedValue.dismiss()
            }) {
                Text("Continue".uppercased())
                    .modifier(ButtonModifier())
            }
            } //: VSTACK
        .frame(minWidth: 0, maxWidth: .infinity)
        .padding(.top, 15)
        .padding(.bottom, 25)
        .padding(.horizontal, 25)
        } //: SCROLL
    }
}

    // MARK: - PREVIEW

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
            .previewDevice("iPhone 11 Pro")
    }
}

struct AppInfoView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            RowAppInfoView(item1: "Application", item2: "Honeymoon")
            RowAppInfoView(item1: "Compatibility", item2: "iPhone/iPad")
            RowAppInfoView(item1: "Developer", item2: "Evgenii Lysenko")
            RowAppInfoView(item1: "Designer", item2: "Robert Petras")
            RowAppInfoView(item1: "Website", item2: "swiftuimasterclass.com")
            RowAppInfoView(item1: "Version", item2: "1.0.0")
        } //: VSTACK
    }
}

struct RowAppInfoView: View {
    // MARK: - PROPERTIES
    var item1: String
    var item2: String
    // MARK: -BODY
    
    var body: some View {
        VStack {
            HStack {
                Text(item1).foregroundColor(Color.gray)
                Spacer()
                Text(item2)
            } //: HSTACK
            Divider()
        } //: VSTACK
    }
}

struct CreditsView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Text("Photos").foregroundColor(Color.gray)
                Spacer()
                Text("Unsplash")
            } //: HSTACK
            
            Divider()
            
            Text("Photographers").foregroundColor(Color.gray)
            Text("Shifaaz Shamoon (Maldives), Grillot Edouard (France), Evan Wise (Greece), Christoph Schulz (United Arab Emirates), Andrew Coelho (USA), Damiano Baschiera (Italy), Daniel Olah (Hungary), Andrzej Rusinowski (Poland), Lucas Miguel (Slovenia), Florencia Potter (Spain), Ian Simmonds (USA), Ian Keefe (Canada), Denys Nevozhai (Thailand), David Köhler (Italy), Andre Benz (USA), Alexandre Chambon (South Korea), Roberto Nickson (Mexico), Ajit Paul Abraham (UK), Jeremy Bishop (USA), Davi Costa (Brazil), Liam Pozz (Australia)")
                .multilineTextAlignment(.leading)
                .font(.footnote)
        } //: VSTACK
    }
}
