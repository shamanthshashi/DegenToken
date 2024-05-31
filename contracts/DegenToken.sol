// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenToken is ERC20, Ownable {
    mapping(uint256 => string) public camera;
    mapping(address => string) public camera_bought;
    mapping(uint256 => uint256) public camera_frequency;
    string public camera_igstore;

    constructor() ERC20("Degen", "DGN") Ownable(msg.sender) {
        camera_igstore = "In game camera store items: 1. Canon EOS R5, 2. Sony Alpha 7 IV (A7 IV), 3. Nikon Z6 II";
        
        camera_frequency[1] = 8;
        camera_frequency[2] = 6;
        camera_frequency[3] = 4;
        camera[1] = "Canon EOS R5";
        camera[2] = "Sony Alpha 7 IV (A7 IV)";
        camera[3] = "Nikon Z6 II";
    }

    function mint(address _address, uint256 token_value) public onlyOwner {
        _mint(_address, token_value);
    }

    function redeem(uint256 camera_number) public {
        require(camera_number > 0 && camera_number <= 3, "Only three cameras available!");
        if(camera_frequency[camera_number] < 0 ){
        revert("No camera left ;-;");
        }
        assert(balanceOf(msg.sender) >= 300);
        _burn(msg.sender, 100 * camera_number);
        camera_bought[msg.sender]=camera[camera_number]; 
        camera_frequency[camera_number]--;
    }

    function burn(uint256 token_amount) public  {
        _burn(msg.sender, token_amount);
    }

    function transfer(address recipient, uint256 token_value) public override returns (bool) {
        _transfer(msg.sender, recipient, token_value);
        return true;
    }
}
