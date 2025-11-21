// Q8 – Movie Ticket Booking
class MovieTicket{
  constructor(movie, seat, price){ this.movieName=movie; this.seatNo=seat; this.price=price; }
}
MovieTicket.prototype.printTicket=function(){ console.log('Movie:',this.movieName,'Seat:',this.seatNo,'Price:',this.price); };
class OnlineTicket extends MovieTicket{
  constructor(movie,seat,price,fee){ super(movie,seat,price); this.convenienceFee=fee; }
  getTotalAmount(){ return this.price + this.convenienceFee; }
}
const t=new OnlineTicket('Avengers',12,300,50);
t.printTicket();
console.log('Total:', t.getTotalAmount());
