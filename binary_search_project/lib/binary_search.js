function binarySearch(array, target) {
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

function binarySearchIndex(array, target, min=0, max=array.length-1) {
    if (min == max) return -1
    

    let midIdx = Math.floor((min + max)/2)
    // console.log(array, target, min, max, midIdx)
    if (target > array[midIdx]){
        return binarySearchIndex(array, target, midIdx+1, max)
    } else if (target < array[midIdx]){
        return binarySearchIndex(array, target, min, midIdx)
    } else {
        return midIdx
    }

}


module.exports = {
    binarySearch,
    binarySearchIndex
};

console.log(binarySearchIndex([1,2,3,5,7,8,9,13], 7))