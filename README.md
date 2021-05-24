I create this repo after reading [MeesageKit](https://github.com/MessageKit/MessageKit/)'s [AvatarView](https://github.com/MessageKit/MessageKit/blob/81395b65757714b2703663cda9f4bdaf7bf66cbb/Sources/Views/AvatarView.swift). MessageKit proviedes a way to produce avatar view which can generate a default avatar using a provided string. Unfortunately, the provided avatar view is not robust enough for production environment(Mathematical mistakes, bad designs).

- Provide default font size based on avatar view's frame.
- Correct text rect calculation and minimum font size calculation.
- Using truncation when 'name' is too long to fit in avatar view.
- Using configuration to configure AvatarView(Similar to iOS 14's cell content configuration architecture).

![](https://cdn.jsdelivr.net/gh/JJAYCHEN1e/Image/img/A04/20210524235155.mov)
