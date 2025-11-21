// Q6 – Fetch API Data
async function loadProducts() {
  try {
    const res = await fetch('https://fakestoreapi.com/products');
    const data = await res.json();
    data.forEach(p => {
      console.log('Product:', p.title);
      console.log('Price: $' + p.price);
      console.log('Image:', p.image, '\n');
    });
  } catch(err) {
    console.log('Failed to load products. Please try again.');
  }
}
loadProducts();
