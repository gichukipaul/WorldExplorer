# World Explorer
World Explorer is an iOS app designed with simplicity in mind. It uses UIKit for the UI and follows the MVVM architectural pattern, making it easy to maintain and add features. The app connects to a  `GraphQL` API using the `ApolloGraphql` client, enabling users to explore continents, countries, and detailed country information effortlessly. It offers a user-friendly experience, making learning about different countries worldwide fun.

<div style="display:flex; justify-content:center;">
  <img src="https://github.com/gichukipaul/WorldExplorer/blob/master/Simulator%20Screen1.png" alt="Light Mode Screenshot 1" width="220" style="margin-right: 25px;"/>

  <img src="https://github.com/gichukipaul/WorldExplorer/blob/master/Simulator%20Screen2.png" alt="Light Mode Screenshot 2" width="220" style="margin-right: 25px;"/>

  <img src="https://github.com/gichukipaul/WorldExplorer/blob/master/Simulator%20Screen3png.png" alt="Light Mode Screenshot 3" width="220" />
</div>
<br>

<div style="display:flex; justify-content:center;">
  <img src="https://github.com/gichukipaul/WorldExplorer/blob/master/Simulator%20Screen%20Shot1png.png" alt="Dark Mode Screenshot 1" width="220" style="margin-right: 25px;"/>

  <img src="https://github.com/gichukipaul/WorldExplorer/blob/master/Simulator%20Screen%20Shot2.png" alt="Dark Mode Screenshot 2" width="220" style="margin-right: 25px;"/>

<img src="https://github.com/gichukipaul/WorldExplorer/blob/master/Simulator%20Screen%20Shot1.png" alt="Dark Mode Screenshot 3" width="220" />
</div>

## Features
- View the continents and their information.
- Select a continent to see a list of countries within it.
- Select a country to view detailed information, including its capital, currency, and more.
- It supports both light and dark modes for accessibility and a visually appealing experience.
  
## Technologies Used
- GraphQL: A query language for APIs that enables efficient data retrieval.
- Apollo GraphQL: A powerful GraphQL client that simplifies network requests and data management.
- UIKit: Apple's native framework for building iOS apps, providing a robust set of UI components.
- MVVM (Model-View-ViewModel) Architecture: A design pattern that separates data management (ViewModel) from the UI (View) and the underlying data structures (Model).
  
## Getting Started
To run the app locally and explore the continents, countries, and their details, follow these steps:
1. Clone the repository: ` git clone https://github.com/gichukipaul/WorldExplorer.git `
2. Open the project in Xcode.
3. Install any necessary dependencies using Cocoapods or your preferred dependency manager.
4. Build and run the app on the iOS Simulator or a connected iOS device.
   
## Configuration
The app is configured to fetch data from the following GraphQL endpoint:
- API Endpoint: [https://countries.trevorblades.com/graphql](https://countries.trevorblades.com/graphql)

## Contributing
Contributions are welcome! If you have any suggestions, bug reports, and/or feature requests, please open an issue or submit a pull request.

## License
This project is licensed under the [MIT License](LICENSE).
