// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import "forge-std/Test.sol";
import "../src/Books.sol";

contract BooksTest is Test {
    Books public books;

    function setUp() public {
        books = new Books("Programming Foundry", "Sai Manvith Reddy", 100);
    }

    function test_get_book() public view {
        // Unpack the tuple returned by books.book()
        (string memory title, string memory author, uint256 pages) = books.book();

        // Assert individual values
        assertEq(title, "Programming Foundry");
        assertEq(author, "Sai Manvith Reddy");
        assertEq(pages, 100);
    }

    function test_updatePages() public {
        // Update pages
        books.update_pages(150);

        // Unpack the updated tuple
        (, , uint256 updatedPages) = books.book();

        // Assert updated pages
        assertEq(updatedPages, 150);
    }
}
