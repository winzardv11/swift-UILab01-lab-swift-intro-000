# Light Bulbs

![TimTheCook](http://i.imgur.com/jSa4ACP.png?1)

> Let your joy be in your journey - not in some distant goal. -[Tim Cook](https://en.wikipedia.org/wiki/Tim_Cook)

## Overview 

In this lab, you'll make an application where you can change the color of a light bulb. 

## Light Bulbs

As you've been working through these lessons, a few light bulbs have no doubt turned on in your head as you've connected the dots of Swift programming. To celebrate, why not make an application where you can turn a light bulb a different color?

Specifically, your task is to create an app with this UI:

![LightBulb user interface](http://i.imgur.com/zydvVvj.png)

Pretty simple, right? Can you tell what user interface elements it consists of?

There are only two user interface elements in this application:

1. A view that draws a colored light bulb.
2. A segmented control that allows the user to select a color.

When the user selects a different color, the light bulb's hue should change. Easy, right? Here's what it looks like when the user presses **Green**:

![LightBulb: Green Edition](http://i.imgur.com/m5aboWl.png)

### Using Code

Part of being a competent Swift programmer is being able to use and modify an existing code base to accomplish your task. To reinforce this idea, part of this app has been provided for you. Open up `LightBulb/LightBulb.xcodeproj` in Xcode to see what has been given to you.

Let's go over the parts of the app that are already present in that project.

Open up `Main.storyboard`. You'll notice that a standard view controller has already been created for you. Notice, too, that the light bulb view has also been placed.

Now open up `ViewController.swift` (you can open it up in an Assistant Editor from Interface Builder if you want). Parts of this file have already been filled in for you, too. It already has an IB action named `colorSelected(_:)`, but that IB action is not hooked up to anything. It also has a `UIImageView` outlet called `lightBulb`, but that has already been hooked up for you!

Take a look at the `viewDidLoad()` method. In there is the following piece of code:

```swift
lightBulb.backgroundColor = UIColor.blue
```

This will change the color of the lightbulb to blue.

Change it to green, then run the app again. You should see that the lightbulb is now green.

This is how you can change the color of the lightbulb to be whatever you want!


Now, on to your tasks.

### Your Tasks

If you complete the following steps, you should end up with a properly working app:

1. Add a segmented control underneath the lightbulb.
	* By default, a segmented control only has 2 buttons. Yours needs to have 4. Do you know how you can change that? (If you guessed "in the Attributes Inspector", you'd be correct!)
	* The individual parts of a segmented control also have default names. Try to figure out on your own how you can change those names. (Hint: Look for a section in the Attributes Inspector called **Segment**. It is a popup menu that should list all the parts of your segmented control. You'll want to change an attribute called **Title** for each segment part.)
2. Hook up the segmented control to the `colorSelected(_:)` IB action in `ViewController.swift`.
3. Implement the `colorSelected(_:)` method. It should change the background color of the `lightBulb` view to the chosen color.
	* Doing this might be a bit tricky. Notice that there is a `print` statement above the part of this method that you need to modify. That `print` statement is a hint as to how you can figure out which segment the user selected. Remember: You can get help using Xcode's documentation. Run your code code selecting the various options in the segmented control to see what's printing to console.

The following method has been provided for you. As #2  states, you need to hook up the Segmented Control object you created from the storyboard to this IBAction.

```swift
@IBAction func colorSelected(_ sender: UISegmentedControl) {
        
    print(sender.selectedSegmentIndex)
        
}
```

Just like any other function you've created that your familiar with, this function is no different. It has a name, which is `colorSelected` and it has one argument with no external name (denoted by the _) and a local name called `sender` of type `UISegmentedControl`. So who is calling on this function? Also, the person calling on this function, are they giving this function what it's asking for which is a `UISegmentedControl` object?

The segmented control object you created in the storyboard is what is calling on this `colorSelected` function (as a result of instruction #2). It calls on this function everytime someone selected one of the options in the segmented control object. It's also passing itself in as an argument to the function. So not only is the segmented control object calling on this method, it's passing itself along in as an argument!

That's good news for us! It means we can dig a little deeper into this object to see what option is selected. I've provided for you this `print` function which will tell us which option is selected (by index). What does that mean? It means that if the first option is selected, the `selectedSegmentIndex` will be 0, if the second option is selected, the `selectedSegmentedIndex` will be 1 and that will print to console. Don't take my word for it though, run your application and select the various options to see what's printing to the console.

We can use that information to our advantage. 

If your segmented control has the following options:

Red | Yellow | Blue | Green

You will notice that when red is selected, it will print 0. If Yelllow is selected, it will print 1. 

Final HINT: Use a switch statement on the `sender.selectedSegmentIndex` and change the backgroundColor of the lightbulb to the chosen option. The default case can be whatever color you want.

Have at it! This is definitely one of the most challenging labs you've had so far, but you've been provided a lot of helpful pieces to get you started, and covered all the material you need to know in previous lessons, so you should do great with it!

<a href='https://learn.co/lessons/UILab01' data-visibility='hidden'>View this lesson on Learn.co</a>

<p class='util--hide'>View <a href='https://learn.co/lessons/swift-UILab01-lab'>UI Lab: Light Bulbs</a> on Learn.co and start learning to code for free.</p>
