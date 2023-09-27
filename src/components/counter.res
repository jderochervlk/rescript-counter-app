type t = {value: int, id: int}

@react.component
let make = (~counter, ~onIncrement, ~onDecrement, ~onDelete) => {
  let getBadgeClasses = () => {
    "badge m-2 badge-" ++ {counter.value === 0 ? "warning" : "primary"}
  }

  let formatCount = () => {
    counter.value == 0 ? "Zero" : counter.value->Int.toString
  }

  <div>
    <div className="row">
      <div className="">
        <span style={{fontSize: "24px"}} className={getBadgeClasses()}>
          {formatCount()->React.string}
        </span>
      </div>
      <div className="">
        <button className="btn btn-secondary" onClick={_ => onIncrement(counter)}>
          <i className="fa fa-plus-circle" ariaHidden=true />
        </button>
        <button
          className="btn btn-info m-2"
          onClick={_ => onDecrement(counter)}
          disabled={counter.value === 0 ? true : false}>
          <i className="fa fa-minus-circle" ariaHidden=true />
        </button>
        <button className="btn btn-danger" onClick={_ => onDelete(counter.id)}>
          <i className="fa fa-trash-o" ariaHidden=true />
        </button>
      </div>
    </div>
  </div>
}
