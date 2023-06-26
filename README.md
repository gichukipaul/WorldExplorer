# WorldExplorer

WorldExplorer is an iOS app built with UIKit and MVVM architecture, integrated with GraphQL using ApolloGraphql. It allows users to explore continents, countries, and country details fetched from the Countries GraphQL API. The app provides a seamless and intuitive user experience for discovering and learning about different countries worldwide.

<div style="display:flex; justify-content:center;">
<img src="https://github.com/gichukipaul/WorldExplorer/blob/master/Simulator%20Screen%20Shot1png.png" alt="Dark Mode Screenshot 1" width="150" style="margin-right: 10px;"/>

<img src="https://github.com/gichukipaul/WorldExplorer/blob/master/Simulator%20Screen%20Shot2.png" alt="Dark Mode Screenshot 2" width="150" style="margin-right: 10px;"/>

<img src="https://github.com/gichukipaul/WorldExplorer/blob/master/Simulator%20Screen%20Shot1.png" alt="Dark Mode Screenshot 3" width="150" />
</div>
<br>
<div style="display:flex; justify-content:center;">
<img src="https://github.com/gichukipaul/WorldExplorer/blob/master/Simulator%20Screen1.png" alt="Light Mode Screenshot 1" width="150" style="margin-right: 10px;"/>

<img src="https://github.com/gichukipaul/WorldExplorer/blob/master/Simulator%20Screen2.png" alt="Light Mode Screenshot 2" width="150" style="margin-right: 10px;"/>

<img src="https://github.com/gichukipaul/WorldExplorer/blob/master/Simulator%20Screen3png.png" alt="Light Mode Screenshot 3" width="150" />
</div>

## Features

- View a list of continents and their basic information.
- Select a continent to see a list of countries within that continent.
- Select a country to view detailed information, including its capital, currency, and more.
- Supports both light and dark modes for a visually appealing experience.

## Technologies Used

- GraphQL: A query language for APIs that enables efficient data retrieval.
- Apollo GraphQL: A powerful GraphQL client that simplifies network requests and data management.
- UIKit: Apple's native framework for building iOS apps, providing a robust set of UI components.
- MVVM (Model-View-ViewModel) Architecture: A design pattern that separates data management (ViewModel) from the UI (View) and the underlying data structures (Model).

## Getting Started

To run the app locally and explore the continents, countries, and their details, follow these steps:

1. Clone the repository: `git clone https://github.com/gichukipaul/WorldExplorer.git`
2. Open the project in Xcode.
3. Install any necessary dependencies using Cocoapods or your preferred dependency manager.
4. Build and run the app on the iOS Simulator or a connected device.

## Configuration

The app is configured to fetch data from the following GraphQL endpoint:

- API Endpoint: [https://countries.trevorblades.com/graphql](https://countries.trevorblades.com/graphql)

You can modify the endpoint in the source code if needed.

## Contributing

Contributions are welcome! If you have any suggestions, bug reports, or feature requests, please open an issue or submit a pull request.

## License

This project is licensed under the [MIT License](LICENSE).
