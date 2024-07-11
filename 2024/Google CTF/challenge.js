const readline = require('node:readline');
const parse = require('bash-parser');
const { exec } = require("child_process");

const check = ast => {
  if (typeof(ast) === 'string') {
    return true;
  }
  for (var prop in ast) {
    if (prop === 'type' && ast[prop] === 'Redirect') {
      return false;
    }
    if (prop === 'type' && ast[prop] === 'Command') {
      if (ast['name'] && ast['name']['text'] && ast['name']['text'] != 'echo') {
        return false;
      }
    }
    if (!check(ast[prop])) {
      return false;
    }
  }
  return true;
};

const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout,
});

rl.question(`I like scripts with echo. What's your favorite bash script? `, cmd => {
  const ast = parse(cmd);
  if (!ast.type === 'Script') {
    rl.write('This is not even a script!');
    rl.close();
    return;
  }
  if (!check(ast)) {
    rl.write('Hacker detected! No hacks, only echo!');
    rl.close();
    return;
  }
  exec(cmd, { shell: '/bin/bash' }, (error, stdout, stderr) => {
    rl.write(stdout);
    rl.close();
  });
});

