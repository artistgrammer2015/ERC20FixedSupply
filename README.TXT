1、Project Url: https://benpaodewoniu.github.io/2022/01/02/truffle2/

2、获取bnb测试币: https://www.bnbchain.org/en/testnet-faucet

3、truffle commands helps: http://cw.hubwiz.com/card/c/truffle-5-manual/1/1/14/

4、crawsun@manka-d-l-5110 ERC20FixedSupply % truffle migrate --network testnet -f 2
Starting migrations...
======================
> Network name:    'testnet'
> Network id:      97
> Block gas limit: 69998932 (0x42c1954)


2_deploy_ERC20FixedSupply.js
============================

   Deploying 'ERC20FixedSupply'
   ----------------------------
   > transaction hash:    0x9d6d614ccf9564686235ed182f0dc95091452fc3aa4dff3624aeedb2c8c6c772
   > Blocks: 2            Seconds: 4
   > contract address:    0x6FAB6cc9058F77caC9bec9F6d742F64ddf5Ae6eA
   > block number:        41492271
   > block timestamp:     1719195201
   > account:             0x058A5c347171Dd0d1bE3F21269FD1366Fe49dEE6
   > balance:             0.5382870160775
   > gas used:            1298596 (0x13d0a4)
   > gas price:           2.5 gwei
   > value sent:          0 ETH
   > total cost:          0.00324649 ETH

   Pausing for 10 confirmations...

   --------------------------------
   > confirmation number: 1 (block: 41492272)
   > confirmation number: 3 (block: 41492274)
   > confirmation number: 4 (block: 41492275)
   > confirmation number: 5 (block: 41492276)
   > confirmation number: 7 (block: 41492278)
   > confirmation number: 8 (block: 41492279)
   > confirmation number: 9 (block: 41492280)
   > confirmation number: 11 (block: 41492282)
   > Saving artifacts
   -------------------------------------
   > Total cost:          0.00324649 ETH

Summary
=======
> Total deployments:   1
> Final cost:          0.00324649 ETH

5、查看合约: https://testnet.bscscan.com/ 输入合约地址

6、blockchain资料: https://benpaodewoniu.github.io/categories/%E5%8C%BA%E5%9D%97%E9%93%BE/page/3/

7、转账测试
crawsun@manka-d-l-5110 ERC20FixedSupply % truffle console --network testnet
truffle(testnet)> ERC20FixedSupply.deployed().then(function(instance){return instance.transfer('0x058A5c347171Dd0d1bE3F21269FD1366Fe49dEE6', '10000');})
注意这里amount要写成字符串，否则数字会溢出，实际转账金额要/decimal(默认是18)
ERC20FixedSupply.deployed().then(function(instance){return instance.transfer('0x30B1DeFB55e442c926732574b9cBCDeFa5a7eC48', '10000000000000000000000');})

从合约地址转账到钱包, todo test
ERC20FixedSupply.deployed().then(function(instance){return instance.transferFrom('0xcA9D8EB62F06CDb7F781FC5a37304BBE892ef701', '0x30B1DeFB55e442c926732574b9cBCDeFa5a7eC48', '1000000000000000000000');}))

8、truffle commands
truffle init
truffle test
truffle compile
truffle develop
truffle migrate --network testnet -f 2
truffle migrate --network testnet -f 2 --reset --compile-none
truffle console --network testnet


