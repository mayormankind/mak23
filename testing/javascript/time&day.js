setInterval(() => {
    var Xtime = document.querySelector("#time"),
        date = new Date(),
        hours = date.getHours(),
        minutes = date.getMinutes(),
        secs = date.getSeconds(),
        meri = "AM";

    if (hours >= 12) {
        meri = "PM";
        hours = hours - 12;
    }

    if (minutes < 10) {
        minutes = "0" + minutes;
    }
    if (hours < 10) {
        hours = "0" + hours;
    }
    if (secs < 10) {
        secs = "0" + secs;
    }
    Xtime.textContent = hours + ":" + minutes + ":" + secs + " " + meri;
});
setInterval(() => {
    var Xdate = document.querySelector("#date"),
        date = new Date(),
        day = date.getDay(),
        year = date.getFullYear(),
        datem = date.getDate(),
        month = date.getMonth(),
        suffix = "th";

        if (datem == 21 || datem == 1) {
            suffix = "st";
        }
        if (datem == 2 || datem == 22) {
            suffix = "nd";
        }
        if (datem == 3 || datem == 23) {
            suffix = "rd";
        }
    var dayArray = new Array("Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday");
    var monthArray = new Array("January","February","March","April","May","June","July","August","September","October","November","December");

        Xdate.textContent = dayArray[day] + " " + datem + suffix + " " + monthArray[month] + "," + " " + year;
});