class Stack
  attr_reader :stack, :limit
  
  def initialize(limit = nil)
    @stack = []
    @limit = limit
  end

  def push(value)
    raise "Stack Overflow" unless limit.nil? || stack.size < limit

    stack << value
  end

  def pop
    stack.delete_at(-1)
  end

  def peek
    stack[-1]
  end

  def size
    stack.size
  end

  def empty?
    stack.size == 0
  end

  def full?
    stack.size == limit
  end

  def search(value)
    stack.include?(value) ? stack.size - stack.index(value) - 1 : -1
  end

end
