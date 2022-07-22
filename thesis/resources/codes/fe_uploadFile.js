const uploadFiles = async () => {
  try {
    console.log('Encrypting & Uploading file to IPFS...')
    setIsUploading(prevState => TRUE)

    const _options = { from: account, gasLimit: 3000000 }
    const ipfs = getIpfs()
    // fileBuffer = ArrayBuffer
    const encryptedFileBufferWordArray = encryptAES256(fileBuffer, passphrase)

    const response = await ipfs.add(Buffer.from(encryptedFileBufferWordArray))

    console.log('response:', response.path)
    const isFilePresent = await contract.isFilePresent(response.path, _options)
    console.log(isFilePresent)
    if (isFilePresent) {
      console.log('File already exists')
      setIsUploading(prevState => FALSE)
      return
    }

    setSize(prevState => response.size)
    setHash(prevState => response.path)

    setIsUploading(prevState => FALSE)
    setIsReadyForTransaction(prevState => TRUE)
  } catch (error) {
    console.log('Cannot upload file to IPFS:', error.message)
    // TODO: show error message
    setIsUploading(prevState => UNSET)
    setIsReadyForTransaction(prevState => UNSET)
  }
}
