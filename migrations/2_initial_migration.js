const OraculoNasa = artifacts.require("OraculoNasa");

module.exports = function (deployer) {
  deployer.deploy(OraculoNasa);
};
