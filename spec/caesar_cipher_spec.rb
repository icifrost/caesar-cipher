require './lib/caesar-cipher'
describe CaesarCipher do
    describe "#caesar_cipher" do
        it "takes a string and a shift factor and outputs the modified string" do
            cc = CaesarCipher.new
            expect(cc.caesar_cipher("bubble",50)).to eql("zszzjc")
        end
        it "takes a number and a shift factor and outputs a non-modified number" do
            cc = CaesarCipher.new
            expect(cc.caesar_cipher("123456",50)).to eql("123456")
        end
        it "takes nothing and no shift factor and outputs nothing" do
            cc = CaesarCipher.new
            expect(cc.caesar_cipher("","")).to eql("")
        end
        it "takes nothing and a shift factor and outputs nothing" do
            cc = CaesarCipher.new
            expect(cc.caesar_cipher("",50)).to eql("")
        end
    end
end