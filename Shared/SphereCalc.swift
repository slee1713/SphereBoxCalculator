//
//  SphereCalc.swift
//  SphereBoxCalculator
//
//  Created by Spencer Lee on 1/22/21.
//

import Foundation
/// These equations find the volume of and surface area of a sphere given a radius along with the volume and surface area of a surrounding cube
/// Volume - is the volume of the sphere
/// Radius - radius of sphere
/// below are class variables that need to known for the other documents
class SphereCalc: NSObject, ObservableObject {
    @Published var radius = 1.0
    @Published var sphereVolume = 1.0
    @Published var sphereArea = 1.0
    @Published var boxArea = 1.0
    @Published var boxVolume = 1.0
    
    
    /// These equations find the volume of and surface area of a sphere given a radius along with the volume and surface area of a surrounding cube
    /// Volume - is the volume of the sphere
    /// Radius - radius of sphere
    /// local variables that exist here only
    func calculateSphereParameters()  {

        let volume = 4.0/3.0 * Double.pi * pow(radius, 3.0)
        sphereVolume = volume
        
        let area = 4.0 * Double.pi * pow(radius, 2.0)
        sphereArea = area
        
        let areaBox = 24.0 * pow(radius, 2.0)
        boxArea = areaBox
        
        let volumeBox = 8.0 * pow(radius, 3.0)
        boxVolume = volumeBox    }
}
