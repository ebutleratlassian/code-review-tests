# code-review-tests

## Commands
- **Generate diff with X files:** `./flip.sh <directory>`, e.g. `./flip.sh 5_small_files` will reverse the contents of the files in that directory and commit the changes.
- **Generate files from templates:** `./generate.sh {NUM_FILES}`
- **Generate large file template:** (x = lines, y = words per line): `ruby -e 'a=STDIN.readlines;x.times do;b=[];y.times do; b << a[rand(a.size)].chomp end; puts b.join(" "); end' < /usr/share/dict/words > lorem_large.txt`
