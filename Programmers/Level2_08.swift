import Foundation

func solution(_ cacheSize:Int, _ cities:[String]) -> Int {
    var cacheArray: [String] = []
    var time = 0
    
    for i in 0..<cities.count {
        if cacheSize == 0 {
            time = cities.count * 5
            break
        }
        
        let city = cities[i].lowercased()
         if cacheArray.contains(city) {
             cacheArray.removeAll(where: { $0 == city })
             cacheArray.append(city)
             time += 1
         } else {
             if cacheArray.count == cacheSize {
                 cacheArray.removeFirst()   
             }
             cacheArray.append(city)
             time += 5
         }
    }
    return time
}
