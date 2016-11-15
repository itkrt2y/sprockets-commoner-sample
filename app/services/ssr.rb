class SSR
  attr_reader :component_path, :props

  def initialize(component_path, props = {})
    @react = ReactSchmoozer.new(__dir__)
    @component_path = component_path
    @props = props
  end

  def render
    @react.render_to_string(element)
  end

  def element
    @react.create_element(js_module, props, nil)
  end

  def js_module
    @react.transpile(
      "require('../app/assets/javascripts/#{component_path}')",
      ast: false
    )
  end
end
