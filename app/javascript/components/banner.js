import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('.banner-typed-text', {
    strings: ["Be Creative. Be Fancy.", "Create your own Cocktail."],
    typeSpeed: 60,
    loop: false
  });
}

export { loadDynamicBannerText };
