require('rspec')
require('ping_pong')

describe('Fixnum#ping_pong') do

  it("counts from one to the inputted number") do
    expect((2).ping_pong()).to(eq([1, 2]))
  end

  it("pushes ping to an array if the number is divisible by 3") do
    expect((3).ping_pong()).to(eq([1, 2, "ping"]))
  end

  it("pushes pong to an array if the number is divisible by 5") do
    expect((5).ping_pong()).to(eq([1, 2, "ping", 4, "pong"]))
  end

  it("pushes pingpong to an array if the number is divisible by 15") do
    expect((15).ping_pong()).to(eq([1, 2, "ping", 4, "pong", "ping", 7, 8, "ping", "pong", 11, "ping", 13, 14, "pingpong"]))
  end
  
end
