// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Curry from "../node_modules/rescript/lib/es6/curry.js";
import * as React from "react";

function Buttons(Props) {
  var match = React.useState(function () {
        return 0;
      });
  var setPages = match[1];
  var handlePrev = function (e) {
    Curry._1(setPages, (function (pages) {
            return pages - 1 | 0;
          }));
  };
  var handleNext = function (e) {
    Curry._1(setPages, (function (pages) {
            return pages + 1 | 0;
          }));
  };
  return React.createElement("div", {
              className: "btn-container"
            }, React.createElement("button", {
                  onClick: handlePrev
                }, "Prev"), React.createElement("p", undefined, match[0]), React.createElement("button", {
                  onClick: handleNext
                }, "Next"));
}

var make = Buttons;

export {
  make ,
}
/* react Not a pure module */
