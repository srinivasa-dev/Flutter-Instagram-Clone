class StoryModel{
  final int id;
  final String username;
  final String profilePic;
  final bool active;
  final List<String> storyPics;

  StoryModel(this.id, this.username, this.profilePic, this.active, this.storyPics);
}


List<StoryModel> storyModel = [
  StoryModel(1, 'the_cybernaut_', 'https://lh3.googleusercontent.com/pw/ACtC-3fRELU5qnGtEsh9YhhyY9qbuz-SSieRCbo97YwkCpmRIgiGNKyuSdxkwINkqja-kKGfo2fn0nm16wVMj5jywoD35sZeb1P5Jz5gmpFXpUo5LcwZvfusad8pL7bDi_hZbooLNhOUZOPcfTyCeJ7yV5OutQ=s990-no', false, [
    'https://images.unsplash.com/photo-1622221611544-ae67d32d67cd?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80',
    'https://images.unsplash.com/photo-1622182126375-fb50f349dea2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80',
    'https://images.unsplash.com/photo-1622197451409-65d9955b9028?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=343&q=80'
  ]),
  StoryModel(2, 'eye_roller', 'https://media.istockphoto.com/vectors/portrait-of-a-shorthaired-girl-androgin-lookingwith-asidelongglance-vector-id1190626181?k=6&m=1190626181&s=612x612&w=0&h=gzVlHCmPHddOqCX3XCXspeR8eJRq228rORz3e7WKh0g=', true, [
    'https://images.unsplash.com/photo-1622221611544-ae67d32d67cd?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80',
    'https://images.unsplash.com/photo-1622182126375-fb50f349dea2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80',
    'https://images.unsplash.com/photo-1622197451409-65d9955b9028?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=343&q=80'
  ]),
  StoryModel(3, 'mind_freezer', 'https://cdn.dribbble.com/users/2851002/screenshots/6459394/facerig2_still_2x.gif?compress=1&resize=400x300', true, [
    'https://images.unsplash.com/photo-1622221611544-ae67d32d67cd?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80',
  ]),
  StoryModel(4, 'lol_fool', 'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/148403429/original/1ef7fd505317fc68e893d96cce3c0305b66d4f3c/design-2d-cartoon-character-face-for-any-age.jpg', true, [
    'https://images.unsplash.com/photo-1622221611544-ae67d32d67cd?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80',
    'https://images.unsplash.com/photo-1622197451409-65d9955b9028?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=343&q=80'
  ]),
  StoryModel(5, 'last_mind_stand', 'https://ak.picdn.net/shutterstock/videos/1030689560/thumb/1.jpg', true, [
    'https://images.unsplash.com/photo-1622197451409-65d9955b9028?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=343&q=80'
    'https://images.unsplash.com/photo-1622221611544-ae67d32d67cd?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80',
    'https://images.unsplash.com/photo-1622182126375-fb50f349dea2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80',
  ]),
  StoryModel(6, 'instant_genius', 'https://image.freepik.com/free-vector/man-face-avatar-cartoon-character_18591-55465.jpg', true, [
    'https://images.unsplash.com/photo-1622182126375-fb50f349dea2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80',
    'https://images.unsplash.com/photo-1622197451409-65d9955b9028?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=343&q=80'
  ]),
  StoryModel(7, 'blue_bus', 'https://cdn.tutsplus.com/vector/uploads/2014/02/cartoonFace0.jpg', true, [
    'https://images.unsplash.com/photo-1622221611544-ae67d32d67cd?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80',
    'https://images.unsplash.com/photo-1622197451409-65d9955b9028?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=343&q=80',
    'https://images.unsplash.com/photo-1622182126375-fb50f349dea2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80',
  ]),
  StoryModel(8, 'little_everything', 'https://fiverr-res.cloudinary.com/images/q_auto,f_auto/gigs3/160972750/original/c178542999571f754952fc975be511b491c7dd7c/turn-your-face-into-a-clean-2d-vector-graphic.png', true, [
    'https://images.unsplash.com/photo-1622221611544-ae67d32d67cd?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80',
    'https://images.unsplash.com/photo-1622182126375-fb50f349dea2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80',
    'https://images.unsplash.com/photo-1622197451409-65d9955b9028?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=343&q=80'
  ]),
  StoryModel(9, 'mad_boxer', 'https://st4.depositphotos.com/11953928/38940/v/450/depositphotos_389409584-stock-illustration-boy-face-cartoon-character-isolated.jpg', true, [
    'https://images.unsplash.com/photo-1622182126375-fb50f349dea2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80',
    'https://images.unsplash.com/photo-1622197451409-65d9955b9028?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=343&q=80'
  ]),
  StoryModel(10, 'stilt_walker', 'https://st3.depositphotos.com/5934840/33349/v/450/depositphotos_333499270-stock-illustration-cartoon-boy-face-smiling-colorful.jpg', true, [
    'https://images.unsplash.com/photo-1622221611544-ae67d32d67cd?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80',
    'https://images.unsplash.com/photo-1622182126375-fb50f349dea2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80',
  ]),
  StoryModel(11, 'dev_ops_everything', 'https://cdn2.vectorstock.com/i/thumbs/20/76/man-avatar-profile-vector-21372076.jpg', true, [
    'https://images.unsplash.com/photo-1622221611544-ae67d32d67cd?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80',
    'https://images.unsplash.com/photo-1622182126375-fb50f349dea2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80',
    'https://images.unsplash.com/photo-1622197451409-65d9955b9028?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=343&q=80'
  ]),
  StoryModel(12, 'tiny_world', 'https://cdn5.vectorstock.com/i/thumb-large/15/04/face-surprised-bald-bearded-man-male-emotional-vector-21451504.jpg', false, [
    'https://images.unsplash.com/photo-1622221611544-ae67d32d67cd?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80',
    'https://images.unsplash.com/photo-1622182126375-fb50f349dea2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80',
    'https://images.unsplash.com/photo-1622197451409-65d9955b9028?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=343&q=80'
  ]),
  StoryModel(13, 'your_dude', 'https://dm0qx8t0i9gc9.cloudfront.net/thumbnails/image/rDtN98Qoishumwih/innocent-boy-face-smile_7k-OfM_thumb.jpg', false, [
    'https://images.unsplash.com/photo-1622197451409-65d9955b9028?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=343&q=80'
  ]),
];