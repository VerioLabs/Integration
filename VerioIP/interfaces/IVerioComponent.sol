// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.23;

import "./IVersionable.sol";
import "./IComponentSelector.sol";

interface IVerioComponent is IVersionable {
    /// @notice Event emitted when the selector is updated
    /// @param selector The new selector address
    event SelectorUpdated(address indexed selector);

    /// @notice Error when caller is not the delegator
    /// @param delegator The delegator address
    error OnlyDelegator(address delegator);

    /// @notice Error when caller is not the stake pool
    /// @param stakePool The stake pool address
    error OnlyStakePool(address stakePool);

    /// @notice Error when caller is not the selector
    /// @param selector The selector address
    error OnlySelector(address selector);

    /// @notice Get the current selector
    /// @return The selector address
    function getSelector() external view returns (IComponentSelector);
}
