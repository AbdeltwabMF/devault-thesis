/**
 * @dev Creates a new file.
 * @param _name Name of the file.
 * @param _size Size of the file.
 * @param _mimeType Mime type of the file.
 * @param _hash Hash of the file.
 */
function storeFile(
                   string memory _name,
                   uint256 _size,
                   string memory _mimeType,
                   string memory _hash
                   ) public {
    require(bytes(_name).length > 0, "Name cannot be empty");
    require(
            bytes(_name).length <= 512,
            "Name cannot be longer than 512 bytes"
            );

    require(_size > 0, "Size must be greater than 0");
    require(_size <= 2**30, "Size must be less than 2**30");

    require(bytes(_mimeType).length > 0, "Mime type cannot be empty");
    require(
            bytes(_mimeType).length <= 512,
            "Mime type cannot be longer than 512 bytes"
            );

    require(bytes(_hash).length > 0, "Hash cannot be empty");

    File memory newFile = File(
                               _ownerToFiles[msg.sender].length + 1,
                               _name,
                               _size,
                               _mimeType,
                               _hash,
                               block.timestamp
                               );

    // check if the file's hash is already present in the hashes array
    if (_hashToIndex[msg.sender][_hash] == 0) {
        _ownerToFiles[msg.sender].push(newFile);
        _hashToIndex[msg.sender][_hash] = _ownerToFiles[msg.sender].length;

        emit FileStored(
                        newFile.index,
                        newFile.name,
                        newFile.size,
                        newFile.mimeType,
                        newFile.hash,
                        newFile.uploadTime
                        );
    }
}
