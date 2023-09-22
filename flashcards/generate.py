from pathlib import Path
import csv

prefix = """\
#separator:semicolon
#html:true
#notetype column: 1
#columns:notetype;front
"""
note_type = 'bqn cloze'
output_file = Path('output.txt')

def get_rows(csvfile: Path):
  with open(csvfile) as fp:
    reader = csv.reader(fp, skipinitialspace=True, delimiter=';', escapechar='\\')
    next(reader) # skip header row
    for row in reader:
      print(row)
      yield row

with output_file.open('w') as fp:
  fp.write(prefix)

  for glyph, monadic, dyadic, input in get_rows('functions.csv'):
    fp.write(f'{note_type};')
    fp.write('<p class="glyph">{{c1::%s}}</p> is monadic {{c2::%s}} and dyadic {{c3::%s}}.' % (glyph, monadic, dyadic))
    if input:
      fp.write(' Input it using {{c4::<code>\\%s</code>}}.' % input)
    fp.write('\n')

  for glyph, name, type_, input in get_rows('modifiers.csv'):
    fp.write(f'{note_type};')
    fp.write('<p class="glyph">{{c1::%s}}</p> is {{c2::%s}} {{c3::%s}}.' % (glyph, type_, name))
    if input:
      fp.write(' Input it using {{c4::<code>\\%s</code>}}.' % input)
    fp.write('\n')

  for glyph, name, input in get_rows('other.csv'):
    fp.write(f'{note_type};')
    fp.write('<p class="glyph">{{c1::%s}}</p> is {{c2::%s}}.' % (glyph, name))
    if input:
      fp.write(' Input it using {{c3::<code>\\%s</code>}}.' % input)
    fp.write('\n')
