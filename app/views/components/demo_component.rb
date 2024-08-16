# frozen_string_literal: true

class DemoComponent < ApplicationComponent
  def view_template
    h1 { "Demo" }
    p { "Find me in app/views/components/demo_component.rb" }
    heroicon "academic-cap", class: "h-6 w-6"
  end
end
