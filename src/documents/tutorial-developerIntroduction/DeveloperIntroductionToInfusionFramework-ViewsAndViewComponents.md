---
title: Developer Introduction to the Infusion Framework - Views and View Components
layout: default
category: Tutorials
---

View components are used to establish a binding between a specific DOM node on a web page and a specific instance of an Infusion component. View components serve an important role in relaxing the coupling between a component and any page markup it renders through the use of the [DOM Binder](/infusion/development/DOMBinder.md), making it easier to change component markup without changing component implementation.

View components require the specification of a page container for the component when creating them, as the first argument to the creator function:

`var helloWorld = fluid.helloWorld(".flc-helloWorld", {});`

<div class="infusion-docs-note">You can check out the [Live Example](http://codepen.io/waharnum/pen/MJbgVR?editors=1111) of the code below on [CodePen](http://codepen.io/)</div>

Let's turn the "Hello, World!" component into a view component that writes its initial message to the screen as well, assuming we have this HTML on the page:

```
<div class="helloWorld">
    <div class="flc-messageArea"></div>
</div>
```

```
fluid.defaults("fluid.helloWorld", {
    gradeNames: ["fluid.viewComponent"],
    model: {
        message: "Hello, World!"
    },
    selectors: {
        messageArea: ".flc-messageArea"
    },
    listeners: {
        "onCreate.displayHello": "{that}.displayHello"
    },
    modelListeners: {
        "message": "{that}.sayHello"
    },
    invokers: {
        sayHello: {
            "this": "console",
            "method": "log",
            "args": ["{that}.model.message"]
        },
        displayHello: {
            // DOM node as a jQuery object
            "this": "{that}.dom.messageArea",
            // Calls the 'html' function to replace the HTML at the node
            "method": "html",
            "args": ["{that}.model.message"]
        }
    }
});
```

You'll notice if you use the `changeApplier` from the console again like you did previously, the console message will update, but the screen displayed message won't. You may be able to guess this is because the screen displayed message isn't using a model listener. We'll address this in the next section.

Next: [Subcomponents and Model Relaying](/tutorial-developerIntroduction/DeveloperIntroductionToInfusionFramework-SubcomponentsAndModelRelaying.html)