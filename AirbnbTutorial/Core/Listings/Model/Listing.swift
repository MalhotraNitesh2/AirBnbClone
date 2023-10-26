//
//  Listing.swift
//  AirbnbTutorial
//
//  Created by Nitesh Malhotra on 26/10/23.
//

import Foundation
struct Listing: Identifiable,Codable{
    let id :String
    let ownerUid:String
    let ownerName:String
    let ownerImageUrl: String
    let numberofbedrooms: Int
    let numberofbathrroms: Int
    let numberGuests : Int
    let numberofBeds:Int
    let latitude:Double
    let longitude : Double
    let address : String
    let state : String
    let title : String
    let rating : Double
    var features:[Listingfeatures]
    var amenities:[ListingAmenities]
    let type : [LisitingType]
}
enum Listingfeatures: Int,Codable,Hashable{
    case selfCheckIN
    case superhost
//    var id : Int {return self.rawValue}
}
enum ListingAmenities: Int,Codable,Hashable{
    case pool
    case kitchen
    case laundry
    case tv
    case wifi
    case washer
    case alarmSystem
    case office
    case balcony
    
    var title:String{
        switch self{
        case .pool: return "Pool"
        case .kitchen:
            return  "Kitchen"
        case .laundry:
            return "Laundry"
        case .tv:
            return"TV"
        case .alarmSystem:
            return"AlarmSystem"
        case .office:
            return "Office"
        case .balcony:
            return"Balcony"
        case .washer:
            return"Washer"
        case .wifi:
            return "Wifi"
        }
    }
    var imageName:String{
        switch self{
        case.pool :return "figure.pool.swim"
        case .kitchen:
            return "fork.knife"
        case .laundry:
            return "wifi"
        case .tv:
            return "tv"
        case .alarmSystem:
            return "checkboard.shield"
        case .office:
            return "pencil.and.ruler.fill"
        case .balcony:
            return "building"
        case .washer:
            return "washer"
        case .wifi:
             return "wifi"
        }
    }
//    var id : Int {return self.rawValue}
}
enum LisitingType : Int,Codable,Identifiable,Hashable{
    
    
    case apartment
    case house
    case townhouse
    case villa
    var description : String{
        switch self {
        case .apartment: return "Apartment"
        case .house:
            return "House"
        case .townhouse:
            return "TownHouse"
        case .villa:
            return "Villa"
        }
    }
    var id : Int {return self.rawValue}
}
