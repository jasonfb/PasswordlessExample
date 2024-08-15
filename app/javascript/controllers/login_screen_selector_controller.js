import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="login-screen-selector"
export default class extends Controller {

  static targets = ['emailForm', 'smsForm' , 'emailButton', 'smsButton'
  ];

  connect() {

    this.emailButtonTarget.addEventListener('click', () => {
      console.log("email button clicked")
      this.showEmailForm();
    })

    this.smsButtonTarget.addEventListener('click', () => {
      console.log("sms button clicked")
      this.showSmsForm();
    });
    this.showEmailForm();
  }
  showEmailForm() {
    this.emailFormTarget.classList.remove('disabled');
    this.smsFormTarget.classList.add('disabled');

    for (let element of this.emailFormTarget.elements) {
      element.disabled = false;
    }

    // Disable the other form
    for (let element of this.smsFormTarget.elements) {
      element.disabled = true;
    }
  }

  showSmsForm() {
    this.emailFormTarget.classList.add('disabled');
    this.smsFormTarget.classList.remove('disabled');

    for (let element of this.smsFormTarget.elements) {
      element.disabled = false;
    }

    // Disable the other form
    for (let element of this.emailFormTarget.elements) {
      element.disabled = true;
    }
  }
}
