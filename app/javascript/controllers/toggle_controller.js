import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    static targets = ["content"]
  
    toggle() {
    this.contentTargets.forEach((t) => t.classList.toggle(data.get("class")));
  }
}
