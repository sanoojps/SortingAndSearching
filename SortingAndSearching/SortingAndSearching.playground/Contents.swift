import UIKit

var str = "Hello, playground"

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

binary_search(sorted_list: [1,2,3,4], item: 3);


func bubble_sort(list: Array<Int>)
{
    var array = list
    
    for _ in 0...array.count
    {
        for inner in 1...array.count - 1
        {
             if array[inner - 1] > array[inner]
             {
                // swap
                let temp = array[inner - 1]
                array[inner - 1] = array[inner]
                array[inner] = temp
            }
        }
    }
    
    print(array)
}

bubble_sort(list: [9,1,5,2,6])

func merge_and_sort(arrayOne:Array<Int>, arrayTwo: Array<Int>)
{
    // find largest array
    var mergedArray = arrayOne
    for element in arrayTwo
    {
        mergedArray.append(element)
    }
    
    bubble_sort(list: mergedArray)
}

merge_and_sort(arrayOne: [9,1,5,2,6], arrayTwo: [19,11,15,12,16]);


