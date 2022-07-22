const getLibrary = () => {
  // A Web3Provider wraps a standard Web3 provider, which is
  // what MetaMask injects as window.ethereum into each page
  if (typeof window.ethereum !== 'undefined') {
    // The "any" network will allow spontaneous network changes
    const provider = new ethers.providers.Web3Provider(window.ethereum, 'any')

    provider.on('network', (newNetwork, oldNetwork) => {
      // When a Provider makes its initial connection, it emits a "network"
      // event with a null oldNetwork along with the newNetwork. So, if the
      // oldNetwork exists, it represents a changing network
      if (oldNetwork) {
        window.location.reload()
      }
    })
    return provider
  } else if (typeof window.web3 !== 'undefined') {
    const provider = new ethers.providers.Web3Provider(window.web3.currentProvider, 'any')
    provider.on('network', (newNetwork, oldNetwork) => {
      // When a Provider makes its initial connection, it emits a "network"
      // event with a null oldNetwork along with the newNetwork. So, if the
      // oldNetwork exists, it represents a changing network
      if (oldNetwork) {
        window.location.reload()
      }
    })
    return provider
  } else {
    return null
  }
}

const Initialize = async () => {
  // The MetaMask plugin also allows signing transactions to
  // send ether and pay to change state within the blockchain.
  // For this, you need the account signer..
  const provider = getLibrary()
  await provider.send('eth_requestAccounts', [])

  const _signer = provider.getSigner()
  const _account = await _signer.getAddress()
  const _balance = await provider.getBalance(_account)
    .then(_balance => ethers.utils.formatEther(_balance))

  setSigner(prevState => _signer)
  setAccount(prevState => _account)
  setBalance(prevState => _balance)

  const _contract = new ethers.Contract(contractAddress, Storage.abi, provider).connect(_signer)
  setContract(prevState => _contract)

  const _chainId = await provider.getNetwork()
  setChainId(prevState => _chainId.chainId)

  const _blockNumber = await provider.getBlockNumber()
  setBlockNumber(prevState => _blockNumber)
}
