# Degen Contract with special in game camera store

We have created a ERC20 token called Degen for our degen gaming contract where users can transact with the help of these tokens . They can mint, burn , transfer and also redeem from the in-game store. This contract is deployed and verified on Avalanche Fuji test network.

## Key Features
- ERC20 Token Standard: DegenToken follows the ERC20 standard, ensuring compatibility with existing Ethereum-based applications and wallets.
- Ownable: The contract owner has special privileges to mint new tokens.
- In-Game Camera Store: Users can redeem tokens for specific camera items within the game. Three cameras are available: Canon EOS R5, Sony Alpha 7 IV (A7 IV), and Nikon Z6 II.
- Token Burn: Users can burn their tokens, reducing the total supply.
- Customizable: The contract allows the owner to adjust token minting and manage camera items.
## Camera Items
The contract includes three predefined camera items available for redemption:

* Canon EOS R5 - Initial Frequency: 8
* Sony Alpha 7 IV (A7 IV) - Initial Frequency: 6
* Nikon Z6 II - Initial Frequency: 4
## Redeeming Cameras
Users can redeem their tokens for cameras if they have sufficient balance. Each camera has a different cost and frequency limit. Once the frequency of a camera reaches zero, it can no longer be redeemed.
## Getting Started

### Instructions for Developers
- Clone the repository and navigate to the project directory.
- Install dependencies using npm install.
- Deploy the contract on Avalanche Fuji testnet using npx hardhat run scripts/deploy.js --network fuji.
- Verify the contract on Snowtrace using npx hardhat verify <address> --network fuji.
- Interact with the contract using tools like Hardhat console or a web interface.
This contract provides a basic yet comprehensive framework for an ERC20 token with additional in-game item redemption features, suitable for integration in gaming or other token-based applications.

## Help

Use the coupon code for avalanche test tokens on core faucet.
```
projectseek
```

## Authors

Shamanth Shashi

mail-[shamanthshashi2@gmail.com]


## License

This project is licensed under the [MIT] License - see the LICENSE.md file for details
