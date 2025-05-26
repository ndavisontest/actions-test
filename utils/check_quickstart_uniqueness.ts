const main = (): void => {
  console.log("Hello");
};

if (require.main === module) {
  main();
}

export default main;
