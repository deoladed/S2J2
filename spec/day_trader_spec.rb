require_relative '../lib/day_trader'

describe "day_trder method" do
  it "return le plus petit chiffre de la liste suivi du plus grand" do
    expect(which_day([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq([1, 4])
  	expect(which_day([1, 17, 7, 4, 3, 34, 6, 9, 15, 45, 8, 16, 6, 1, 10])).to eq([0, 9])
  end
end
