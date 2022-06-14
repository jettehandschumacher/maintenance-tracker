import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["equipment", "form", "serviceInput"]
  // connect() {
  //   console.log(this.targets)

  // }

  updateInput(event) {
    this.serviceId = event.target.value

    const url = `/services/${this.serviceId}/equipments`

    fetch(url, {headers: {"Accept": "text/plain"}})
      .then(response => response.text())
      .then((data) => {
        this.serviceInputTarget.innerHTML = data;
        console.log(data)
      })
  }
}
