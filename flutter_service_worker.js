'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "index.html": "2829097d9e09c0112b4dd7cc3793accf",
"/": "2829097d9e09c0112b4dd7cc3793accf",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "2bca5ec802e40d3f4b60343e346cedde",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "2aa350bd2aeab88b601a593f793734c0",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "5a37ae808cf9f652198acde612b5328d",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"assets/FontManifest.json": "18eda8e36dfa64f14878d07846d6e17f",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"assets/AssetManifest.json": "0148cd21ef8e53f98a480e0190b9b178",
"assets/LICENSE": "34c097782b46375ed975a7682e9c4740",
"assets/images/Octocat.png": "ef468e275a2c13d0bc7156549261fde6",
"assets/images/Octocat.jpg": "5d292e21532ea5857531cdb8b0180637",
"assets/images/avatar.png": "b41c8dc994db4e4df2ded7719f201b78",
"assets/images/telegram.png": "a0766316c94b9ac8c62d71ea62b539ef",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"main.dart.js": "af529c8f94230105dec511567c174ede",
"manifest.json": "09ed3f9697cac7a47ff43754578d4b05"
};

self.addEventListener('activate', function (event) {
  event.waitUntil(
    caches.keys().then(function (cacheName) {
      return caches.delete(cacheName);
    }).then(function (_) {
      return caches.open(CACHE_NAME);
    }).then(function (cache) {
      return cache.addAll(Object.keys(RESOURCES));
    })
  );
});

self.addEventListener('fetch', function (event) {
  event.respondWith(
    caches.match(event.request)
      .then(function (response) {
        if (response) {
          return response;
        }
        return fetch(event.request);
      })
  );
});
