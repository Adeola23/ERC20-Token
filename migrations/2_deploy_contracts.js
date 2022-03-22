const Siriano = artifacts.require("Siriano");
// const SirianoTokenSale = artifacts.require("SirianoTokenSale");

module.exports = async function (deployer) {
  const price = web3.utils.toWei('0.001', 'ether')
  deployer.deploy(Siriano, 1000000, price)
  
};
