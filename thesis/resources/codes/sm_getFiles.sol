/**
 * @dev Count the number of files owned by the caller.
 */
function getFilesCount() public view returns (uint256) {
    return _ownerToFiles[msg.sender].length;
}

/**
 * @dev Returns the file at the given index.
 * @param _index The index of the file to return. -- 1-based indexing
 */
function getSingleFile(uint256 _index) public view returns (File memory) {
    require(
        _index <= _ownerToFiles[msg.sender].length,
        "Index out of bounds"
    );
    require(_index > 0, "Index must be greater than 0");
    return _ownerToFiles[msg.sender][_index - 1];
}

/**
 * @dev Returns an array of files owned by the caller.
 */
function getAllFiles() public view returns (File[] memory) {
    require(_ownerToFiles[msg.sender].length > 0, "No files found!");
    return _ownerToFiles[msg.sender];
}

function min(uint256 first, uint256 last) private pure returns (uint256) {
    if (first < last) {
        return first;
    } else {
        return last;
    }
}

/**
 * @dev Share a file with another user.
 * @param _startIndex the start index of the range of files to return. -- 1-based indexing
 * @param _endIndex the end index of the range of files to return. -- 1-based indexing
 */
function getRangeOfFiles(uint256 _startIndex, uint256 _endIndex)
    public
    view
    returns (File[] memory)
{
    require(_ownerToFiles[msg.sender].length > 0, "No files found!");
    require(
        _startIndex <= _ownerToFiles[msg.sender].length,
        "Index out of bounds"
    );
    require(_startIndex > 0, "Index out of bounds");
    require(
        _endIndex > _startIndex,
        "start index must be strictly smaller than the end index"
    );

    _endIndex = min(_endIndex, _ownerToFiles[msg.sender].length + 1);
    uint256 range = _endIndex - _startIndex;
    _startIndex = _startIndex - 1;
    _endIndex = _endIndex - 1;
    File[] memory result = new File[](range);
    for (uint256 i = _startIndex; i < _endIndex; ++i) {
        result[i - _startIndex] = _ownerToFiles[msg.sender][i];
    }
    return result;
}
