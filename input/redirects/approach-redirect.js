// Keep bookmarked sections connected to their consolidated explanations.
(() => {
  const fallback = document.getElementById("approach-redirect");
  const sections = document.getElementById("approach-legacy-anchors");
  let fragment = window.location.hash.slice(1).split(":~:", 1)[0];

  try {
    fragment = decodeURIComponent(fragment);
  } catch {
    fragment = "";
  }

  const section = fragment ? document.getElementById(fragment) : null;
  const link = section && sections?.contains(section) ? section : fallback;
  const target = section?.dataset.redirect || link?.getAttribute("href");
  if (!target) return;

  const destination = new URL(target, window.location.href);
  destination.search = window.location.search;
  window.location.replace(destination.href);
})();
