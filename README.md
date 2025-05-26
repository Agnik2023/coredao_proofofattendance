# Simple Proof of Attendance

A minimal smart contract for tracking event attendance on the blockchain. Only 25 lines of code!

## What it does
- Event owners create events
- Users claim attendance once per event
- Anyone can verify attendance records

## Quick Start
1. Open [Remix IDE](https://remix.ethereum.org)
2. Create new file and paste the contract code
3. Deploy with Solidity ^0.8.19
4. Start tracking attendance!

## Contract Functions
```solidity
createEvent("Event Name")        // Owner only - creates new event
claimAttendance(eventId)         // Anyone - claim attendance once
checkAttendance(eventId, user)   // Anyone - verify attendance
```
## Smart Contract Address: 0x6098cac6bf57cb87ebce5b19402be440c2bdae8a73def6d13bc3030ccdf528e4
![image](https://github.com/user-attachments/assets/7c579e9d-09e0-4440-a758-715b8a21d1f9)


## Use Cases
Perfect for conferences, workshops, meetups, courses, and any event needing verifiable attendance records.

## License
MIT
