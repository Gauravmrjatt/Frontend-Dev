const nameReg = /^[A-Za-z ]+$/;
const emailReg = /^[\w.-]+@[\w.-]+\.[A-Za-z]{2,3}$/;
const seatReg = /^([1-9]|10)$/;

function bookTicket(name, email, seats) {
  if (!nameReg.test(name)) return 'Invalid name';
  if (!emailReg.test(email)) return 'Invalid email';
  if (!seatReg.test(seats)) return 'Invalid seat count';

  const ticket = { name, email, seats };
  return ticket;
}

console.log(bookTicket('Yash', 'yash@mail.com', 4));
