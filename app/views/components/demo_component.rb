# frozen_string_literal: true

class DemoComponent < ApplicationComponent
  def view_template
    h1 { "Demo" }
    p { "Find me in app/views/components/demo_component.rb" }
    # heroicon "academic-cap", class: "h-6 w-6"
    render Phlex::TablerIcons::Rocket.new(class: "h-12 w-12", stroke_width: 0.5)
  end
end
