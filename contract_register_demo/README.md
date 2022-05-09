This is A demo of Smart Contract Register design patter<br/>

here is some main contract: 
- Register.sol: record address of the contract
- Core.sol: the core contract of this simple dapp that record user's savings
- Deposit.sol: to help user to deposit savings
- Withdraw.sol: to help user to withdraw savings

how to deploy:
1. Deploy the Register.sol
2. Deploy the Core.sol 
3. Call Register.registerCoreContract with the address of Core contract that deployed at step 2
4. Deploy Deposit.sol and Withdraw.sol with the address of Register.sol that deployed at step 1
5. Try Deposit contract and Withdraw contract
6. And then you can modify the Core contract and redeploy, and redo step 2 and step 5, to make sure the new Core contract works!

Tips: this sample may make no sense and without considering security, but it's just created to complain this design pattern.

