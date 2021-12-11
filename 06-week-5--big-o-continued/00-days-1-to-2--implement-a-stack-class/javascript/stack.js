class Stack {
  constructor() {
    this.stack = [];
    // this is an arbitrary (low) value to make testing easier
    this.limit = 10;
  }

  // add item to top of stack if not full
  // if full throw error
  push(item) {
    if(this.isFull()) {
      throw new Error ("Stack is Full");
    } else {
      this.stack.push(item);
    };
  }

  // remove item from top of stack and return it
  pop() {
    return this.stack.pop();
  }

  // return item at top of stack without removing it
  peek() {
    return this.stack[this.size() -1];
  }

  // return true if stack is empty, otherwise false
  isEmpty() {
    return this.size() === 0;
  }

  // return true if stack is full, otherwise false
  isFull() {
    return this.size() === this.limit;
  }

  // return number of items in stack
  size() {
    return this.stack.length;
  }

  // return -1 if item not in stack, otherwise integer representing 
  // how far it is from the top (top = 0, so stack length - index - 1)
  search(target) {
    for(let i = 0; i < this.size(); i++) {
      if(this.stack[i] === target) {
        return this.size() - i - 1;
      };
    };
    return -1;
  }

  // print contents of stack: do not return the stack itself!
  print() {
    console.log(this.stack.join('-'));
  }
}

if (require.main === module) {
  const stack = new Stack();

  for(let i = 0; i < 6; ++i) {
    stack.push(i);
  }

  console.log('Print');
  stack.print();
  console.log('Size', stack.size());
  console.log('Is Empty?', stack.isEmpty());
  console.log('Is Full?', stack.isFull());
  console.log('Peek', stack.peek());
  console.log('Find 6', stack.search(6));
}

module.exports = Stack;
