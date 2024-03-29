## News-X

#### Description
News-X is a mobile application that has been developed using the powerful combination of Dart programming language and Flutter Software Development Kit (SDK). The application harnesses the capabilities of NewsAPI, a popular news aggregator, to offer users a smooth and intuitive news consumption experience. News-X features a user-friendly interface, making it easy for users to browse and access news articles from a wide range of sources, including top news agencies and publications. With News-X, users can stay up-to-date with the latest headlines, breaking news, and trending stories from around the world, all from the convenience of their mobile device.

#### Overview
News-X aims to revolutionize how communities engage with news stories by offering a dynamic mobile application. The app features three main viewing pages: the homepage, article viewer, and category-based news viewer, ensuring users can swiftly access global events.

Built on Flutter SDK and powered by Dart, News-X is compatible with both Android and iOS platforms. Integration with Google Firebase enhances the user experience with analytics and push notification services.

By leveraging frameworks, libraries, and APIs within the Android structure, News-X delivers a superior user experience at a fraction of the cost of native news apps. It addresses the challenges faced by local newspapers with limited resources by providing a robust platform supporting various functionalities.

The application's strategic design ensures compatibility across a diverse range of mobile devices, catering to a large and varied user base. News-X's mission is to offer a comprehensive yet accessible tool for users to stay informed about global stories, regardless of their choice of mobile device.

**Software Tools**
- SDK: Flutter 2.5.0-6.0
- Programming Language: Dart 2.14.0
- IDE: Android Studio 2020.3.1

# Relationship schema
```OFFICER (id, Name, sector_no) RESERVOIR (id, Name, Water_level)
BILL (id, customer_id, Payments_Due, due_Date)
LOCALITY (sector_no, Area_Name, Water_Supply_Date, officer_id,
reservoir_id)
CUSTOMER (id, Name, Address, sector_no, officer_id, reservoir_id,
no_of_connection)
```
