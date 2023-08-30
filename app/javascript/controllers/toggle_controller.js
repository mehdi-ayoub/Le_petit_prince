import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
  connect() {
    console.log("hello")
  }
  static targets = ["togglableElement"]

  fire() {
    this.togglableElementTarget.classList.toggle("d-none");
  }
}
