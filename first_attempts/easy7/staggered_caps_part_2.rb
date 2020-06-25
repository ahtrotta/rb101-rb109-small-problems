def staggered_case(str, count=false)
  upcase = true
  new_str = ''
  str.chars.each do |c|
    if c =~ /[a-zA-Z]/
      upcase ? new_str << c.upcase : new_str << c.downcase
      upcase = !upcase
    else
      new_str << c
      upcase = !upcase if count
    end
  end
  new_str
end

puts staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
puts staggered_case('ALL CAPS') == 'AlL cApS'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

puts staggered_case('I Love Launch School!', true) == 'I LoVe lAuNcH ScHoOl!'
puts staggered_case('ALL_CAPS', true) == 'AlL_CaPs'
puts staggered_case('ignore 77 the 444 numbers', true) == 'IgNoRe 77 ThE 444 NuMbErS'
