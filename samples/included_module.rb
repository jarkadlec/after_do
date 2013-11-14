require 'after_do'

module M
  def m
    # ...
  end
end

class A
  include M
end

M.extend AfterDo
M.after :m do puts 'm was called' end

a = A.new
puts a.public_methods
a.m # prints out: m was called