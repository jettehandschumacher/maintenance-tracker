import { Controller } from "@hotwired/stimulus"
import { initFlatpickr } from "../plugins/flatpickr";

// Connects to data-controller="flatpickr"
export default class extends Controller {
  connect() {
    console.log("hiii pickr")
    initFlatpickr()
  }
}
