const getCurrentTime = () => {
    const date = new Date();
    const [h, m, s, ms] = [
        ('0' + date.getHours()).slice(-2),
        ('0' + date.getMinutes()).slice(-2),
        ('0' + date.getSeconds()).slice(-2),
        ('0' + date.getMilliseconds()).slice(-3)
    ];

    return [h, m, s, ms];
}

module.exports = {
    getCurrentTime
}
