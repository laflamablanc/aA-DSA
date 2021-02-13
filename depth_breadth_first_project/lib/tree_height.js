function treeHeight(root) {
    if (!root) return -1
    let queue = [root]
    let height = 0

    while (queue.length){
        let node = queue.shift()
        if (node.left || node.right) height += 1
        if (node.left) queue.push(node.left) 
        if (node.right) queue.push(node.right) 
    }
    return height
}


module.exports = {
    treeHeight
};