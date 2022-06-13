import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["hide", "name"]
  connect() {
    console.log("Hello World!")
  }

  hideComplete(){
    this.hideTargets.forEach(el => {
      if (el.dataset.completed === "true") {
        el.classList.toggle('d-none')
      }
    });
  }
  sortByName(){
    console.log("hi")
  }
 }
