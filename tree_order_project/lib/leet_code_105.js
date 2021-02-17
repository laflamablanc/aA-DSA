// View the full problem and run the test cases at:
//  https://leetcode.com/problems/construct-binary-tree-from-preorder-and-inorder-traversal/

const { TreeNode } = require('./tree_node.js');


function buildTree(preorder, inorder) {
    if (!preorder.length) return null

    let rootVal = preorder[0]
    let root = new TreeNode(rootVal)

    midIdx = inorder.indexOf(rootVal)
    
    let inorderLH = inorder.slice(0,midIdx) 
    let inorderRH = inorder.slice(midIdx + 1)
    
    let preorderLH = preorder.filter((val)=> inorderLH.includes(val))
    let preorderRH = preorder.filter((val)=> inorderRH.includes(val))

    root.left = buildTree(preorderLH, inorderLH)
    root.right = buildTree(preorderRH, inorderRH)

    return root

}

pre = [3,9,20,15,7]
ino = [9,3,15,20,7]

console.log(buildTree(pre,ino))
