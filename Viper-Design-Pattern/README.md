# VIPER Design Pattern

VIPER is an iOS architecture that stands for View - Interactor - Presentor - Entity - Router. The code example shows a use case of VIPER in a simple API fetching app.

## Clone

```
https://github.com/igibliss00/VIPER-Design-Pattern.git
```

## Diagram

![](https://github.com/igibliss00/VIPER-Design-Pattern/blob/main/1.png)

## View

1. View is responsible for the user interface.
2. Displays what is provided by the presenter. Replays the data back to the presenter
3. A view controller will be part of this architecture. 
4. Needs a reference in the view to the presenter.
5. Passive and never asks the presenter for data.

## Interactor

1. Interactor's sole job is to be the mediator for the presenter so it interacts with data or the network and brings the result back to the presenter. And the presenter will ultimately do something with the result.
2.  Should only have a reference to the presenter.
3.  Since it's a PONSO (Plain Old NSObject) that primarily contains logic, it's easy to develop using TDD.

## Presenter

1. An object to glue everything together.
2. It has a reference to the view, router, and the interactor.
3. PONSO that mainly consists of logic that gathers input from user interactions to update the UI and send requests to the interactor.
4. Also receives data from the interactor, which is then reflected on the UI.

## Entity

1. Essentially a model.
2. Used by the interactor.
3. The interactor never passes entities to the presenter.
4. Usually PONSO. In case of Core Data, the managed objects should remain behind the data layer. The interactor should not work with `NSManagedObjects`.

## Router

1. If there are different modules in your application, a router can navigate within/to those modules using a navigation logic.
2. No reference to anything.
3. It's an entry pont to modules.  This is where the VIPER architecture starts

## Module

1. A module is a screen or a collection of screens to represent a feature. So instead of an architecture that groups the types of objects together such as views, models, and controllers, VIPER groups its content according to the purpose of the objects.
2. Multiple modules could share a common application logic layer of entities, interactors, and managers.
3. Easier to extend to multiple form factors using modules, i.e. for iPad, iPhone, Mac.

## Additional Note

1. Using the Storyboard's segue is difficult to implement with VIPER since it's difficult to keep the separation between the screens.
2. Reduces the size of the view controller to make a view controller to do exactly what it's meant to do: to control views only.
3. Easier to test since the business logic and UI are separated.

