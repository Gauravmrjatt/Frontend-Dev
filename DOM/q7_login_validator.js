const userReg = /^.{5,}$/;
const passReg = /^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[@#$%^&+=!]).{8,}$/;

function validateLogin(u,p){
  if(!userReg.test(u)) return 'Username too short';
  if(!passReg.test(p)) return 'Weak password';
  return 'Login successful';
}

console.log(validateLogin('admin123','Strong@123'));
