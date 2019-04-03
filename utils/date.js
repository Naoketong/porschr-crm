const formatTime = date => {
  const year   = date.getFullYear()//可返回一个表示年份的 4 位数字。
  const month  = date.getMonth() + 1 //可返回表示月份的数字
  const day    = date.getDate() //从 SQL Server 返回当前的时间和日期。
  const hour   = date.getHours() //根据本地时间返回时间的小时字段
  const minute = date.getMinutes() //可返回时间的分钟字段
  const second = date.getSeconds() //依据当地时间返回时间秒数：
 
  return [year, month, day].map(formatNumber).join('/') + ' ' + [hour, minute, second].map(formatNumber).join(':')
}

const formatNumber = n => {
  n = n.toString()
  return n[1] ? n : '0' + n
}

module.exports = {
  formatTime: formatTime
}