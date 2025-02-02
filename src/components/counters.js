// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Counter from "./counter.js";
import * as JsxRuntime from "react/jsx-runtime";

function Counters(props) {
  var counters = props.counters;
  var onDecrement = props.onDecrement;
  var onDelete = props.onDelete;
  var onIncrement = props.onIncrement;
  return JsxRuntime.jsxs("div", {
              children: [
                JsxRuntime.jsx("div", {
                      children: JsxRuntime.jsxs("div", {
                            children: [
                              JsxRuntime.jsx("button", {
                                    children: JsxRuntime.jsx("i", {
                                          "aria-hidden": true,
                                          className: "fa fa-refresh"
                                        }),
                                    className: "btn btn-success m-2",
                                    disabled: counters.length === 0,
                                    onClick: props.onReset
                                  }),
                              JsxRuntime.jsx("button", {
                                    children: JsxRuntime.jsx("i", {
                                          "aria-hidden": true,
                                          className: "fa fa-recycle"
                                        }),
                                    className: "btn btn-primary m-2",
                                    disabled: counters.length !== 0,
                                    onClick: props.onRestart
                                  })
                            ],
                            className: ""
                          }),
                      className: "row"
                    }),
                counters.map(function (counter) {
                      return JsxRuntime.jsx(Counter.make, {
                                  counter: counter,
                                  onIncrement: onIncrement,
                                  onDecrement: onDecrement,
                                  onDelete: onDelete
                                }, counter.id.toString());
                    })
              ]
            });
}

var make = Counters;

export {
  make ,
}
/* Counter Not a pure module */
