const { ethers } = require("hardhat")

async function main() {
    const whitelistContract = await ethers.getContractFactory("Whitelist");

    const deployWhitelistContract = await whitelistContract.deploy(10);

    await deployWhitelistContract.deployed();

    console.log("Whitelisted contract address: ", deployWhitelistContract.address);
}

main().then(() => {
    process.exit(0)
}).catch((error) => {
    console.error(error);
    process.exit(1)
})