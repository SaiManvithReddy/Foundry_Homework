// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import "forge-std/Script.sol";
import "../src/Books.sol";

contract BooksScript is Script {
    function run() external {
        vm.startBroadcast();
        new Books("Programming Foundry", "Sai Manvith Reddy", 100);
        vm.stopBroadcast();
    }
}