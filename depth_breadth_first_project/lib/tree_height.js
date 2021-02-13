// function treeHeight(root) {
//     if (!root) return -1
//     let queue = [root]
//     let height = 0

//     while (queue.length){
//         let node = queue.shift()
//         if (node.left || node.right) height += 1
//         if (node.left) queue.push(node.left) 
//         if (node.right) queue.push(node.right) 
//     }
//     return height
// }

// RECURSIVE SOLUTION

function treeHeight(root) {
    if (!root) return -1

    return 1 + Math.max(treeHeight(root.left), treeHeight(root.right))
}


module.exports = {
    treeHeight
};