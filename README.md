# CryptoApp
 

# Application Overview
The application consists of two main tabs:

 - Home Tab
   - Displays the user's account balance and a list of the most frequently viewed cryptocurrencies.
 - Crypto List Tab
   - Displays a paginated list of cryptocurrencies.

When the user clicks on a cryptocurrency, they are redirected to a new screen showing detailed statistics, including a chart with 1-day, 7-day, and 1-month intervals. Hovering over the chart displays the exact price of the cryptocurrency at a specific time.

# Key Features:
- Dark and Light Themes:
The application supports both light and dark themes that adapt to the system theme of the device.

- Account Balance Management:
The user's account balance is displayed on the home screen. The Hydrated_bloc package is used to save the account state locally on the phone.

- Currency Switcher:
In the top right corner of the main screens, users can switch the app's currency between three options: USD, EUR, and PLN.

- Account Balance Adjustment:
Two buttons on the main screen allow the user to adjust the account balance. Each button adds or subtracts $100 from the balance. If the currency is changed, $100 is converted into the new currency when added or subtracted.

- Animations:
Animations have been implemented throughout the app to enhance the user experience.

- Custom Icons and Splash Screen:
The app includes custom application icons and a splash screen, which adapt to the selected theme.

- Custom Error Handling:
The application features custom error handling. Users are kept informed of the app's status through proper management of the bloc.

- API Integration:
The app is connected to the CoinGecko API using the dio package, which is paired with a custom DioFactory class. This class is responsible for managing API requests and responses.

- Comments and Documentation:
The code includes essential comments to help future developers navigate and understand the codebase.

- Basic Testing:
Basic tests have been written for four different API endpoints used by the application.

- Optimization:
To optimize the app, the cached_network_image library is used to cache images, reducing data transfer.

- Charts:
The fl_chart library is utilized to provide an intuitive and user-friendly visualization of data for the user.

- Environment Variables:
The flutter_dotenv package is used for injecting API keys, ensuring that sensitive data is not stored directly in the repository.

# Clean Architecture
The application follows Clean Architecture principles to ensure clarity and maintainability.

# Tech Stack
The tech stack used in this project includes:

- State Management: flutter_bloc, hydrated_bloc, freezed
- Routing: go_router
- API and Data Management: dio, dartz
- App: flutter_launcher_icons, flutter_native_splash
- Testing: mockito
