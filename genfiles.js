const fs = require("fs");

let numFiles = 50;
let numLines = 90;

for (let i = 0; i < numFiles; i++) {
  const padded = ("00" + i).substr(-2);
  fs.writeFileSync(`${padded}-file--${numLines}-lines.txt`, genLines(numLines));
}

function genLines(n) {
  let content = "";

  for (let i = 0; i < n; i++)
    content +=
      "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\n";

  return content;
}
