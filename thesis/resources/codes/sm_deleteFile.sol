/**
 * @dev Removes a file from the storage.
 * @param _index The index of the file to be removed. -- 1-based indexing
 */
function removeFile(uint256 _index) public {
    require(
        _index <= _ownerToFiles[msg.sender].length,
        "Index out of bounds!"
    );
    require(_index > 0, "Index must be greater than 0!");

    File memory file = _ownerToFiles[msg.sender][_index - 1];

    _ownerToFiles[msg.sender][_index - 1] = _ownerToFiles[msg.sender][
        _ownerToFiles[msg.sender].length - 1
    ];
    _ownerToFiles[msg.sender][_index - 1].index = _index;

    _hashToIndex[msg.sender][
        _ownerToFiles[msg.sender][_index - 1].hash
    ] = _hashToIndex[msg.sender][file.hash];
    _hashToIndex[msg.sender][file.hash] = 0;

    _ownerToFiles[msg.sender].pop();

    emit FileRemoved(
        file.index,
        file.name,
        file.size,
        file.mimeType,
        file.hash,
        file.uploadTime
    );
}
