import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["hide", "checkbox", "equipment"]
  connect() {
  }

  hideComplete(){
    if (this.checkboxTarget.checked) {
      this.hideTargets.forEach(el => {
        if (el.dataset.completed === "true") {
          el.classList.add('d-none')
        } else {
          if (!(el.classList.contains('no-name-match'))) {
            el.classList.remove('d-none')
          }
        }
      });
    } else {
      this.hideTargets.forEach(el => {
        if (el.dataset.completed === "true" && !(el.classList.contains('no-name-match'))) {
          el.classList.remove('d-none')
        }
      }
    )}
  }

  checkCompletedHidden() {
    if (this.checkboxTarget.checked) {
      this.hideComplete()
    }
  }
}
