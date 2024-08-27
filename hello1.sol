// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StudentCredentials {
    
    // Struct to store student data
    struct Student {
        string name;
        string rollNumber;
        string grade;
    }

    // Mapping to store credentials based on student's address
    mapping(address => Student) private students;

    // Function to add student data
    function addStudent(string memory _name, string memory _rollNumber, string memory _grade) public {
        students[msg.sender] = Student(_name, _rollNumber, _grade);
    }

    // Function to retrieve student data
    function getStudent(address _studentAddress) public view returns (string memory, string memory, string memory) {
        Student memory student = students[_studentAddress];
        return (student.name, student.rollNumber, student.grade);
    }
}
