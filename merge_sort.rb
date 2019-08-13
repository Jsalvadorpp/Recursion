def mergeSort(unsortedList,n = unsortedList.length-1)
    return unsortedList if n == 0

    sortedList1 = mergeSort(unsortedList[0..n/2])
    sortedList2 = mergeSort(unsortedList[n/2+1..n])
    return merge(sortedList1,sortedList2)
end

def merge(sortedList1,sortedList2,mergedList = [],i=0,j=0)
    
    while(i!=sortedList1.length && j!=sortedList2.length)
        if sortedList1[i] <= sortedList2[j]
            mergedList.push(sortedList1[i])
            i+=1
        else
            mergedList.push(sortedList2[j])
            j+=1
        end
    end

    return (i == sortedList1.length)? (mergedList + sortedList2[j..-1]) : (mergedList + sortedList1[i..-1])
end

#p mergeSort([5,1,4,8,6])
p mergeSort([38,27,43,3,9,82,10])

