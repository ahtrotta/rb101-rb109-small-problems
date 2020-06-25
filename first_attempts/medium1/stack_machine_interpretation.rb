require 'pry'

def error_msg(cmd)
  "Error. You cannot #{cmd} with an empty stack!"
end

def minilang(cmd_str)
  register = 0
  stack = []
  cmd_str.split.each do |cmd|
    cmd.upcase!
    case cmd
    when 'PRINT'    then puts register
    when 'PUSH'     then stack << register
    when /[0-9]/    then register = cmd.to_i
    when 'POP'
      return error_msg(cmd) if stack.empty?
      register = stack.pop
    when 'ADD'
      return error_msg(cmd) if stack.empty?
      register += stack.pop
    when 'SUB'
      return error_msg(cmd) if stack.empty?
      register -= stack.pop
    when 'MULT'
      return error_msg(cmd) if stack.empty?
      register *= stack.pop
    when 'DIV'
      return error_msg(cmd) if stack.empty?
      register /= stack.pop
    when 'MOD'
      return error_msg(cmd) if stack.empty?
      register %= stack.pop
    else return 'Error. Unknown command.'
    end
  end
  nil
end

binding.pry
minilang('3 PUSH 5 MOD PUSH 7 PUSH 3 PUSH 5 PUSH 4 MULT ADD SUB DIV PRINT')
