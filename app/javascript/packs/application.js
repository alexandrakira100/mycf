// require 'json';
// require 'open-uri'

import "bootstrap";

import { initUpdateNavbarOnScroll } from '../components/navbar';
initUpdateNavbarOnScroll();

// url = 'https://min-api.cryptocompare.com/data/price?fsym=BTC&tsyms=USD'
// crypto_initial = open(url).read
// crypto = JSON.parse(crypto_initial)

// puts "#{Price['USD']}"

// console.log(data)

const active = document.getElementById('zach');
if (active) {
  active.addEventListener("click", (event) => {
    console.log(event);
    active.classList.add("active-chat");
  });
}

function scrollLastMessageIntoView() {
  const messages = document.querySelectorAll('.message');
  const lastMessage = messages[messages.length - 1];

  // if (lastMessage !== undefined) {
    lastMessage.scrollIntoView({});
  // }
}

window.scrollLastMessageIntoView = scrollLastMessageIntoView;

   const purchasePrice = document.getElementById('fund_item_coin_purchase_price');
    const quantity = document.getElementById('fund_item_quantity');
    const result = document.getElementById("total-amount");

    purchasePrice.addEventListener("keyup", function(){
      result.innerHTML = purchasePrice.value * quantity.value;
    });

    quantity.addEventListener("keyup", function(){
      result.innerHTML = purchasePrice.value * quantity.value;
    });


