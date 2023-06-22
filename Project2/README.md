# E-Commerce App

This is a Flutter e-commerce project that allows users to browse and purchase products. The app includes features like user authentication, product listings, shopping cart functionality, and order placement. It is connected to Firebase for user management and data storage.

## Screens

The app consists of the following screens:

1. **Login**: Allows users to log in to their accounts using email and password. It also provides an option for Google Sign-In.

2. **Signup**: Allows new users to create an account by providing their email, password, and other required information.

3. **Dashboard**: The main screen of the app after successful login. It displays various widgets showcasing ads and products.

4. **Product Details**: Shows detailed information about a specific product, including its name, description, price, and any other relevant details.

5. **Cart**: Displays the products added by the user for purchase. Users can review the items, modify quantities, and proceed to checkout.

6. **Order**: Allows users to review their order details, enter shipping information, and confirm the purchase.

7. **Categories**: Provides a categorized view of the available products. Users can navigate to specific categories and explore the related products.

8. **Profile**: Displays user information, such as name, email, and profile picture. Users can update their details and manage their account settings.

## Getting Started

To run the Flutter project locally, follow these steps:

1. Install Flutter: [Flutter Installation Guide](https://flutter.dev/docs/get-started/install)

2. Clone this repository: git clone <repository_url>

3. Navigate to the project directory: cd e-commerce-app

4. Install dependencies: flutter pub get

5. Connect Firebase:
- Create a new Firebase project in the Firebase console.
- Enable Authentication and Firestore services.
- Download the Firebase configuration file (GoogleService-Info.plist for iOS, google-services.json for Android) and replace the existing file in the project's `android/app` or `ios/Runner` directory accordingly.

6. Run the app: flutter run

## Limitations

Currently, the app has the following limitations:

- The app supports only email and password-based authentication and Google Sign-In. Additional authentication methods can be implemented in future work.
- The app is connected to Firebase for user management and data storage. If you want to use your own Firebase project, you need to set up Firebase correctly and update the Firebase configuration files in the project.
- The app is a basic implementation of an e-commerce platform and may lack certain advanced features like payment integration, search functionality, and user reviews. These can be considered as potential future enhancements.

## Future Work

Some possible improvements and future enhancements for the app include:

- Integration with a payment gateway to enable secure online payments.
- Implementing advanced search functionality to allow users to easily find products.
- Adding user review and rating features to enhance user engagement.
- Incorporating push notifications to keep users updated about their orders and new products.
- Implementing a favorites or wishlist feature for users to save products for later.
- Optimizing the app's performance and user interface to provide a seamless and intuitive shopping experience.

Feel free to contribute to this project by submitting pull requests or suggesting additional features.



