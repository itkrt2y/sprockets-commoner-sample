const body = document.querySelector("body");
const controller = body.dataset.controller;
const action = body.dataset.action;

window.onload = () => {
  if (controller === "users") {
    require('./users').run(action);
  }
};
