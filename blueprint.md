
# Blueprint: Cimma - Immigration Community App

## Overview

Cimma is a mobile application designed to be a comprehensive resource and community hub for individuals navigating the immigration process. It provides access to reliable information, community-driven guidance, and tools to track application progress, fostering a supportive and connected environment for users.

## Style and Design

*   **Color Palette**:
    *   **Primary**: A deep, dark navy blue (approx `#19194d`) serving as the main background for key screens and branding elements.
    *   **Accent**: A bright, clean white for text and foreground elements on dark backgrounds.
    *   **Text**: A dark, almost black color for text on light backgrounds.
    *   **Buttons**: A solid, dark navy blue for primary calls-to-action.
*   **Typography**:
    *   **Headings/Brand**: A sophisticated serif font (e.g., Playfair Display) will be used for the "Cimma" brand name and major screen titles to convey authority and elegance.
    *   **Body/UI**: A clean, readable sans-serif font (e.g., Roboto, Open Sans) for all other text, ensuring clarity and accessibility.
*   **Iconography**:
    *   **Navigation**: Simple, filled icons for the bottom navigation bar (Home, FAQs, Community, Me).
    *   **UI**: Material Design icons will be used for actions like search, back, and write a post.
*   **Layout**:
    *   Clean, spacious, and mobile-responsive layouts.
    *   Card-based UI for posts, user profiles, and information snippets.
    *   Consistent use of padding and margins to create a visually balanced interface.

## Features & Implementation Plan

### Phase 1: Foundation & Onboarding (Completed)

*   **Project Setup**: Initialized a standard Flutter project.
*   **Dependencies**: Added `go_router` for navigation and `google_fonts` for typography.
*   **Theming**: Implemented the color and typography styles in a central `ThemeData` object.
*   **Splash Screen**: An initial screen displaying the "Cimma" logo on a dark background. Navigates automatically to the Onboarding screen.
*   **Onboarding Screen**: Displays the app's key features and value proposition with a "Let's go!" button.
*   **Login Screen**: Provides options for social sign-in (Google, Facebook, Microsoft). This is UI only for now.
*   **Welcome Screen**: After login, a screen to collect initial user information like province and immigration path via dropdowns.
*   **Core Navigation**: Set up a main screen with a `BottomNavigationBar` using `go_router`'s `ShellRoute` to manage the four primary sections:
    *   `/home`: The main community feed.
    *   `/faqs`: Frequently Asked Questions.
    *   `/community`: A list of community members.
    *   `/profile`: The user's personal profile and tracker.
*   **Placeholder Screens**: Created basic placeholder screens for Home, FAQs, Community, and Profile.

### Phase 2: Core Features (In Progress)

*   **Home Screen (UI Implemented)**: 
    *   A welcome message to the user.
    *   A search bar for finding content within the app.
    *   A grid of categories (Housing, Transport, Jobs, etc.) to allow users to navigate to specific topics.
*   **Profile Screen (UI Implemented)**:
    *   Display user information (avatar, name, nationality).
    *   Implement the "My Tracker" timeline UI to show the status of an application.
*   **FAQs Screen (UI Implemented)**: Implement a screen with expandable list items for frequently asked questions.
*   **Community Screen (UI Implemented)**: Display a searchable list of users.

### Phase 3: Community & Interaction

*   **Home Feed**:
    *   Display a scrollable list of posts from the community.
    *   Create a `PostCard` widget to display post content, author, image (if any), and engagement stats (likes/comments).
    *   Implement the "Write a Post!" button.
*   **New Post Screen**: Create a dedicated screen for composing and publishing a new post.
*   **Chat/Messaging**:
    *   Implement a user list for starting conversations.
    *   Create a chat screen for sending and receiving messages.

### Phase 4: Backend Integration (Firebase)

*   **Firebase Setup**: Integrate Firebase into the Flutter project.
*   **Authentication**: Implement social login using Firebase Authentication.
*   **Firestore**: Use Cloud Firestore to store and manage all application data, including users, posts, FAQs, and chat messages.
*   **Storage**: Use Cloud Storage for Firebase to handle image uploads for posts and user profiles.

