require 'spec_helper'
require 'text_aligner'

describe TextAligner do
  #write out some text
  #New up the class and pass text to the instance
  #call a method(center_strings) on the class
  it 'should center text' do
    text = <<-INPUT
this is a short line
this is a really long line that has a lot of characters
and this is
short
    INPUT

    expected = <<-EXPECTED
                 this is a short line
this is a really long line that has a lot of characters
                      and this is
                         short
    EXPECTED

    @aligner = TextAligner.new(text)
    @aligner.center_strings

    expect(text).to eq(expected)
  end
end
