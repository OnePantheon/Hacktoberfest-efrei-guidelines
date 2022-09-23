/*
 *  Copyright (C) 2021 Groupe MINASTE
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program; if not, write to the Free Software Foundation, Inc.,
 * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
 *
 */
//
//  CarrierIdentification.swift
//  FMobile
//
//  Created by PlugN on 26/03/2019.
//  Copyright © 2019 Groupe MINASTE. All rights reserved.
//

import Foundation

/// This internal class is used to identify carriers.
internal class CarrierIdentification {
    
    
    // DEPRECATED SECTION --------------------------------------
    
    
    // OBSOLETED SECTION ---------------------------------------
    
    
    // INTERNAL SECTION ----------------------------------------
    
    /// - Attention: This variable should stay internal. The actual values behind the non-standard EU ISO code are set by the FMobile Team and may vary. You should not use that function for other purposes, as it is not standardized and only fits the current version of the API service. For instance, both of these ISO codes lack the inclusion of Great Britain, despite containing some other countries not inside the European Union. In short, don't use it, it is reserved for the staff that knows how they selected the corresponding country ISO code values.
    internal static let europe = ["FR", "DE", "AT", "BE", "BG", "CY", "HR", "DK", "ES", "EE", "FI", "GI", "GR", "HU", "IE", "IS", "IT", "LV", "LI", "LT", "LU", "MT", "NO", "NL", "PL", "PT", "CZ", "RO", "SK", "SI", "SE", "GP", "GF", "MQ", "YT", "RE", "BL", "MF"]
    
    /// - Attention: This variable should stay internal. The actual values behind the non-standard UE ISO code are set by the FMobile Team and may vary. You should not use that function for other purposes, as it is not standardized and only fits the current version of the API service. For instance, both of these ISO codes lack the inclusion of Great Britain, despite containing some other countries not inside the European Union. In short, don't use it, it is reserved for the staff that knows how they selected the corresponding country ISO code values.
    internal static let europeland = ["FR", "DE", "AT", "BE", "BG", "CY", "HR", "DK", "ES", "EE", "FI", "GI", "GR", "HU", "IE", "IS", "IT", "LV", "LI", "LT", "LU", "MT", "NO", "NL", "PL", "PT", "CZ", "RO", "SK", "SI", "SE"]
    
    /// This function gets the uppercased 2-digit ISO country code for a given pair of Mobile Country Code (MCC) and Mobile Network Code (MNC).
    /// - Parameters:
    ///   - country: The Mobile Country Code (MCC) of the carrier, as a String
    ///   - mnc: The Mobile Network Code (MNC) of the carrier, as a String
    /// - Returns: The matching uppercased 2-digit ISO country code, or "--" (2x '-') if no matching found.
    internal static func getIsoCountryCode (_ country : String, _ mnc : String) -> String {
        let dictCodes = [
            "208" : "FR",
            "262" : "DE"
            // TODO: complete the list
        ]
    
        var valueToReturn = "--"
        if dictCodes[country] != nil {
            valueToReturn = dictCodes[country] ?? "--"
        }
        
        return valueToReturn.uppercased()
    }

}
