const Siriano = artifacts.require("Siriano");

contract("Send token", (accounts)=>{

    
    // let contractInstance;
    let siriano;
     beforeEach(async () => {
         siriano = await Siriano.deployed();
    //     // contractInstance = await Siriano.new();
     });

    it("Give the owner of the token 1M tokens", async()=>{
        let balance = await siriano.balanceOf(accounts[0]);
        balance = web3.utils.fromWei(balance, 'ether')
        assert.equal(balance, '1000000', 'Balance should be 1M tokens for contract creator')
        console.log(balance)

    })
    it("check total supply", async () => {
        
        let total = await siriano.totalSupply()
        total = web3.utils.fromWei(total, 'ether')
        assert.equal(total, '1000000', "Balance should be 1m tokens")
        console.log(total)
    })
    it("transfer to another user", async () => {
        let amount = web3.utils.toWei('1000', 'ether')
        let price = web3.utils.toWei('1', 'ether')
        await siriano.buyTokens( amount, { from:accounts[1], value: price })
        let balance = await siriano.balanceOf(accounts[1])
        let balanced = await siriano.balanceOf(accounts[0])
        balance = web3.utils.fromWei(balance, 'ether')
        balanced = web3.utils.fromWei(balanced, 'ether')
        assert.equal(balance, '1000', "Balance should be 1k tokens")
        assert.equal(balanced, '999000', "Balance should be 999k tokens")
        console.log(balance)
        console.log(balanced)
        
    })


})