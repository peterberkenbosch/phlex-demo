require "test_helper"
require "phlex/testing/capybara"

class DemoComponentTest < ActionView::TestCase
  include Phlex::Testing::Capybara::ViewHelper

  test "renders the component" do
    result = render DemoComponent.new

    assert_selector(result, "h1", text: "Demo")
    assert_selector(result, "p", text: "Find me in app/views/components/demo_component.rb")
    assert_selector(result, "svg")
  end
end
