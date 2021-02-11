function merge(array1, array2) {

    array = []
    while(array1.length || array2.length){
        let ele1 = array1.length ? array1[0] : Infinity
        let ele2 = array2.length ? array2[0] : Infinity
        if (ele1 < ele2){

            array.push(array1.shift())
        } else {
            array.push(array2.shift())
        }
        // console.log(array)
    }
    return array
}

function mergeSort(array) {
    if (array.length <= 1){
        return array
    }
    let midIdx = Math.floor(array.length/2)
    let leftHalf = array.slice(0,midIdx)
    let rightHalf = array.slice(midIdx)

    let sortedLeft = mergeSort(leftHalf)
    let sortedRight = mergeSort(rightHalf)
    return merge(sortedLeft, sortedRight)
}



module.exports = {
    merge,
    mergeSort
};

// arr1 = [1,5,10,15]
// arr2 = [0,2,3,7,10]
// merge(arr1, arr2)

arr3 = [1,6,4,3,8,19,85,2,46,7]

console.log(mergeSort(arr3))