pragma solidity >=0.4.22 <0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

//固定总量代币
contract ERC20FixedSupply is ERC20 {
    string private message;

    constructor(
        string memory name, //代币名称
        string memory symbol, //代币缩写
        uint256 totalSupply //发行总量
    ) public ERC20(name, symbol) {
        message = "OK";
        _mint(msg.sender, totalSupply * (10 ** decimals()));
    }

    function getMessage() public view returns (string memory) {
        return message;
    }

    function setMessage(string memory newMessage) public {
        message = newMessage;
    }
}
