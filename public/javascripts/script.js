let thisDay = new Date();
let date = `${thisDay.getDate()}` < 10 ? "0" + `${thisDay.getDate()}` : `${thisDay.getDate() + 1}`;
let year = thisDay.getFullYear();
let month =
  `${thisDay.getMonth() + 1}` < 10
    ? "0" + `${thisDay.getMonth() + 1}`
    : `${thisDay.getMonth() + 1}`;

if (document.getElementById("date-vol") != undefined) {
  document.getElementById("date-vol").value = `${year}-${month}-${date}`;
  document.getElementById("date-vol").setAttribute("min", `${year}-${month}-${date}`);
}

