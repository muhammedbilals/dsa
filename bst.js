class Node {
    constructor(value){
        this.value = value
        this.right = null 
        this.left = null
    }
}

class BinarySearchTree{
    constructor(){
        this.root = null
    }

    isEmpty(){
        return this.root===null
    }

    insert(value){
        const newNode = new Node(value)
        if(this.isEmpty()){
            this.root = newNode
        }else{
            this.insertNode(this.root,newNode)
        }
    }

    insertNode(root,newNode){
        if(newNode.value<root.value){
            if(root.left===null) 
                root.left = newNode
            else
                this.insertNode(root.left,newNode)
        }else{
            if(root.right ===null)
                root.right= newNode
            else
                this.insertNode(root.right,newNode)
        }
    }

    search(root,value){
        if(root === null) 
            return false
        else{
            if(root.value ===value) 
                return true
            else if(value < root.value) 
                return this.search(root.left,value)
            else
                return this.search(root.right,value)

        }

    }

    //Breadth first search

    levelOrder(){
        let queue = []
        if(this.root ===null){
            console.log('empty tree');
        }else{
            queue.push(this.root)
            while(queue.length){
                let curr = queue.shift()
                console.log(curr.value);
                if(curr.left){
                    queue.push(curr.left)
                }
                if(curr.right){
                    queue.push(curr.right)
                }
            }
        }
    }

    // depth first search
    preOrder(root){
        if(root){
        console.log(root.value)
        this.preOrder(root.left)
        this.preOrder(root.right)
        }
    }
    inOrder(root){
        if(root){
            this.inOrder(root.left)
            console.log(root.value);
            this.inOrder(root.right)

        }
    }
    postOrder(root){
        if(root){
            this.postOrder(root.left)
            this.postOrder(root.right)
            console.log(root.value);

        }
    }
    minValue(root){
        if(root.left ===null) return root.value
        return this.minValue(root.left)
    }
    maxValue(root){
        if(root.right ===null) return root.value
        return this.maxValue(root.right)
    }

    delete(value){
     this.root = this.deleteNode(this.root,value)
    }

    deleteNode(root, value){
        if(root === null){
            return root
        }
        if(root.value>value){
            root.left = this.deleteNode(root.left, value)
        }
        else if(root.value<value){
            root.right = this.deleteNode(root.right, value)
        }else{
            if(!root.left && !root.right){
                return null
            }
            if(!root.left){
                return root.right
            }
            if(!root.right){
                return root.left
            }
            root.value = this.minValue(root.right)
            root.right = this.deleteNode(root.right, root.value)
        }
        
        return root
    }
    
}
const tree =new BinarySearchTree()
tree.insert(10)
tree.insert(5)
tree.insert(15)
tree.insert(3)
tree.insert(7)
tree.insert(4)
tree.insert(2)
tree.insert(12)
tree.insert(17)

//tree.levelOrder()
 tree.preOrder(tree.root)
// tree.inOrder(tree.root)
// tree.postOrder(tree.root)  
// console.log(tree.minValue(tree.root));
// console.log(tree.maxValue(tree.root));
//console.log(tree.search(tree.root,15));
//console.log(tree.search(tree.root,3));
// tree.delete(10)
// tree.levelOrder()