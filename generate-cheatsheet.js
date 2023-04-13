const fs = require('fs')

const bqn = require("./bqn/docs/bqn.js")
const inputFile = 'cheatsheet.bqn'
const outputFile = 'cheatsheet.md'

function* getLines() {
  const lines = fs.readFileSync(inputFile, 'utf-8')
    .split(/\n/)
    .map(line => line.trim())
    .filter(line => line !== '')
  
  for (const line of lines) {
    yield line
  }
}

function* getOutputLines(lines) {
  for (const line of lines) {
    if (line === '# Functions' || line === '# Modifiers') {
      yield `\n\n## ${line.substr(2)}`
      continue
    }
    
    if (line.startsWith('# ')) {
      yield `\n\n### ${line.substr(2)}\n\n`
      continue
    }

    const result = bqn(line)
    let fmtResult = bqn.fmt(result)
    // Indent the string if the formatted result contains newlines
    if (fmtResult.includes('\n')) {
      const indent = ' '.repeat(line.length + 9)
      let [first, ...rest] = fmtResult.split(/\n/)
      rest = rest.map(line => indent + line)
      fmtResult = [first, ...rest].join('\n')
    } 
    yield `    ${line} --> ${fmtResult}\n`
  }
}

const stream = fs.createWriteStream(outputFile)
stream.write('# Cheatsheet')
const lines = getLines()
for (const line of getOutputLines(lines)) {
  stream.write(line)
}
stream.end()

