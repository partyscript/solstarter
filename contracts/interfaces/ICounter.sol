// SPDX-License-Identifier: Unlicense

pragma solidity >=0.8.17;

interface ICounter {
	/*//////////////////////////////////////////////////////////////
                                ERRORS
    //////////////////////////////////////////////////////////////*/

	error CounterOverflow();

	/*//////////////////////////////////////////////////////////////
                                STRUCTS
    //////////////////////////////////////////////////////////////*/

	struct Counter {
		uint256 value;
	}

	/*//////////////////////////////////////////////////////////////
                               FUNCTIONS
    //////////////////////////////////////////////////////////////*/

	function count(uint256 counterId) external view returns (uint256);

	function increment(uint256 counterId) external;

	function decrement(uint256 counterId) external;

	function reset(uint256 counterId) external;
}
