// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Stories from "./Stories.res.mjs";
import * as SearchForm from "./SearchForm.res.mjs";
import * as JsxRuntime from "react/jsx-runtime";

import './App.css'
;

function App(props) {
  return JsxRuntime.jsxs(JsxRuntime.Fragment, {
              children: [
                JsxRuntime.jsx(SearchForm.make, {}),
                JsxRuntime.jsx(Stories.make, {})
              ]
            });
}

var make = App;

export {
  make ,
}
/*  Not a pure module */
