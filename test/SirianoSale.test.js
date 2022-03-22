// const SirianoTokenSale = artifacts.require("SirianoTokenSale");
// const Siriano = artifacts.require("Siriano");

// contract("but token", (accounts)=>{
//      let sale
//      let siriano
//      beforeEach(async () => {
//          sale = await SirianoTokenSale.deployed();
        
    
//      });

//      it("return token fee", async()=>{
//          let fee = await sale.TokenPrice()
//          fee = web3.utils.fromWei(fee, 'ether')
//          console.log(fee)
//          assert.equal(fee, '0.001', 'Balance should be 1M tokens for contract creator')

         
//      })

//       it("Set the buyer and tokens", async()=>{
//         let amount = 1000
//         let price = web3.utils.toWei('1', 'ether')
//         await sale.buyTokens(amount);
//         // let balance = await siriano.balanceOf(accounts[2])
//         // balance = web3.utils.fromWei(balance, 'ether')
//         let sold = sale.TokenSod()
//         sold = web3.utils.fromWei(sold, 'ether')
//         assert.equal(sold, '1000', 'Balance should be 1M tokens for contract creator')
//         console.log(balance)

//     })

// })