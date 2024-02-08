import { Controller } from "@hotwired/stimulus"
import { Modal } from "bootstrap"

export default class extends Controller {
  connect() {
    this.modal = new Modal(this.element)
    this.modal.show()
  }

  hideBeforeRender(event) {
    if (this.isOpen()) {
      event.preventDefault()
      this.element.addEventListener('hidden.bs.modal', event.detail.resume)
      this.modal.hide()
    }
    this.element.classList.remove("fade-in")
    this.element.classList.add("fade-out")
  }

  isOpen() {
    return this.element.classList.contains("show")
  }


  close() {
    this.element.classList.remove("fade-in")
    this.element.classList.add("fade-out")
    setTimeout(() => {
      this.element.remove()
    }, 300)
  }

  handleKeyup(e) {
    if (e.code == "Escape") {
      this.close()
    }
  }

  handleSubmit = (e) => {
    if (e.detail.success) {
      this.close()
    }
  }
}
