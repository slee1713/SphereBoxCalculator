//
//  ContentView.swift
//  Shared
//
//  Created by Spencer Lee on 1/22/21.
//

import SwiftUI
/// the observed object variable is the local instance of the class SphereCalc designed to calculate desired parameters given a radius
/// the next set of state variables are the local variables used to display the values within the interface, they will be used within the function that gives them their desired values to then be placed into the display
struct ContentView: View {
    @ObservedObject var mySphereCalculator = SphereCalc()
    
    @State var radiusText = "1.0"
    @State var surfaceAreaSphereText = ""
    @State var volumeSphereText = ""
    @State var surfaceAreaBox = ""
    @State var volumeBox = ""
    
    
    var body: some View {
        
        VStack{
            
            
            Text("Radius")
                .padding()
                
       
            TextField("radiusText", text: $radiusText)
                .padding()

        
            Text("Surface Area of Sphere")
                .padding()
       
            TextField("surfaceAreaSphereText" , text: $surfaceAreaSphereText)
                .padding()
        
            Text("Volume of Sphere")
                .padding()
       
            TextField("volumeSphereText", text: $volumeSphereText)
                .padding()
           
            Text("Surface Area of Box")
                .padding()
       
            TextField("surfaceAreaBox", text: $surfaceAreaBox)
                .padding()
            
            Text("Volume of the Box")
                .padding()
       
            TextField("volumeBox", text: $volumeBox)
                .padding()
            
            
            //Button("Calculate", action: calculateSphereArea)
        }
                        
                    
        HStack {
            
            Button("Calculate", action: calculate)
                }
        
        .padding()
    }
    /// mySphereCalculator is the local instance of the SphereCalc class and the variables refrenced are that of the aforementioned class to display into the content viewer
    /// radius is replaced by the value of the user input, sphereVolume is the name of the calculated volume within the class so it needs to be pulled from there
    ///sphereArea, boxArea, boxVolume are the surface area of the sphere and box, and volume of the surrounding box respectively
    
    func calculate()  {
       
        mySphereCalculator.radius = Double(radiusText)!
        
        
        
        mySphereCalculator.calculateSphereParameters()


        volumeSphereText = "\(mySphereCalculator.sphereVolume)"

        surfaceAreaSphereText = "\(mySphereCalculator.sphereArea)"

        surfaceAreaBox = "\(mySphereCalculator.boxArea)"

        
        volumeBox = "\(mySphereCalculator.boxVolume)"
    }
    }
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
