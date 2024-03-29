import '../model/chat.dart';

class Data {
  static final chats = <Chat>[
    Chat(
      urlAvatar:
          'https://images.unsplash.com/photo-1527980965255-d3b416303d12?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
      username: 'Max',
      message: 'Let\'s go for a run.',
      isFavourite: false,
    ),
    Chat(
      urlAvatar:
          'https://images.unsplash.com/photo-1569913486515-b74bf7751574?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=635&q=80',
      username: 'Caisy',
      message: 'Yesterday was the best day of my life',
      isFavourite: false,
    ),
    Chat(
      urlAvatar:
          'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
      username: 'Ash',
      message: 'Hey whatsup?',
      isFavourite: false,
    ),
    Chat(
      urlAvatar:
          'https://images.unsplash.com/photo-1588979355313-6711a095465f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=621&q=80',
      username: 'Bex',
      message: 'Good morning!',
      isFavourite: false,
    ),
    Chat(
      urlAvatar:
          'https://images.unsplash.com/photo-1507842217343-583bb7270b66?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1153&q=80',
      username: 'Book Club',
      message: 'What\'s the next book to read?',
      isFavourite: false,
    ),
  ];
}
