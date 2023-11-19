# AdultContentAccess Smart Contract

## Overview
The AdultContentAccess smart contract is a decentralized application (DApp) built on the Ethereum blockchain, designed to manage access to adult content based on age eligibility. The contract incorporates robust age verification mechanisms to ensure that users are at least 21 years old before granting access to adult-oriented materials.

## Features
1. **watchAdultContent:** This function allows users to access adult content after undergoing a thorough age verification process. If eligible, the user gains access, and the contract records the timestamp of their access.

2. **ageEligibilityCheck:** This auxiliary function verifies the age eligibility of users. It returns `true` if the user's age is 21 or older. If the age is less than 21, the function triggers a revert with the detailed message "Not eligible to access adult content."

3. **accessStatusCheck:** Users can utilize this function to check their access status. If they have access, the function returns `true`. Otherwise, it triggers a revert with the message "You don't have access to watch adult content."

## Usage
1. **Deployment:** Deploy the contract on the into the local Environment.
2. **Interaction:** Interact with the contract using Ethereum-compatible tool such as Remix.
3. **Testing:** Employ test cases to thoroughly evaluate the contract's behavior, including age eligibility checks and access status verifications.

## Getting Started
Ensure you have a functional Ethereum development environment. Common tools like Remix for online development or Truffle 

### Deployment
1. Deploy the contract using a development environment or a blockchain explorer.
2. Utilize a web-based frontend or a custom application to interact with the deployed contract.

### Testing
Create comprehensive test scenarios to verify the contract's functionality under various conditions, including age eligibility checks and access status validations.

## Contributors
- Vignesh V

- s82167500@gmail.com

## License
This smart contract is released under the MIT License. See the [LICENSE](LICENSE) file for detailed information.
