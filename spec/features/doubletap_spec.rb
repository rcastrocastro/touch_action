require 'spec_helper'

RSpec.describe TouchAction do
  describe "Doubletap" do
    it 'should tap the div bound by HammerJS' do
      @browser.goto('localhost:9292/tap')
      element = @browser.div(id: 'myElement')
      element.touch_action :doubletap
      sleep(5)
      expect(@browser.text).to include('doubletap')
    end
  end
end
