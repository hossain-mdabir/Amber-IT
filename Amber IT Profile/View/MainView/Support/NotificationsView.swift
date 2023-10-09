//
//  NotificationsView.swift
//  Amber IT Profile
//
//  Created by Tanvir Rahman on 4/10/23.
//

import SwiftUI

struct NotificationsView: View {
    
    // Dismiss view
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        VStack {
            // Navigation Bar
            NavigationBar(content: {
                Button {
                    // Dismissing from this view
                    presentation.wrappedValue.dismiss()
                } label: {
                    Image("arrow-left")
                        .resizable()
                        .frame(width: 24, height: 24)
                }
                
                Text("Notification")
                    .font(.custom(FontManager.Poppins.semiBold, size: 18))
            })
            
            ScrollView{
                ForEach(0..<20) { i in
                    
                    ZStack{
                        HStack(alignment: .center){
                            Image("v\(i%4)")
                                .resizable()
                                .frame(width: 94, height: 64)
                                .cornerRadius(10)
                                .scaledToFit()
                            VStack(alignment: .leading, spacing: 5){
                                Text("Payment Successful")
                                    .font(.custom(FontManager.Montserrat.medium, size: 13))
                                    .foregroundColor(.white)
                                VStack(alignment: .leading){
                                    Text("Play The Trailer")
                                        .font(.custom(FontManager.Montserrat.medium, size: 12))
                                        .foregroundColor(.white)
                                    Text("May 23")
                                        .font(.custom(FontManager.Montserrat.medium, size: 13))
                                        .foregroundColor(.white)
                                }
                            }
                            Spacer()
                            Button{
                                
                            }label: {
                                Image("more-vertical")
                                    .resizable()
                                    .frame(width: 12, height: 12)
                            }
                            
                        }
                    }.padding(.horizontal, 5)
                }
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
//        .toolbar {
//            ToolbarItem(placement: .navigationBarLeading) {
//                NavigationBarLeading(previousViewName: "Notification")
//            }
//
//            ToolbarItem(placement: .navigationBarTrailing) {
//                NavigationBarTrailing(gotoNotificationView: .constant(false))
//            }
//        }
    }
}

struct NotificationsView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationsView()
    }
}
