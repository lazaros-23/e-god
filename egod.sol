pragma solidity ^0.8.10;

import 'https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol';


contract egod is ERC20 {
    address public admin;

    constructor() ERC20('egod', 'egod'){

        _mint(msg.sender, 1000000000 *10**18);
        admin = msg.sender;

    }

    function mint(address to, uint ammount) external {
        require(msg.sender == admin, 'error');
        _mint(to, ammount);

    }
}
