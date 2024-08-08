window.addEventListener("load", () => {
  document.querySelectorAll(".plcart").forEach(item => {
    item.addEventListener("click", e => {
      console.dir(e.target);

      const target = e.target.closest(".plcart");
      const plnum = target.dataset.plnum;
      
      console.dir(plnum);

      fetch(`/plcart/add/${plnum}`, {
        method: "GET",
      })
        .then(resp => resp.text())
        .then(result => alert(result));
    });
  });
});