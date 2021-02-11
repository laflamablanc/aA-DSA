function quickSort(array) {
    if (array.length <= 1) return array

    let pivot = array.shift()
    let left = array.filter(ele => ele < pivot)
    let right = array.filter(ele => ele >= pivot)

    let sortedLeft = quickSort(left)
    let sortedRight = quickSort(right)
    return [...sortedLeft, pivot, ...sortedRight]
}


module.exports = {
    quickSort
};