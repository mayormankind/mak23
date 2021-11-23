var cancel = document.querySelector(".close");
var add_con = document.querySelector(".addcontainer");
var addtimetable = document.querySelector(".addtimetable");
cancel.onclick = function() {
    add_con.style.display = "none";
}
addtimetable.onclick = function() {
    add_con.style.display = "block";
}

var close = document.querySelector(".cancel");
var new_con = document.querySelector(".newcontainer");
var newtimetable = document.querySelector(".newtimetable");
close.onclick = function() {
    new_con.style.display = "none";
}
newtimetable.onclick = function() {
    new_con.style.display = "block";
}