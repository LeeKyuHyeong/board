$(function () {
  console.log("시작");

  $("#btn_header").click(function () {
    console.log("클릭");
    location.href = "header.html";
  });

//$('#header').load("/header.html");
//$('#footer').load("/footer.html");

/* fetch("header.html")
.then(response => {
return response.text()
})
.then(data => {
$("#header").html(data);
}); 
fetch("footer.html")
.then(response => {
return response.text()
})
.then(data => {
$("#footer").html(data);
});*/
});
