require_relative '../lib/multiples'

describe "the multiple_of_3_or_5? method" do
  it "should return TRUE when an integer is a multiple of 3 or 5" do
    expect(multiple_of_3_or_5?(3)).to eq(true)
    expect(multiple_of_3_or_5?(5)).to eq(true)
    expect(multiple_of_3_or_5?(51)).to eq(true)
    expect(multiple_of_3_or_5?(45)).to eq(true)
  end

  it "should return FALSE when an integer is NOT a multiple of 3 or 5" do
  	expect(multiple_of_3_or_5?(2)).to eq(false)
  	expect(multiple_of_3_or_5?(4)).to eq(false)
  	expect(multiple_of_3_or_5?(11)).to eq(false)
  	expect(multiple_of_3_or_5?(52)).to eq(false)
  end
end

describe "sum_of_3_and_5_multiples method" do
	it "sould return the sum off all 3 and 5" do
		expect(sum_of_3_and_5_multiples(11)).to eq(33)
		expect(sum_of_3_and_5_multiples(10)).to eq(23)
	end

	it "should return This is not an integer" do
		expect(sum_of_3_and_5_multiples(2.3)).to eq("This is not an integer")
	end
end
