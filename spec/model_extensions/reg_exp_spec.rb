require "spec_helper"

describe "RegExp Module" do
  it "parses aspects" do
    assert "1:1"  =~ Papercrop::RegExp::ASPECT
    assert "4:3"  =~ Papercrop::RegExp::ASPECT
    assert "10:3" =~ Papercrop::RegExp::ASPECT
    assert not("4:0"  =~ Papercrop::RegExp::ASPECT)
    assert not("0:4"  =~ Papercrop::RegExp::ASPECT)
    assert not("00:0" =~ Papercrop::RegExp::ASPECT)
    assert not("A:3"  =~ Papercrop::RegExp::ASPECT)
  end
end
