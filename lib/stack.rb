class Stack
  attr_reader :stack
  
  def initialize
    @stack = []
  end

  def push(value)
    stack << value
    self
  end

  def pop
    stack.delete_at(-1)
  end

  def peek
    stack[-1]
  end

end