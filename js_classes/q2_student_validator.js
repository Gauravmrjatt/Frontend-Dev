document.addEventListener('DOMContentLoaded', () => {
  const form = document.querySelector('form');

  const validators = {
    name: /^[A-Za-z ]+$/, 
    email: /^[\w.-]+@[\w.-]+\.[A-Za-z]{2,3}$/, 
    phone: /^\d{10}$/, 
    password: /^(?=.*[A-Z])(?=.*\d)(?=.*[@#$%^&+=!]).{6,}$/
  };

  form.addEventListener('submit', e => {
    e.preventDefault();
    const fields = ['name','email','phone','password'];

    fields.forEach(f => {
      const input = document.getElementById(f);
      const valid = validators[f].test(input.value);
      const msg = document.getElementById(f+"Msg");
      if (!valid) {
        input.style.border = '2px solid red';
        msg.textContent = `${f} invalid`;
        msg.style.color = 'red';
      } else {
        input.style.border = '2px solid green';
        msg.textContent = 'Valid';
        msg.style.color = 'green';
      }
    });
  });
});
