class ReactSchmoozer < Schmooze::Base
  dependencies babel: 'babel-core'
  dependencies React: 'react'
  dependencies ReactDOMServer: 'react-dom/server'

  method :transpile, 'babel.transform'
  method :create_element, 'React.createElement'
  method :render_to_string, 'ReactDOMServer.renderToString'
end
