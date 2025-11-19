class FormBuilder {
  constructor(fields) {
    this.fields = fields;
  }
  render(containerId) {
    const container = document.getElementById(containerId);
    let html = '<form id="dynamicForm">';
    this.fields.forEach(f => {
      html += `<label>${f.label}</label><input type="${f.type}" id="${f.label}"><br>`;
    });
    html += '<button type="submit">Submit</button></form>';
    container.innerHTML = html;
  }
  getFormData() {
    const data = {};
    this.fields.forEach(f => data[f.label] = document.getElementById(f.label).value);
    return data;
  }
}
