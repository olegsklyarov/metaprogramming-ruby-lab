class String
    def to_alphanumeric
        gsub(/[^\w\s]/, '')
    end
end

require 'minitest/autorun'


describe String do
    it "should strip non alphanumeric characters" do
        _('#3, the *Magic, Number*?'.to_alphanumeric).must_equal '3 the Magic Number'
    end
end
