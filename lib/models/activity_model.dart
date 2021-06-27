class ActivityModel{
  final List<ActivityModelThisMonth> thisMonth;
  final List<ActivityModelThisWeek> thisWeek;

  ActivityModel(this.thisMonth, this.thisWeek);
}

ActivityModel activityModel = ActivityModel(
    [
      ActivityModelThisMonth('eye_roller', 'is following you now', 'https://media.istockphoto.com/vectors/portrait-of-a-shorthaired-girl-androgin-lookingwith-asidelongglance-vector-id1190626181?k=6&m=1190626181&s=612x612&w=0&h=gzVlHCmPHddOqCX3XCXspeR8eJRq228rORz3e7WKh0g=', true, false, '', '1d'),
      ActivityModelThisMonth('mind_freezer', 'who you might know, is on instagram', 'https://cdn.dribbble.com/users/2851002/screenshots/6459394/facerig2_still_2x.gif?compress=1&resize=400x300', true, false, '', '6d'),
    ],
    [
      ActivityModelThisWeek('lol_fool', 'commented: 😲🔥🔥', 'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/148403429/original/1ef7fd505317fc68e893d96cce3c0305b66d4f3c/design-2d-cartoon-character-face-for-any-age.jpg', false, true, 'https://images.unsplash.com/photo-1588392382834-a891154bca4d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1955&q=80', '2d'),
      ActivityModelThisWeek('last_mind_stand', 'liked your post.', 'https://ak.picdn.net/shutterstock/videos/1030689560/thumb/1.jpg', false, false, 'https://images.unsplash.com/photo-1588392382834-a891154bca4d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1955&q=80', '2d'),
      ActivityModelThisWeek('instant_genius', 'commented: Woah so Cool bruh!', 'https://image.freepik.com/free-vector/man-face-avatar-cartoon-character_18591-55465.jpg', false, true, 'https://images.unsplash.com/photo-1588392382834-a891154bca4d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1955&q=80', '3d'),
      ActivityModelThisWeek('blue_bus', 'liked your post.', 'https://cdn.tutsplus.com/vector/uploads/2014/02/cartoonFace0.jpg', false, false, 'https://images.unsplash.com/photo-1588392382834-a891154bca4d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1955&q=80', '5d'),
      ActivityModelThisWeek('little_everything', 'liked your post.', 'https://fiverr-res.cloudinary.com/images/q_auto,f_auto/gigs3/160972750/original/c178542999571f754952fc975be511b491c7dd7c/turn-your-face-into-a-clean-2d-vector-graphic.png', false, false, 'https://images.unsplash.com/photo-1588392382834-a891154bca4d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1955&q=80', '1d'),
      ActivityModelThisWeek('mad_boxer', 'commented: Srinivas you\'re going to ba an amazing photographer', 'https://st4.depositphotos.com/11953928/38940/v/450/depositphotos_389409584-stock-illustration-boy-face-cartoon-character-isolated.jpg', false, true, 'https://images.unsplash.com/photo-1588392382834-a891154bca4d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1955&q=80', '3d'),
      ActivityModelThisWeek('stilt_walker', 'commented: 💯💯💯', 'https://st3.depositphotos.com/5934840/33349/v/450/depositphotos_333499270-stock-illustration-cartoon-boy-face-smiling-colorful.jpg', false, true, 'https://images.unsplash.com/photo-1588392382834-a891154bca4d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1955&q=80', '3d'),
      ActivityModelThisWeek('dev_ops_everything', 'liked your post.', 'https://cdn2.vectorstock.com/i/thumbs/20/76/man-avatar-profile-vector-21372076.jpg', false, false, 'https://images.unsplash.com/photo-1588392382834-a891154bca4d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1955&q=80', '3d'),
      ActivityModelThisWeek('tiny_world', 'liked your post.', 'https://cdn5.vectorstock.com/i/thumb-large/15/04/face-surprised-bald-bearded-man-male-emotional-vector-21451504.jpg', false, false, 'https://images.unsplash.com/photo-1588392382834-a891154bca4d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1955&q=80', '1d'),
    ]
);

class ActivityModelThisMonth{
  final String username;
  final String wording;
  final String profilePic;
  final bool isFollow;
  final bool isComment;
  final String yourPost;
  final String days;

  ActivityModelThisMonth(this.username, this.wording, this.profilePic, this.isFollow, this.isComment, this.yourPost, this.days);
}

class ActivityModelThisWeek{
  final String username;
  final String wording;
  final String profilePic;
  final bool isFollow;
  final bool isComment;
  final String yourPost;
  final String days;

  ActivityModelThisWeek(this.username, this.wording, this.profilePic, this.isFollow, this.isComment, this.yourPost, this.days);
}
