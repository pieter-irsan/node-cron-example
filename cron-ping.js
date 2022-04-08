const cron = require('node-cron');
const query = require('./query');
const time = require('./time')

console.log("Script started...");

cron.schedule('*/10 * * * * *', function() {
    query.insertTimestamp();

    const [h, m, s] = time.getCurrentTime();
    console.log(`[${h}:${m}:${s}] timestamp inserted`);
});

cron.schedule('* * * * *', function() {
    query.updateTimestamp();

    const [h, m, s] = time.getCurrentTime();
    console.log(`[${h}:${m}:${s}] all timestamp updated`);
})



/**
Time format
  
* * * * * *
| | | | | |
| | | | | day of week (0-7)
| | | | month (1-12)
| | | day of month (1-31)
| | hour (0-23)
| minute (0-59)
second (0-59) (optional) 

'* * * * *' = 1 minute interval

*/
