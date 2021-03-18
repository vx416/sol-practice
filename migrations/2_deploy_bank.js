const Bank = artifacts.require("SimpleBank");

module.exports = function (deployer) {
  deployer.deploy(Bank);
};
