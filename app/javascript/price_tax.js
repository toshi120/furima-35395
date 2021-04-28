window.addEventListener('load', () => {
  const priceInput = document.getElementById("item-price")
  priceInput.addEventListener("input", () => {
    const priceTax = priceInput.value * 0.1;
    const salesProfit = priceInput.value - priceTax;
    const addTaxDom = document.getElementById("add-tax-price");
    const addProfitDom = document.getElementById("profit");
    addTaxDom.innerHTML = Math.floor(priceTax);
    addProfitDom.innerHTML = Math.floor(salesProfit);
  })
})