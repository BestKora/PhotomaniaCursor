##Cursor AI in iOS development. PhotomaniaCursor app "Photos from Flickr.com"


## Content
- [Demo](#demo)
- [App Features](#app-features)
- [Technologies](#technologies)


## Demo

![til](https://github.com/BestKora/PhotomaniaCursor/blob/a63e95f853f79cbcf5d24af5b14554a3e6d711c6/PhotomaniaCursor/PhotomaniaCursorDemo.gif)

## App Features

* Browse images from flickr with specific term
* Loading indicator while downloading image
*
- The list of photos is retrieved using an API from Flickr like:
https://api.flickr.com/services/feeds/photos_public.gne?format=json&nojsoncallback=1&tags=porcupine
(replace the word "porcupine" with what the user entered).
- The search results should be updated after each keystroke or search string change.
- When performing a search, a progress indicator is shown without blocking the Ui.
- When clicking on an image, a View should be shown with detailed information about the photo:
- The photo itself
- A Text element displaying the title
- A Text element displaying the author
- A Text element displaying a formatted version of the publication date


## Technologies

* MVVM design pattern with binding
* SwiftUI
* External API (Flickr)
* async / await
