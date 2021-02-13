function breadthFirstArray(root) {
    let queue = [root]
    let array = []

    while (queue.length){
        let node = queue.shift()

        array.push(node.val)
        if (node.left) queue.push(node.left)
        if (node.right) queue.push(node.right)
    }


    return array

}

module.exports = {
    breadthFirstArray
};