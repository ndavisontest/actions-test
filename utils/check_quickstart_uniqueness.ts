const main = (): void => {
  console.log("Hello");
  return true;  
};

if (require.main === module) {
  main();
}

export default main;
