%%raw("import './index.css'")
%%raw("import 'bootstrap/dist/css/bootstrap.css'")
%%raw("import 'font-awesome/css/font-awesome.css'")

switch ReactDOM.querySelector("#root") {
| Some(rootElement) => {
    let root = ReactDOM.Client.createRoot(rootElement)
    ReactDOM.Client.Root.render(root, <App />)
  }
| None => ()
}
