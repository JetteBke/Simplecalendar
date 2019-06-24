const currentDatetime = () => {
  const currentdate = new Date();
  const datetime = "Last Sync: " + currentdate.getDate() + "/"
                  + (currentdate.getMonth()+1)  + "/"
                  + currentdate.getFullYear() + " @ "
                  + currentdate.getHours() + ":"
                  + currentdate.getMinutes() + ":"
                  + currentdate.getSeconds();
  console.log(typeof(datetime));
};


const showMonth = () => {
  const now = new Date();
  return now.getMonth();
  //console.log(now.getMonth());
};

const showYear = () => {
  const now = new Date();
  return now.getYear();
}

//console.log(showMonth());

const getDaysInMonth = (month, year) => {
     const date = new Date(year, month, 1);
     const days = [];
     while (date.getMonth() === month) {
        days.push(new Date(date));
        date.setDate(date.getDate() + 1);
     }
     return days;
};

getDaysInMonth(showMonth(), showYear());


/*function printCalendarRows = () => {
    var d = new Date();
    var o = new Date();
    o.setMonth( (d.getMonth()) - 36); //or   o.setFullYear( (d.getFullYear()) - 3);
    var currnt;
    while (o < d)
    {
      currnt = o.getMonth();
      console.log(currnt);
      if (currnt == 11)
      {
         console.log(o.getFullYear());
      }
      o.setMonth(currnt+1);

    }
    if (d.getMonth() != 11)
    {
       console.log(d.getFullYear());
    }
    alert("Date:"+ d + "Month:" + d.getMonth());
};
*/
