count = 0
highlight = (text)->
  text = text.replace(/\n/g,'↲\n').replace(/\r/g,'[CR]').replace(/\t/g,'↦')

match = (input, output, expectedOutput)->
  count += 1
  unless output is expectedOutput
    console.log (color.red "  Failed: Test #{count}") + " (#{test.name})"
    console.log color.black 'INPUT'
    console.log highlight "|#{input}|"
    console.log color.blue 'EXPECTED'
    console.log highlight "|#{expectedOutput}|"
    console.log color.red 'RECEIVED'
    console.log highlight "|#{output}|"
    end()
  else
    console.log (color.green "  OK #{count}") + " #{test.name}"
    # next()
