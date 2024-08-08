window.addEventListener("load", () => {
  const refresh_state = () => {
      const tbody = document.querySelector("#table_plcart > tbody");

      if(tbody.childElementCount == 1)
          tbody.querySelector(".hide").classList.remove("hide");

      const itemprice_nodes = document.querySelectorAll(".itemprice");
      const itemprice_array =  Array.prototype.slice.call(itemprice_nodes)
      const saleprice = itemprice_array.reduce((prev, curr) => prev + Number(curr.dataset.itemprice), 0);
      document.querySelector("#saleprice").textContent = `${new Intl.NumberFormat().format(saleprice)} 원`;
  };

  document.querySelectorAll(".plcart_delete").forEach(item => {
      item.addEventListener("click", e => {
          const tr = e.target.closest("tr");

          fetch(`/plcart/delete/${tr.dataset.plnum}`)
          .then(resp => resp.text())
          .then(result => {
              if(result == "OK") {
                  tr.remove();
                  
                  refresh_state();
              }                    
          });
      });
  });

  document.querySelectorAll(".plcart_update").forEach(item => {
      item.addEventListener("click", e => {
          const tr = e.target.closest("tr");
          const input = tr.querySelector("input[name='amount']");
          const pllistname = tr.querySelector(".pllistname").dataset.pllistname;
          const price = tr.querySelector(".price").dataset.price;
          const plname = tr.querySelector(".plname").dataset.plname;
          const artist = tr.querySelector(".artist").dataset.artist;
          const genre = tr.querySelector(".genre").dataset.genre;
          const td = tr.querySelector(".itemprice");

          fetch(`/plcart/update/${tr.dataset.plnum}/${input.value}`)
          .then(resp => resp.text())
          .then(result => {
              if(result == "OK") {                    
                  const itemprice = price * input.value;
                  td.textContent = `${new Intl.NumberFormat().format(itemprice)} 원`;
                  td.dataset.itemprice = itemprice;
                  
                  refresh_state();
              }                    
          });
      });
  });

  document.querySelector("#check_all").addEventListener("change", e => {
    const checked = e.target.checked;
    
      document.querySelectorAll(".check_item").forEach(item => {
          item.checked = checked;
      });
  });

  document.querySelector("#del_check").addEventListener("click", e => {
      const list = [];
      
      document.querySelectorAll(".check_item:checked").forEach(item => {
          const tr = item.closest("tr");

          list.push({
          plnum: parseInt(tr.dataset.plnum),
          });
      });

      if(list.length > 0) {
          fetch("/cart/del_check", {
              method: "POST",
              body: JSON.stringify(list),
              headers: {
                  "Content-Type": "application/json"
              },
          })
          .then(resp => resp.text())
          .then(result => {
              if(result == "OK") {
                  document.querySelectorAll(".check_item:checked").forEach(item => item.closest("tr").remove());

                  refresh_state();
              }
          });
      }
  });
  
  document.querySelector("#update_all").addEventListener("click", e => {
      list = [];

      document.querySelectorAll("input[name='amount']").forEach(item => {
          const tr = item.closest("tr");
          
          list.push({
              plnum: parseInt(tr.dataset.plnum),
              amount: parseInt(item.value),
          });
      });

      if(list.length > 0) {
          fetch("/plcart/update_all", {
              method: "POST",
              body: JSON.stringify(list),
              headers: {
                  "Content-Type": "application/json"
              },
          })
          .then(resp => resp.text())
          .then(result => {
              if(result == "OK") {
                  document.querySelectorAll("input[name='amount']").forEach(item => {
                      const tr = item.closest("tr");

                      const price = tr.querySelector(".price").dataset.price;
                      const itemprice = price * item.value;

                      const td = tr.querySelector(".itemprice");
                      td.textContent = `${new Intl.NumberFormat().format(itemprice)} 원`;
                      td.dataset.itemprice = itemprice;
                  });

                  refresh_state();
              }
          });
      }
  });
});