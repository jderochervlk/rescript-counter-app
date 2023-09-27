@react.component
let make = (
  ~onReset,
  ~onIncrement,
  ~onDelete,
  ~onDecrement,
  ~counters: array<Counter.t>,
  ~onRestart,
) => {
  <div>
    <div className="row">
      <div className="">
        <button
          className="btn btn-success m-2"
          onClick={onReset}
          disabled={counters->Array.length === 0 ? true : false}>
          <i className="fa fa-refresh" ariaHidden=true />
        </button>
        <button
          className="btn btn-primary m-2"
          onClick={onRestart}
          disabled={counters->Array.length !== 0 ? true : false}>
          <i className="fa fa-recycle" ariaHidden=true />
        </button>
      </div>
    </div>
    {counters
    ->Array.map(counter =>
      <Counter
        key={counter.id->Int.toString}
        counter={counter}
        onIncrement={onIncrement}
        onDecrement={onDecrement}
        onDelete={onDelete}
      />
    )
    ->React.array}
  </div>
}
