//
//  ContentView.swift
//  cameraAccessApp
//training 2023
//  Created by scholar on 5/25/23.
//

import SwiftUI

struct ContentView: View {
    @State var isImagePickerShowing = false
    @State var selectedImage: UIImage?
    var body: some View {
        VStack(spacing: 30) {
            Image(uiImage: selectedImage ?? UIImage(named: "camera")!)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(15)
            
            Button("select a photo"){
                isImagePickerShowing = true
            }
            .frame(width: 160.0, height: 30.0)
            .buttonStyle(.borderedProminent)
            .tint(.white)
            .foregroundColor(Color(hue: 0.863, saturation: 0.73, brightness: 0.912))
            .fontWeight(.bold)
            .buttonBorderShape(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=shape: ButtonBorderShape@*/.roundedRectangle/*@END_MENU_TOKEN@*/)
            .opacity(/*@START_MENU_TOKEN@*/19.8/*@END_MENU_TOKEN@*/)
            
            
            Button("take a photo") {
                isImagePickerShowing = true
            }
            .frame(width: 170.0, height: 30.0)
            .buttonStyle(.borderedProminent)
            .tint(.white)
            .foregroundColor(Color(hue: 0.863, saturation: 0.73, brightness: 0.912))
            .fontWeight(.bold)
            .buttonBorderShape(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=shape: ButtonBorderShape@*/.roundedRectangle/*@END_MENU_TOKEN@*/)
            .opacity(/*@START_MENU_TOKEN@*/19.8/*@END_MENU_TOKEN@*/)
            
        }
        .sheet(isPresented: $isImagePickerShowing, content: {
            ImagePicker(isImagePickerShowing: $isImagePickerShowing, selectedImage: $selectedImage)
        })
        
        .padding(5.0)
        .frame(width: 250.0, height: 500.0)
        .background(Rectangle()
            .cornerRadius(15)
            .foregroundColor(Color(hue: 0.875, saturation: 0.092, brightness: 1.0)))
        
    }
}
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

