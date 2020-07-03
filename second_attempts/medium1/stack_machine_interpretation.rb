=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:

=end

def minilang(cmds)
  stack = []
  register = 0
  cmds.split.each do |cmd|
    case cmd
    when 'PUSH'     then stack << register
    when 'ADD'      then register += stack.pop
    when 'SUB'      then register -= stack.pop
    when 'MULT'     then register *= stack.pop
    when 'DIV'      then register /= stack.pop
    when 'MOD'      then register %= stack.pop
    when 'POP'      then register = stack.pop
    when 'PRINT'    then puts register
    else
      if cmd == '0'
        register = 0
      elsif cmd.to_i.to_s == cmd
        register = cmd.to_i
      else
        return "Command #{cmd} not recognized."
      end
    end
    return "Command #{cmd} performed on an empty register." unless register
  end
  nil
end

# test cases

minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')
# (nothing printed; no PRINT commands)

p minilang('3 PUSH 5 MOD PUSH 7 PUSH 3 PUSH 4 PUSH 5 MULT ADD SUB DIV PRINT')
puts minilang('3 PULL 4 PUSH')
puts minilang('POP')
