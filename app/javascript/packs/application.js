// require 'json';
// require 'open-uri'

import "bootstrap";

import { initUpdateNavbarOnScroll } from '../components/navbar';
initUpdateNavbarOnScroll();

import Chartkick from "chartkick";
window.Chartkick = Chartkick;

import Chart from "chart.js";
Chartkick.addAdapter(Chart);

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

function scrollLastMessageIntoView() {
  const messages = document.querySelectorAll('.message');
  const lastMessage = messages[messages.length - 1];

  // if (lastMessage !== undefined) {
    lastMessage.scrollIntoView({});
  // }
}

window.scrollLastMessageIntoView = scrollLastMessageIntoView;
