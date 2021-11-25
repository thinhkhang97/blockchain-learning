// Step 1: Define version of solidiy
pragma solidity >= 0.6.0 < 0.9.0;

// Step 2: Create contract
contract SimpleStorage {
    
    // There are many types
    uint256 public number = 5;

    // A data structure type
    struct People {
        uint256 age;
        string name;
    }

    People[] public people;

    // Mapping string to number
    mapping(string => uint256) public nameToAge;

    function store(uint256 _number) public {
        number = _number;
    }

    // Like getter
    function retrieve() public view returns(uint256) {
        return number;
    }

    // Two types of storages: memory store in execution time and storage
    function addPerson(string memory _name, uint256 _age) public {
        people.push(People({name: _name, age: _age}));
        nameToAge[_name] = _age;
    }
}