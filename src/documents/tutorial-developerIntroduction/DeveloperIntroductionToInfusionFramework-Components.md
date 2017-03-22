---
title: Developer Introduction to the Infusion Framework - Components
layout: default
category: Tutorials
---

Programs using Infusion structure their data, functionality and interaction as various components defined using a common syntax.

Components are [JavaScript objects that have certain characteristics](/infusion/development/UnderstandingInfusionComponents.md). Components can be freely combined together to form new components using the [grades system](/infusion/development/ComponentGrades.md), or organized into relationships with one another via [subcomponents](/infusion/development/SubcomponentDeclaration.md).

 There are three base components to be aware of that any new components you create with Infusion will likely have at their root:

 * [`fluid.component`](/infusion/development/ComponentConfigurationOptions.md#options-supported-by-all-components-grades), the simplest type with support for events and public function definition (called [invokers](/infusion/development/Invokers.md) in Infusion).
 * [`fluid.modelComponent`](/infusion/development/ComponentConfigurationOptions.md#model-components), which adds support for mutable models, model events, and model state coordination and relay between different components.
 * [`fluid.viewComponent`](/infusion/development/ComponentConfigurationOptions.md#view-components), which supplement model components with functionality to bind to the DOM of a web page.

Infusion's approach to component-based development emphasizes declarative configuration, loose coupling and flexible hierarchies. The framework manages component lifecycle and scoping and provides many supports to allow components to work in collaboration with one another.

A new Infusion component grade ("grade" is the term used in Infusion for a sort of blueprint, in this case one that holds a component's default configuration) is defined using the `fluid.defaults` function and a very basic "Hello, World!" component might look like this:

<div class="infusion-docs-note">You can check out the [Live Example of the code below on CodePen](http://codepen.io/waharnum/pen/oBYvwx?editors=1111)</div>


```
// The first argument is the name of the new component, the second is the
// new component's default configuration
fluid.defaults("fluid.helloWorld", {
    // gradeNames supplies an array of strings that name previously
    // defined Infusion components
    gradeNames: ["fluid.component"]
});
```

After definition, instances of the component can be created by calling the component's name as a function, with the option to pass in further configuration options as an argument:

```
var helloWorld = fluid.helloWorld();
```

Right now this component doesn't do anything, but we will evolve its definition throughout this introduction to demonstrate further core concepts of the framework.

Next: [ Invokers](/tutorial-developerIntroduction/DeveloperIntroductionToInfusionFramework-Invokers.html)