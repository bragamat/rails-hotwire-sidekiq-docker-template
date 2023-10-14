import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="mobile-sidebar"
export default class extends Controller {
  connect() { }

  openSidebar() {
    document.querySelector("#sidebar-container").classList.add("z-50");
    document.querySelector("#sidebar-container").classList.remove("z-[-50]");

    document.querySelector("#sidebar-container--bg-transparency").classList.remove("opacity-0")
    document.querySelector("#sidebar-items-container").classList.remove("-translate-x-full")

    document.querySelector("#sidebar-container--close-button").classList.remove("opacity-0")
    document.querySelector("#sidebar-container--close-button").classList.remove("pointer-events-none")
  }

  closeSidebar() {
    document.querySelector("#sidebar-container").classList.remove("z-50");
    document.querySelector("#sidebar-container").classList.add("z-[-50]");

    document.querySelector("#sidebar-container--bg-transparency").classList.add("opacity-0")
    document.querySelector("#sidebar-items-container").classList.add("-translate-x-full")

    document.querySelector("#sidebar-container--close-button").classList.add("opacity-0")
    document.querySelector("#sidebar-container--close-button").classList.add("pointer-events-none")
  }
}
