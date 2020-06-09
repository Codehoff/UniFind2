const hiddenSearch = () => {
  const searchQuery = document.getElementById("query");
  const closeX = document.getElementById("close");
  const hiddenSearchbox = document.getElementById("hidden-search");
  searchQuery.addEventListener('focus', () => {
    hiddenSearchbox.style.display = "block";
  });
  closeX.addEventListener('click', () => {
    hiddenSearchbox.style.display = "none";
  });
}

export { hiddenSearch };
