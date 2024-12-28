// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EduToken {
    mapping(address => uint256) public points;

    // Event for tracking points
    event PointsAdded(address indexed user, uint256 amount);

    // Function to add points
    function addPoints(address user, uint256 amount) public {
        points[user] += amount;
        emit PointsAdded(user, amount);
    }

    // Function to get points
    function getPoints(address user) public view returns (uint256) {
        return points[user];
    }
}
