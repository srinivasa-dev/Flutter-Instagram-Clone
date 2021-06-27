class ProfileModel{
  final int id;
  final String username;
  final String firstName;
  final String lastName;
  final String profilePic;
  final List<PostModel> posts;

  ProfileModel(this.id, this.username, this.firstName, this.lastName, this.profilePic, this.posts);
}

List<ProfileModel> profileModel = [
  ProfileModel(1, 'the_cybernaut_', 'The', 'Cybernaut', 'https://lh3.googleusercontent.com/pw/ACtC-3fRELU5qnGtEsh9YhhyY9qbuz-SSieRCbo97YwkCpmRIgiGNKyuSdxkwINkqja-kKGfo2fn0nm16wVMj5jywoD35sZeb1P5Jz5gmpFXpUo5LcwZvfusad8pL7bDi_hZbooLNhOUZOPcfTyCeJ7yV5OutQ=s990-no', postModel),
  ProfileModel(2, 'eye_roller', 'Eye', 'Roller', 'https://media.istockphoto.com/vectors/portrait-of-a-shorthaired-girl-androgin-lookingwith-asidelongglance-vector-id1190626181?k=6&m=1190626181&s=612x612&w=0&h=gzVlHCmPHddOqCX3XCXspeR8eJRq228rORz3e7WKh0g=', postModel),
  ProfileModel(3, 'mind_freezer', 'Mind', 'Freezer', 'https://cdn.dribbble.com/users/2851002/screenshots/6459394/facerig2_still_2x.gif?compress=1&resize=400x300', postModel),
  ProfileModel(4, 'lol_fool', 'Lol', 'Fool', 'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/148403429/original/1ef7fd505317fc68e893d96cce3c0305b66d4f3c/design-2d-cartoon-character-face-for-any-age.jpg', postModel),
  ProfileModel(5, 'last_mind_stand', 'Last', 'Stand', 'https://ak.picdn.net/shutterstock/videos/1030689560/thumb/1.jpg', postModel),
  ProfileModel(6, 'instant_genius', 'Instant', 'Genius', 'https://image.freepik.com/free-vector/man-face-avatar-cartoon-character_18591-55465.jpg', postModel),
  ProfileModel(7, 'blue_bus', 'Blue', 'Bus', 'https://cdn.tutsplus.com/vector/uploads/2014/02/cartoonFace0.jpg', postModel),
  ProfileModel(8, 'little_everything', 'Little', 'Everything', 'https://fiverr-res.cloudinary.com/images/q_auto,f_auto/gigs3/160972750/original/c178542999571f754952fc975be511b491c7dd7c/turn-your-face-into-a-clean-2d-vector-graphic.png', postModel),
  ProfileModel(9, 'mad_boxer', 'Mad', 'Boxer', 'https://st4.depositphotos.com/11953928/38940/v/450/depositphotos_389409584-stock-illustration-boy-face-cartoon-character-isolated.jpg', postModel),
  ProfileModel(10, 'stilt_walker', 'Stilt', 'Walker', 'https://st3.depositphotos.com/5934840/33349/v/450/depositphotos_333499270-stock-illustration-cartoon-boy-face-smiling-colorful.jpg', postModel),
  ProfileModel(11, 'dev_ops_everything', 'Dev', 'Everything', 'https://cdn2.vectorstock.com/i/thumbs/20/76/man-avatar-profile-vector-21372076.jpg', postModel),
  ProfileModel(12, 'tiny_world', 'Tiny', 'World', 'https://cdn5.vectorstock.com/i/thumb-large/15/04/face-surprised-bald-bearded-man-male-emotional-vector-21451504.jpg', postModel),
  ProfileModel(13, 'your_dude', 'Your', 'Dude', 'https://dm0qx8t0i9gc9.cloudfront.net/thumbnails/image/rDtN98Qoishumwih/innocent-boy-face-smile_7k-OfM_thumb.jpg', postModel),
];


class PostModel{
  final int id;
  final String username;
  final String profilePic;
  final int likes;
  final String caption;
  final List<String> posts;

  PostModel(this.id, this.username, this.profilePic, this.likes, this.caption, this.posts,);
}

