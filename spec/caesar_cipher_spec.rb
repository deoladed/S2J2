require_relative '../lib/caesar_cipher'

describe "caesar code" do
  it "should return something weird" do
    expect(caesar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
  end
end

