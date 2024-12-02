## Cursor AI in iOS development. PhotomaniaCursor app "Photos from Flickr.com"


## Content
- [Task for Cursor AI](#task)
- [Demo](#demo)
- [App Features](#app-features)
- [Technologies](#technologies)

## Task for Cursor AI

![til](https://github.com/BestKora/PhotomaniaCursor/blob/a6ad270f2a8b50b1bcb38e8c0e9a6b37e8ba6afb/PhotomaniaCursor/PhotomaniaCursorTask.png)

## Demo

![til](https://github.com/BestKora/PhotomaniaCursor/blob/a63e95f853f79cbcf5d24af5b14554a3e6d711c6/PhotomaniaCursor/PhotomaniaCursorDemo.gif)

## App Features

- The list of photos is retrieved using an API from Flickr like:
https://api.flickr.com/services/feeds/photos_public.gne?format=json&nojsoncallback=1&tags=porcupine
(replace the word "porcupine" with what the user entered).
- The search results should be updated after each keystroke or search string change.
- When performing a search, a progress indicator is shown without blocking the Ui.
- When clicking on an image, a View should be shown with detailed information about the photo:
  1. The photo itself
  2. A Text element displaying the title
  3. A Text element displaying the author
  4. A Text element displaying a formatted version of the publication date


## Technologies

* MVVM design pattern 
* SwiftUI
* Combine
* async / await
