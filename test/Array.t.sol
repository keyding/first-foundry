// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {console2, Test} from 'forge-std/Test.sol';
import {Array} from '../src/Array.sol';

contract ArrayTest is Test {
  Array public array;

  function setUp() public {
    array = new Array();
  }

  function testGet() public {
    array.push(1);
    array.push(2);
    assertEq(array.get(0), 1);
    assertEq(array.get(1), 2);
  }

  function testGetArr() public {
    array.push(1);
    array.push(2);
    uint[] memory arr = array.getArr();
    assertEq(arr.length, 2);
    assertEq(arr[0], 1);
    assertEq(arr[1], 2);
  }

  function testPush() public {
    array.push(1);
    assertEq(array.getLength(), 1);
  }

  function testPop() public {
    array.push(1);
    array.push(2);
    array.pop();
    assertEq(array.getLength(), 1);
  }

  function testGetLength() public {
    array.push(1);
    array.push(2);
    assertEq(array.getLength(), 2);
  }

  function testRemove() public {
    array.push(1);
    array.push(2);
    array.remove(0);
    assertEq(array.getLength(), 2);
    assertEq(array.get(0), 0);
  }

}