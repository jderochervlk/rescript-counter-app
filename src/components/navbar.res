@react.component
let make = (~totalCounters) => {
  <nav className="navbar navbar-light">
    <div className="navbar-brand">
      <i className="fa fa-shopping-cart fa-lg m-2" ariaHidden=true />
      <span className="badge badge-pill badge-info m-2" style={{width: "50px", fontSize: "24px"}}>
        {totalCounters}
      </span>
      {React.string("Items")}
    </div>
  </nav>
}
