# Hierarchy Table App

This app is a simple app that displays a hierarchy table according to the input data. The input data is a json file that contains the nodes of the hierarchy. Each node has data with attributes and children.

## What could be improved?

### Horizontal scroll / sticky headers

- Currently the table can overflow horizontally
- This would require a scrollcontroller which would sync the horizontal scroll of the rows and the header
- Sticky headers would mean using sliver setup instead of just a ListView builder

### Responsive design

- Currently the table is not responsive
- It would be good to have a responsive design that would adapt to the screen size, eg.. instead of rows switch to list on mobile

### Immutable collections

- Currently the collections inside freezed classes are not immutable
- This is a potential issue as it can lead to unexpected behavior
- This was done as a workaround to not have reconstruct the whole tree when a node is deleted
- Inside a real app, where we would fetch a tree from a server, we would not have this issue as we would not modify the collections in place

### Unit tests

- Currently there are not any, it would be good to have some tests mainly around the bloc logic.

### Better column width calculation

- Currently the column width is calculated based on the text length of the first record
- Might be improved by using a more advanced algorithm, such as taking a sample of records and calculating the average text length

### Use of [`two_dimensional_scrollables`](https://pub.dev/packages/two_dimensional_scrollables) package

- Might help in certain aspects, but from my trying it was less performant
- It had problems with efficient deletion of rows and the code was less compact
- Advantage of this package is that it abstracts the horizontal and vertical scroll and also provides animations
- There is an experimental brach `feat/two-dimensional-scrollables` that implements this package but not all features are there, just something I wanted to try

### Localization

- Currently there is no localization
- It would be good to have some basic localization
- However, the app does not have much strings that need translating and it was not a priority

### Error handling

- Currently there is only basic error handleling with no custom exceptions or error messages
- If app would grow, it would be definitely good to have more advanced error handling
