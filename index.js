async function handleRequest(request) {
  return new Response('Hello Edge Runtime');
}

addEventListener('fetch', event => {
  return event.respondWith(handleRequest(event.request));
})