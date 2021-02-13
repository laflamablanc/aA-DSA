function treeSum(root) {
    if (!root) return 0

    let sum = root.val + treeSum(root.left) + treeSum(root.right)
    return sum
}


module.exports = {
    treeSum
};