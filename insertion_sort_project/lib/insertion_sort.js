function insertionSort(arr) {
    for (let i=1; i<arr.length; i++){
        let currentEle = arr[i]
        for (let j=i-1; j>=0 && arr[j]>currentEle; j--){
            arr[j+1] = arr[j]
        }
        arr[j+1] = currentEle
    }
    return arr
}

module.exports = {
    insertionSort
};