require 'spec_helper'
require 'text_aligner'

describe TextAligner do
   it 'should center text' do
     text = <<-INPUT
this is a short line
this is a really long line that has a lot of characters
and this is
short
     INPUT

     expected = <<-EXPECTED.chomp
                 this is a short line
this is a really long line that has a lot of characters
                      and this is
                         short
     EXPECTED

     @aligner = TextAligner.new(text)
     aligned_text = @aligner.center_strings

     expect(aligned_text).to eq(expected)
   end
end
