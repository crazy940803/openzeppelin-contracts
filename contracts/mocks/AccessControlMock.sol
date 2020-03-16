pragma solidity ^0.6.0;

import "../access/AccessControl.sol";

contract AccessControlMock is AccessControl {
    constructor() public {
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
    }

    function setRoleAdmin(bytes32 roleId, bytes32 adminRoleId) public {
        _setRoleAdmin(roleId, adminRoleId);
    }
}
