class ReactSchmoozer < Schmooze::Base
  dependencies React: 'react', ReactDOMServer: 'react-dom/server'

  method :render_component, <<-JS
    function(path, props, children, babel) {
      return ReactDOMServer.renderToString(
        React.createElement(
          require("../../app/assets/javascripts/" + path),
          props,
          children
        )
      )
    }
  JS
end
