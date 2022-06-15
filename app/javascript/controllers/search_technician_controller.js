import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="search-technician"
export default class extends Controller {
  static targets = ["form", "input", "technician"]
  connect() {
    // console.log("hi technician")
    // console.log(this.formTarget)
    // console.log(this.technicianTargets)
  }

  update(e){
    // console.log(this.inputTarget.value)
    this.technicianTargets.forEach(el => {
      console.log(el.dataset.name.includes(this.inputTarget.value))
      if (el.dataset.name.includes(this.inputTarget.value) ) {
        el.classList.remove('d-none')
        el.classList.remove('no-name-match')
      } else {
        el.classList.add('d-none')
        el.classList.add('no-name-match')
      }
    })
  }
}
