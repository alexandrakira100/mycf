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
      active.addEventListener("click", (event) => {
        console.log(event);
        active.classList.add("active-chat");
      });
