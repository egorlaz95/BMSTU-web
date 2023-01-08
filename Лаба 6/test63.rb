require_relative 'main63.rb'
RSpec.describe "SuperMain" do
    it 'should do ok if n is postive' do
        xd1 = -> (x1) {Math.exp(x1) / (x1 + 1)}
        xd2 = lambda {|x2| x2*(x2-1)}
        result = Intprg(0,1,0,2, xd2, 99, &xd1)
        expect(result[1]).to eq 1.1235780181190325
        expect(result[3]).to eq 0.6466006870047234
    end
end