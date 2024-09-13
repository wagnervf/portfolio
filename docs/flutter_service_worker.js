'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"main.dart.js": "dc0b55217d48febd6176af8226ddbe30",
"flutter.js": "c71a09214cb6f5f8996a531350400a9a",
"version.json": "009c9e65172e010890f7f65fde438006",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"manifest.json": "d40c47d1c161f94dbcb13094d37f1f55",
"index.html": "43969022ffed11be627e18982ecad040",
"/": "43969022ffed11be627e18982ecad040",
"canvaskit/canvaskit.js.symbols": "38cba9233b92472a36ff011dc21c2c9f",
"canvaskit/skwasm.js": "445e9e400085faead4493be2224d95aa",
"canvaskit/skwasm.js.symbols": "741d50ffba71f89345996b0aa8426af8",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"canvaskit/skwasm.wasm": "e42815763c5d05bba43f9d0337fa7d84",
"canvaskit/chromium/canvaskit.js.symbols": "4525682ef039faeb11f24f37436dca06",
"canvaskit/chromium/canvaskit.wasm": "f5934e694f12929ed56a671617acd254",
"canvaskit/chromium/canvaskit.js": "43787ac5098c648979c27c13c6f804c3",
"canvaskit/canvaskit.wasm": "3d2a2d663e8c5111ac61a46367f751ac",
"canvaskit/canvaskit.js": "c86fbd9e7b17accae76e5ad116583dc4",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/NOTICES": "8ebcd64c9108cd17385736fece922557",
"assets/AssetManifest.bin": "b59bd26ddc4b6216aad44f5463933e4c",
"assets/packages/simple_icons/fonts/SimpleIcons.ttf": "63bd8ab21692f43d782be84edfe85245",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/packages/rive_animated_icon/assets/icons3.riv": "0427231b1a0b147fef274cff2eff1f43",
"assets/packages/rive_animated_icon/assets/icons4.riv": "87ee1634839723ee0240112a2e1d2a05",
"assets/packages/rive_animated_icon/assets/icons1.riv": "7f23a53d34a2b43b6dd551465d9f71a6",
"assets/packages/rive_animated_icon/assets/icons2.riv": "054611cd990d48b0415acc0def8b2064",
"assets/fonts/MaterialIcons-Regular.otf": "127b66f4795498a185868f2ee17ed609",
"assets/AssetManifest.bin.json": "8ae57ee0d7add5184fc57abf3c28309f",
"assets/AssetManifest.json": "6423a3e825bf5a21d0d64cfc0513a08e",
"assets/FontManifest.json": "004353b093821249739a07868ec55023",
"assets/assets/fonts/product_sans_italic.ttf": "e88ec18827526928e71407a24937825a",
"assets/assets/fonts/roboto_italic.ttf": "a720f17aa773e493a7ebf8b08459e66c",
"assets/assets/fonts/product_sans_regular.ttf": "eae9c18cee82a8a1a52e654911f8fe83",
"assets/assets/fonts/roboto_bold.ttf": "e07df86cef2e721115583d61d1fb68a6",
"assets/assets/fonts/roboto_regular.ttf": "11eabca2251325cfc5589c9c6fb57b46",
"assets/assets/fonts/product_sans_bold.ttf": "dba0c688b8d5ee09a1e214aebd5d25e4",
"assets/assets/images/flutter-original.png": "65a9eeaaa0e61502557e5ac32a1c1154",
"assets/assets/images/phone.jpg": "64a954e7ad899ecb56078512c9b719df",
"assets/assets/images/mongodb-original.png": "2b78e527941fd39b67a00c35441f87b1",
"assets/assets/images/news_flutter_1.12.png": "1afef8f0d8e3ba20b49bc5625168b629",
"assets/assets/images/php-original.png": "2254942062da79c41d53d31978203fbf",
"assets/assets/images/icon_youtube_64x.png": "155d50c9f10c97fae27575ae7ee7b026",
"assets/assets/images/icon_search_64x.png": "f55e992d786ef1822db8d1c038e201b5",
"assets/assets/images/news_flutter_codepen.png": "bc607f3054d4ab94ec5866422eb7c9c5",
"assets/assets/images/laravel-original.png": "7b9a67e174adb91ece92eefc614c8830",
"assets/assets/images/icon_twitter_64x.png": "514d54a802579a10b988c12dc892e9cb",
"assets/assets/images/icon_performance.png": "49dcd794c0838072d8cd729f1cb85e61",
"assets/assets/images/dart-original.png": "a6c466e34b1b375f0322245944b03838",
"assets/assets/images/nodejs-original.png": "1c7540c22fa21d753ea789cb721ca646",
"assets/assets/images/mysql-original.png": "41f48df01b268c96f09022cfd540e143",
"assets/assets/images/flutter_logo_text.png": "d21f1eecaeaab081ba7efec1721c0712",
"assets/assets/images/mockups.jpg": "39d8692ce9dceb5b031f0a6858adc829",
"assets/assets/images/cakephp-original.png": "08dea0c4d9dd4517bc46fa84052fdb2f",
"assets/assets/images/wordpress-original.png": "ccc161be2c91eee900e33af45b0509df",
"assets/assets/images/icon_ui.png": "09138184ad5cee139e01c3aba95924d4",
"assets/assets/images/linux-original.png": "2bc8a3d15114f23cb9b4b832e4fbd7c2",
"assets/assets/images/device_frame.png": "58e971455388b5c476887bf687a71d8a",
"assets/assets/images/git-original.png": "8f76a861a88cf5b758c4e91cc913d4df",
"assets/assets/images/javascript-original.png": "180c1d5a32e527d41e94428bee9665f4",
"assets/assets/images/svg/mysql-original.svg": "e8eb3c35a4724c59933bb8b80b402586",
"assets/assets/images/svg/postgresql-original.svg": "95ea0ccc7a6fceff8fee5331e2d51c96",
"assets/assets/images/svg/linux-original.svg": "17eb8f433d72c073ec12417f3ca5d157",
"assets/assets/images/svg/javascript-original.svg": "0c1f700da144243c526f252e59362138",
"assets/assets/images/svg/nodejs-original.svg": "19f661d0537a79acbcb13829537c2930",
"assets/assets/images/svg/html5-original.svg": "16d07e8682a531f3bc1e9fb01bd59740",
"assets/assets/images/svg/cakephp-original.svg": "b494a9cbd7dd7bbb7d27815c08af2d1a",
"assets/assets/images/svg/laravel-original.svg": "805512ee5e52682b0b8c34c6d6ab068b",
"assets/assets/images/svg/docker-original.svg": "1380befa46d4027b411bc47b093424a9",
"assets/assets/images/svg/wordpress-plain.svg": "c38c8d95313a58c21a89ce5afd2376bd",
"assets/assets/images/svg/css3-original.svg": "a55118403c13e2719d453b74dffa80f8",
"assets/assets/images/svg/mongodb-original.svg": "8aad4da2ed641d2378923f85fe35189d",
"assets/assets/images/svg/git-original.svg": "fef8e95112e6ab6f2169430ee510db5e",
"assets/assets/images/svg/apache-original.svg": "b554392c1ab84edbcd1970be428714bb",
"assets/assets/images/svg/dart-original.svg": "11b770f163584b0e8cbba1f7bc626f55",
"assets/assets/images/svg/firebase-original.svg": "e49de29322e84ba9bef16c93af22891d",
"assets/assets/images/svg/flutter-original.svg": "5ff1722cbed36fdb869cba0c95788d42",
"assets/assets/images/svg/vuejs-original.svg": "72d93ebdd9d9cdd1c1e81073aff06b79",
"assets/assets/images/svg/php-original.svg": "2d61a3b7505e53fa3185bdf8da7b6f8e",
"assets/assets/images/note.png": "1e047a9459a831d8fb35f7c1b94ff3bd",
"assets/assets/images/google_logo.png": "22979cce8fc21c09b7f26e131045a400",
"assets/assets/images/firebase-original.png": "5cb131775d0adcbcd76dc059c78c638d",
"assets/assets/images/icon_development.png": "baebd28f59701e856c98c68e010fdeb2",
"assets/assets/images/css3-original.png": "146cd30f10f0dac696a2602f75c430f0",
"assets/assets/images/html5-original.png": "715260e0bc2f25f5a1eb3754d3ab13a2",
"assets/assets/images/apache-original.png": "9c7242c5fe046b7a4ef2bcf3cb10972f",
"assets/assets/images/vuejs-original.png": "392aaa3052d8f98803f04c2de5f49a11",
"assets/assets/images/flutter_logo_mono.png": "6261e07a1b1eb9cdd466b4879a41e361",
"assets/assets/images/postgresql-original.png": "9a53e97f3f4950556fcbef4d4e539e57",
"assets/assets/images/icon_github_64x.png": "2d1e54d81bd7cb7daa09cea82dcb29e2",
"assets/assets/images/docker-original.png": "389b600fbdc4e3535e394e547eb455a1"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
