import { Controller } from "@hotwired/stimulus";
import Prism from "prismjs";

export default class extends Controller {
  connect() {
    Prism.highlightElement(this.element);
  }
}
