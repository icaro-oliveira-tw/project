// SPDX-License-Identifier: MIT
pragma solidity 0.8.12;

contract Project {
    uint32 target_amount;
    address owner;
    uint32 deadline;
    uint created_at;
    Donator[] donators;

    struct Donator {
        uint32 id;
        address donator_address;
        uint32 amount;
    }

    function getBalance() public view returns(uint) {
        return address(this).balance;
    }

    function makeDonation() payable public {

    }
}

// import "hardhat/console.sol";

// contract Comments {
//     struct Comment {
//         uint32 id;
//         string topic;
//         address creator_address;
//         string message;
//         uint created_at;
//     }

//     uint32 private idCounter;
//     mapping(string => Comment[]) private commentsByTopic;
        
//     event CommentAdded(Comment comment);

//     function getComments(string calldata topic) public view returns(Comment[] memory) {
//        return commentsByTopic[topic];
//     }

//     function addComment(string calldata topic, string calldata message) public {
//         Comment memory comment = Comment({
//             id: idCounter,
//             topic: topic,
//             creator_address: msg.sender,
//             message: message,
//             created_at: block.timestamp
//         });
//         commentsByTopic[topic].push(comment);
//         idCounter++;
//         emit CommentAdded(comment);
//     }
// }