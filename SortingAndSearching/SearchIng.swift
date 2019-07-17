//
//  SearchIng.swift
//  SortingAndSearching
//
//  Created by carvak on 17/07/2019.
//  Copyright © 2019 0. All rights reserved.
//

import Foundation

func binary_search<Element>(sorted_list: ContiguousArray<Element>, item: Element) -> Bool
    where Element: Comparable
{
    var first  = 0
    var last = sorted_list.count - 1
    var found = false
    
    while first <= last && found == false {
        
        // find midpoint
        let midpoint = (first + last) / 2
        
        // check if the element is at midpoint
        if sorted_list[midpoint] == item
        {
            found = true
        }
        else
        {
            // look for which side to search
            // left of midpoint - if sorted_list[midpoint] > item
            // right of midpoint - if sorted_list[midpoint] < item
            if item < sorted_list[midpoint]
            {
                last = midpoint - 1
            }
            else
            {
                first = midpoint + 1
            }
        }
    }
    
    return found
}
