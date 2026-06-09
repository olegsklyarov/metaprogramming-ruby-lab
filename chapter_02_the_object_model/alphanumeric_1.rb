def to_alphanumeric(s)
    s.gsub(/[^\w\s]/, '')
end

require 'minitest/autorun'

class ToAlphanumericTest < Minitest::Test
    def test_strip_non_alphanumeric_characters
        assert_equal '3 the Magic Number', to_alphanumeric('#3, the *Magic, Number*?')
    end
end
