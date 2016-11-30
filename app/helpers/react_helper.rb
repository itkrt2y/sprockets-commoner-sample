module ReactHelper
  def react
    @react ||= ReactSchmoozer.new(__dir__)
  end

  def render_component(component_path, props = {}, children = nil)
    react.render_component(component_path, props, children).html_safe
  end
end
