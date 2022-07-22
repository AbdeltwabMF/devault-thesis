/**
 * @dev Share a file with another user.
 * @param _to The address of the user to share the file with.
 * @param _index The index of the file to be shared. -- 1-based indexing
 */
function shareFile(address _to, uint256 _index) public {
    require(
        _index <= _ownerToFiles[msg.sender].length,
        "Index out of bounds!"
    );
    require(_index > 0, "Index must be greater than 0!");

    require(_to != msg.sender, "To yourself!");
    require(_to != address(0), "Null address!");

    File memory file = _ownerToFiles[msg.sender][_index - 1];

    // check if the file's hash is already present in the hashes array
    if (_hashToIndex[_to][file.hash] == 0) {
        _ownerToFiles[_to].push(file);
        _hashToIndex[_to][file.hash] = _ownerToFiles[_to].length;

        emit FileShared(
            _to,
            file.index,
            file.name,
            file.size,
            file.mimeType,
            file.hash,
            file.uploadTime
        );
    }
}
