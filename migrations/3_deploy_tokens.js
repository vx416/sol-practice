const ERC20 = artifacts.require("MyToken");
const ERC721 = artifacts.require("ERC721");

module.exports = function (deployer) {
  deployer.deploy(ERC20, "MyToken", "MT", 100000);
  deployer.deploy(ERC721, "ERC721", "EEE");
};
