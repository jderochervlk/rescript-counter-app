// Generated by ReScript, PLEASE EDIT WITH CARE

import * as JsxRuntime from "react/jsx-runtime";

function Navbar$main(props) {
  return JsxRuntime.jsx("nav", {
              children: JsxRuntime.jsxs("div", {
                    children: [
                      JsxRuntime.jsx("i", {
                            "aria-hidden": true,
                            className: "fa fa-shopping-cart fa-lg m-2"
                          }),
                      JsxRuntime.jsx("span", {
                            children: props.totalCounters,
                            className: "badge badge-pill badge-info m-2",
                            style: {
                              fontSize: "24px",
                              width: "50"
                            }
                          }),
                      "Items"
                    ],
                    className: "navbar-brand"
                  }),
              className: "navbar navbar-light"
            });
}

var main = Navbar$main;

export {
  main ,
}
/* react/jsx-runtime Not a pure module */
