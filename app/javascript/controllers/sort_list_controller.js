import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="sort-list"
export default class extends Controller {
  connect() {
  }


  showOptions() {
    const el = document.querySelector("#sort-list--options-container")

    el.classList.remove("opacity-0");
    el.classList.remove("scale-95");
  }

  hideOptions() {
    const el = document.querySelector("#sort-list--options-container")

    el.classList.add("opacity-0");
    el.classList.add("scale-95");
  }
}
