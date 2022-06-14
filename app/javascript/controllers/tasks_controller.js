import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["hide", "name", "equipment"]
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

  updateEquipment(event) {
    console.log(this.equipmentTarget.innerText)
    // this.equipmentTarget.innerText = `<% f.input :equipment, collection: Service.find_by(service_type: "${event.target.value}").equipments %>`
  }
 }


//  <div class="mb-3 select required task_equipment"><label class="form-label select required" for="task_equipment">Equipment
//  <abbr title="required">*</abbr></label>
//  <select class="form-select select required" name="task[equipment]" id="task_equipment">
// <option value="" label=" "></option>
// <option value="114">grundfos pump</option>
// <option value="115">solar pannels</option>
// <option value="131">Flow meter</option>
// <option value="132">Totalizer</option></select></div>
