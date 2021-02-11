function binarySearch(array, target) {
    console.log(array, target)
    if (array.length === 0) return false

    let midIdx = Math.floor(array.length/2)
    let left = array.slice(0,midIdx)
    let right = array.slice(midIdx+1)

    if (target > array[midIdx]){
        return binarySearch(right, target)
    } else if (target < array[midIdx]){
        return binarySearch(left, target)
    } else {
        return true
    }
}

function binarySearchIndex(array, target) {
    if (array.length === 0) return false

    let midIdx = Math.floor
}


module.exports = {
    binarySearch,
    binarySearchIndex
};

