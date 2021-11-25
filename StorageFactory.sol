// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

// Import the contract and deploy it when deploy this contract
import "./SimpleStorage.sol";

contract StorageFactory {

    SimpleStorage[] public simpleStorageArray;

    function createSimpleStorageContract() public {
        // Create new contract
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }

    function sfStore(uint256 _simpleStoreIndex, uint256 _simpleStorageNumber) public {
        // Address is address of contract, get by using function address
        // ABI is Application binary interface, get the address to return a contract, ex SimpleStorage
        SimpleStorage simpleStorage = SimpleStorage(address(simpleStorageArray[_simpleStoreIndex]));
        simpleStorage.store(_simpleStorageNumber);
    }

    function sfRetrieve(uint256 _index) public view returns(uint256) {
        return SimpleStorage(address(simpleStorageArray[_index])).retrieve();
    }
}