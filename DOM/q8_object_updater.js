let user = { name: 'John', email: 'john@mail.com', age: 21 };

function updateUser(key, value) {
  user[key] = value;
  console.log('Updated user:', user);
}
