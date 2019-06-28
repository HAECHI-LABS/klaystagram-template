pragma solidity 0.4.24;

contract klaystagram {
    // Klaystagram
    event PhotoUploaded (uint indexed tokenId, bytes photo, string title, string location, string description, uint256 timestamp);

    function uploadPhoto(bytes photo, string title, string location, string description) public;
    function transferOwnership(uint256 tokenId, address to) public returns(uint, address, address, address);
    function getPhoto(uint tokenId) public view returns(uint256, address[], bytes, string, string, string, uint256);

    // ERC721
    event Transfer(address indexed from, address indexed to, uint256 indexed tokenId);
    event Approval(address indexed owner, address indexed approved, uint256 indexed tokenId);
    event ApprovalForAll(address indexed owner, address indexed operator, bool approved);

    function balanceOf(address owner) public view returns (uint256 balance);
    function ownerOf(uint256 tokenId) public view returns (address owner);
    function safeTransferFrom(address from, address to, uint256 tokenId) public;
    function transferFrom(address from, address to, uint256 tokenId) public;
    function approve(address to, uint256 tokenId) public;
    function getApproved(uint256 tokenId) public view returns (address operator);
    function setApprovalForAll(address operator, bool _approved) public;
    function isApprovedForAll(address owner, address operator) public view returns (bool);
    function safeTransferFrom(address from, address to, uint256 tokenId, bytes memory data) public;
    function tokenOfOwnerByIndex(address owner, uint256 index) public view returns (uint256);

}
