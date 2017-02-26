class Test
  def h
    Ã‚ $a = 5
    Ã‚ @b = 4
    while $a > 0
      puts $a
      $a= $a - 1
    end
  end
end
test = Test.new
test.h
puts $aÃ‚ Ã‚ Ã‚ Ã‚ Ã‚ Ã‚ Ã‚ Ã‚ Ã‚ Ã‚ Ã‚ Ã‚ Ã‚ Ã‚ Ã‚ Ã‚ Ã‚ Ã‚ Ã‚ Ã‚ # 10
puts @bÃ‚ Ã‚ Ã‚ Ã‚ Ã‚ Ã‚ Ã‚ Ã‚ Ã‚ Ã‚ Ã‚ Ã‚ Ã‚ Ã‚ Ã‚ Ã‚ Ã‚ Ã‚ Ã‚ #nil
