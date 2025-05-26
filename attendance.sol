// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract SimpleProofOfAttendance {
    address public owner;
    uint256 public eventCount;
    
    // eventId => eventName
    mapping(uint256 => string) public events;
    
    // eventId => user => hasAttended
    mapping(uint256 => mapping(address => bool)) public attendance;
    
    constructor() {
        owner = msg.sender;
    }
    
    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }
    
    // Owner creates new event
    function createEvent(string memory eventName) external onlyOwner {
        eventCount++;
        events[eventCount] = eventName;
    }
    
    // Anyone can claim attendance once per event
    function claimAttendance(uint256 eventId) external {
        require(bytes(events[eventId]).length > 0, "Event does not exist");
        require(!attendance[eventId][msg.sender], "Already claimed");
        
        attendance[eventId][msg.sender] = true;
    }
    
    // Check if user attended event
    function checkAttendance(uint256 eventId, address user) external view returns (bool) {
        return attendance[eventId][user];
    }
}