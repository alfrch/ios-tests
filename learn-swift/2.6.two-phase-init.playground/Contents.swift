import Foundation

struct NuclearRocket {
    var meters: Double
    var liters: Double
    
    // init for ??
    init(meters: Double, liters: Double) {
        self.meters = meters
        self.liters = liters
    }
    
    // init for ??
    init(ft: Double, gallons: Double) {
        let convertedMeters = ft / 3.28
        let convertedLiters = gallons * 3.79
        self.init(meters: convertedMeters, liters: convertedLiters)
    }
}

var rocket = NuclearRocket(meters: 20, liters: 20)
rocket.meters // 20
rocket.liters // 20

var newRocket = NuclearRocket(ft: 300, gallons: 2)
newRocket.meters // 91.46
newRocket.liters // 7.58