List<PostModel> postModel = [
  PostModel(
      1, 'the_cybernaut_', 'https://lh3.googleusercontent.com/pw/ACtC-3fRELU5qnGtEsh9YhhyY9qbuz-SSieRCbo97YwkCpmRIgiGNKyuSdxkwINkqja-kKGfo2fn0nm16wVMj5jywoD35sZeb1P5Jz5gmpFXpUo5LcwZvfusad8pL7bDi_hZbooLNhOUZOPcfTyCeJ7yV5OutQ=s990-no', 200, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam eget malesuada odio.', [
        'https://images.unsplash.com/photo-1588392382834-a891154bca4d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1955&q=80',
    ],
  ),
  PostModel(
      2, 'eye_roller', 'https://media.istockphoto.com/vectors/portrait-of-a-shorthaired-girl-androgin-lookingwith-asidelongglance-vector-id1190626181?k=6&m=1190626181&s=612x612&w=0&h=gzVlHCmPHddOqCX3XCXspeR8eJRq228rORz3e7WKh0g=', 345, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam eget malesuada odio.', [
        'https://images.unsplash.com/photo-1586348943529-beaae6c28db9?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1916&q=80',
    ],
  ),
  PostModel(
      3, 'mind_freezer', 'https://cdn.dribbble.com/users/2851002/screenshots/6459394/facerig2_still_2x.gif?compress=1&resize=400x300', 2400, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam eget malesuada odio.', [
        'https://images.unsplash.com/photo-1418065460487-3e41a6c84dc5?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80',
        'https://images.unsplash.com/photo-1447752875215-b2761acb3c5d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80',
        'https://images.unsplash.com/photo-1500534623283-312aade485b7?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80'
    ],
  ),
  PostModel(
      4, 'lol_fool', 'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/148403429/original/1ef7fd505317fc68e893d96cce3c0305b66d4f3c/design-2d-cartoon-character-face-for-any-age.jpg', 767, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam eget malesuada odio.', [
        'https://images.unsplash.com/photo-1534237710431-e2fc698436d0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1868&q=80',
    ],
  ),
  PostModel(
      5, 'last_mind_stand', 'https://ak.picdn.net/shutterstock/videos/1030689560/thumb/1.jpg', 280, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam eget malesuada odio.', [
        'https://images.unsplash.com/photo-1486406146926-c627a92ad1ab?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',
    ],
  ),
  PostModel(
      6, 'instant_genius', 'https://image.freepik.com/free-vector/man-face-avatar-cartoon-character_18591-55465.jpg', 898, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam eget malesuada odio.', [
        'https://images.unsplash.com/photo-1471039497385-b6d6ba609f9c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',
        'https://images.unsplash.com/photo-1461695008884-244cb4543d74?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1189&q=80',
        'https://images.unsplash.com/photo-1470723710355-95304d8aece4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80'
    ],
  ),
  PostModel(
      7, 'blue_bus', 'https://cdn.tutsplus.com/vector/uploads/2014/02/cartoonFace0.jpg', 213, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam eget malesuada odio.', [
        'https://images.unsplash.com/photo-1610031722278-e457cea8988b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1952&q=80',
    ],
  ),
  PostModel(
      8, 'little_everything', 'https://fiverr-res.cloudinary.com/images/q_auto,f_auto/gigs3/160972750/original/c178542999571f754952fc975be511b491c7dd7c/turn-your-face-into-a-clean-2d-vector-graphic.png', 656, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam eget malesuada odio.', [
        'https://images.unsplash.com/photo-1621969876427-526f1f93c5cb?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1100&q=80',
    ],
  ),
  PostModel(
      9, 'mad_boxer', 'https://st4.depositphotos.com/11953928/38940/v/450/depositphotos_389409584-stock-illustration-boy-face-cartoon-character-isolated.jpg', 2560, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam eget malesuada odio.', [
        'https://images.unsplash.com/photo-1621597455636-2f73c1968319?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80',
        'https://images.unsplash.com/photo-1621489396862-a0e7abbdeb17?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80',
        'https://images.unsplash.com/photo-1621123073224-c10821c4224e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=326&q=80'
    ],
  ),
  PostModel(
      10, 'stilt_walker', 'https://st3.depositphotos.com/5934840/33349/v/450/depositphotos_333499270-stock-illustration-cartoon-boy-face-smiling-colorful.jpg', 5655, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam eget malesuada odio.', [
        'https://images.unsplash.com/photo-1534423861386-85a16f5d13fd?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',
    ],
  ),
  PostModel(
      11, 'dev_ops_everything', 'https://cdn2.vectorstock.com/i/thumbs/20/76/man-avatar-profile-vector-21372076.jpg', 6700, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam eget malesuada odio.', [
        'https://images.unsplash.com/10/wii.jpg?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',
    ],
  ),
  PostModel(
      12, 'tiny_world', 'https://cdn5.vectorstock.com/i/thumb-large/15/04/face-surprised-bald-bearded-man-male-emotional-vector-21451504.jpg', 7653, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam eget malesuada odio.', [
        'https://images.unsplash.com/photo-1511512578047-dfb367046420?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80',
        'https://images.unsplash.com/photo-1599641499370-f4338ba82a04?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=375&q=80',
        'https://images.unsplash.com/photo-1593746333741-1ee3498b9c34?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80'
    ],
  ),
  PostModel(
      13, 'your_dude', 'https://dm0qx8t0i9gc9.cloudfront.net/thumbnails/image/rDtN98Qoishumwih/innocent-boy-face-smile_7k-OfM_thumb.jpg', 144, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam eget malesuada odio.', [
        'https://images.unsplash.com/photo-1499871435582-a1d4ff236842?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1050&q=80',
    ],
  ),
  PostModel(
      14, 'the_cybernaut_', 'https://lh3.googleusercontent.com/pw/ACtC-3fRELU5qnGtEsh9YhhyY9qbuz-SSieRCbo97YwkCpmRIgiGNKyuSdxkwINkqja-kKGfo2fn0nm16wVMj5jywoD35sZeb1P5Jz5gmpFXpUo5LcwZvfusad8pL7bDi_hZbooLNhOUZOPcfTyCeJ7yV5OutQ=s990-no', 2300, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam eget malesuada odio.', [
        'https://images.unsplash.com/photo-1604355288256-46e6bca6a70f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',
    ],
  ),
  PostModel(
      15, 'eye_roller', 'https://media.istockphoto.com/vectors/portrait-of-a-shorthaired-girl-androgin-lookingwith-asidelongglance-vector-id1190626181?k=6&m=1190626181&s=612x612&w=0&h=gzVlHCmPHddOqCX3XCXspeR8eJRq228rORz3e7WKh0g=', 666, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam eget malesuada odio.', [
        'https://images.unsplash.com/photo-1590523329673-7b10bd21e519?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80',
        'https://images.unsplash.com/photo-1533561052604-c3beb6d55b8d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1189&q=80',
        'https://images.unsplash.com/photo-1597060226032-0b89b69b54f4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=401&q=80'
    ],
  ),
  PostModel(
      16, 'mind_freezer', 'https://cdn.dribbble.com/users/2851002/screenshots/6459394/facerig2_still_2x.gif?compress=1&resize=400x300', 788, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam eget malesuada odio.', [
        'https://images.unsplash.com/photo-1605106702842-01a887a31122?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80',
    ],
  ),
  PostModel(
      17, 'lol_fool', 'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/148403429/original/1ef7fd505317fc68e893d96cce3c0305b66d4f3c/design-2d-cartoon-character-face-for-any-age.jpg', 222, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam eget malesuada odio.', [
        'https://images.unsplash.com/photo-1485736982040-28ae1d52881d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80',
    ],
  ),
  PostModel(
      18, 'last_mind_stand', 'https://ak.picdn.net/shutterstock/videos/1030689560/thumb/1.jpg', 666, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam eget malesuada odio.', [
        'https://images.unsplash.com/photo-1545489379-83f2d972fd20?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=967&q=80',
    ],
  ),
  PostModel(
      19, 'instant_genius', 'https://image.freepik.com/free-vector/man-face-avatar-cartoon-character_18591-55465.jpg', 134, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam eget malesuada odio.', [
        'https://images.unsplash.com/photo-1561015477-1c907845c96b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=378&q=80',
    ],
  ),
  PostModel(
      20, 'blue_bus', 'https://cdn.tutsplus.com/vector/uploads/2014/02/cartoonFace0.jpg', 964, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam eget malesuada odio.', [
        'https://images.unsplash.com/photo-1548853391-64bad2a3596e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',
    ],
  ),
];