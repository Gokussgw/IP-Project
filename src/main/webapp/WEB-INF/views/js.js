const openBt = document.getElementById("openAlert");
const closeBt = document.getElementById("closeAlert");
const mod = document.getElementById("alert")

openBt.addEventListener("click", ()=> {
    mod.classList.add("open");
});

closeBt.addEventListener("click", ()=> {
    mod.classList.remove("open");
})