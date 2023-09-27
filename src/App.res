open Counter
open Webapi.Dom
open Location

@react.component
let make = () => {
  let (counters, setCounters) = React.useState(() => [
    {id: 1, value: 0},
    {id: 2, value: 0},
    {id: 3, value: 0},
    {id: 4, value: 0},
  ])

  let handleIncrement = counter => {
    setCounters(prev => prev->Array.map(c => c.id != counter.id ? c : {...c, value: c.value + 1}))
  }

  let handleDecrement = counter => {
    setCounters(prev => prev->Array.map(c => c.id != counter.id ? c : {...c, value: c.value - 1}))
  }

  let handleReset = () => {
    setCounters(prev =>
      prev->Array.map(c => {
        ...c,
        value: 0,
      })
    )
  }

  let handleDelete = counterId => {
    setCounters(prev => prev->Array.filter(c => c.id !== counterId))
  }

  let handleRestart = () => {
    location->reload
  }

  <div className="main__wrap">
    <main className="container">
      <div className="card__box">
        <Navbar
          totalCounters={counters
          ->Array.filter(c => c.value > 0)
          ->Array.length
          ->Int.toString
          ->React.string}
        />
        <Counters
          counters={counters}
          onReset={_ => handleReset()}
          onIncrement={handleIncrement}
          onDecrement={handleDecrement}
          onDelete={handleDelete}
          onRestart={_ => handleRestart()}
        />
      </div>
    </main>
  </div>
}
