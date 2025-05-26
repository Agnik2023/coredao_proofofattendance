# 🎟️ Proof of Attendance Smart Contract

A simple, gas-efficient, and secure **Solidity smart contract** to manage event attendance using the Ethereum blockchain. Built for transparency, verifiability, and on-chain participation tracking.

---

## 📜 Overview

The `ProofOfAttendance` contract allows event organizers (owners) to:

* ✅ Create events with unique IDs
* ✅ Let users **claim attendance only once** per event
* ✅ Publicly verify attendance records
* ✅ Manage ownership (transfer or renounce)

---

## ⚙️ Features

* 🔐 **Ownership Control** – Only the contract owner can create events or transfer ownership.
* 📦 **Gas Optimized** – Uses `calldata`, `custom errors`, and efficient mappings.
* 🧾 **Event Logs** – All major actions emit events for easy tracking.
* 🧠 **Minimal & Modular** – Simple structure for easy integration or extension.

---

## 🛠️ Functions

### 🎫 Event Management

| Function                                 | Description                                         |
| ---------------------------------------- | --------------------------------------------------- |
| `createEvent(string calldata eventName)` | Owner-only. Creates a new event and returns its ID. |
| `eventExists(uint256 eventId)`           | Checks if an event exists.                          |
| `getTotalEvents()`                       | Returns the total number of events created.         |

### 🙋 Attendance

| Function                                                | Description                                                 |
| ------------------------------------------------------- | ----------------------------------------------------------- |
| `claimAttendance(uint256 eventId)`                      | Users can claim their attendance for a specific event once. |
| `checkAttendance(uint256 eventId, address userAddress)` | Returns whether a user has claimed attendance for an event. |

### 👑 Ownership

| Function                              | Description                                  |
| ------------------------------------- | -------------------------------------------- |
| `transferOwnership(address newOwner)` | Owner-only. Transfers contract ownership.    |
| `renounceOwnership()`                 | Owner-only. Renounces ownership permanently. |

---

## Smart Contract : 0x17575Ede624737377317d789EbB870F7187f051F

![image](https://github.com/user-attachments/assets/b07f2776-0226-4121-8e22-7ff5a49dce43)


## 🧪 Testing (Remix IDE)

1. Open [Remix IDE](https://remix.ethereum.org).
2. Paste contract into a new file: `ProofOfAttendance.sol`.
3. Compile using Solidity `^0.8.19`.
4. Deploy using **JavaScript VM**.
5. Run tests:

   * `createEvent("Web3 Summit")`
   * `claimAttendance(eventId)`
   * Switch accounts and try again
   * Attempt duplicate claim (should fail)
   * Transfer or renounce ownership

---

## 🧱 Contract Architecture

```solidity
struct Event {
    string name;
    bool exists;
}

mapping(uint256 => Event) public events;
mapping(uint256 => mapping(address => bool)) public attendance;
```

* `events`: Stores each event by ID.
* `attendance`: Tracks if a user has claimed attendance for a given event ID.

---

## ⚠️ Custom Errors

| Error              | Trigger                            |
| ------------------ | ---------------------------------- |
| `NotOwner()`       | Caller is not the owner            |
| `EventNotFound()`  | Referenced event ID does not exist |
| `AlreadyClaimed()` | Attendance already claimed         |
| `ZeroAddress()`    | Address is `0x0`                   |

---

## 📜 License

MIT © 2025
Use freely with attribution.
