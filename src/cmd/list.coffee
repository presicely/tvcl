{error} = require '../lib/utils'
storage = require '../lib/storage'
printSeries = require '../lib/print_series'

list = ->
  storage.readAll ->
    series = storage.all()
    if series.length
      storage.all()
             .map((s) -> s['Data']['Series'][0])
             .forEach (s) -> printSeries(s, false)
    else
      return error("No Series Added Yet. Try `tvcl lookup <title>` first. And then `tvcl add <id>`")

module.exports = list
