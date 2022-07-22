/**
 * @dev The file's metadata.
 */
mapping(address => File[]) private _ownerToFiles;
mapping(address => mapping(string => uint256)) private _hashToIndex;
