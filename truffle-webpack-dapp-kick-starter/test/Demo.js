var Demo = artifacts.require("Demo");

contract("Demo Contract", async (accounts) => {
    it("change owner validation", async () => {
        let instance = await Demo.deployed();
        let owner = await instance.owner();
        assert.equal(owner, accounts[0]);

        await instance.changeOwner(accounts[1], {from: owner});
        let newOwner = await instance.owner();
        assert.equal(newOwner, accounts[1]);
    })
})