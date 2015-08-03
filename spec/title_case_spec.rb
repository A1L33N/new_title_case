require('rspec')
require('title_case')

describe('String#title_case') do
  it("capitalizes the first word in a String") do
    expect(("beowulf").title_case()).to(eq("Beowulf"))
  end

  it("capitalizes every word in a String") do
    expect(("beowulf smells bad").title_case()).to(eq("Beowulf Smells Bad"))
  end

  it("handles all uppercase letters") do
    expect(("BEOWULF IS COOL").title_case()).to(eq("Beowulf Is Cool"))
  end

  it("capitalizes all words except designated words") do
    expect(("beowulf is cool").title_case()).to(eq("Beowulf is Cool"))
  end

  it("capitalizes the designated word if it is the first word") do
    expect(("the story of beowulf").title_case()).to(eq("The Story of Beowulf"))
  end
end
