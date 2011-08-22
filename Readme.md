Suck
====

Demo application to show the undocumented and private API for the animation "Suck".

It uses the private class method "setAnimationPosition" to setup the "suck" point.
The integer code that represents this animation is 103.

    [UIView beginAnimations:@"suck" context:NULL];
    [UIView setAnimationTransition:103 forView:someView cache:YES];
    [UIView setAnimationDuration:someDuration];
    [UIView setAnimationPosition:somePoint];
    [UIView commitAnimations];


Questions
---------

- How is it internally implemented?
- Does it use Core Animation?
- Does it require a lot of math?
- Image morphing?
- Image deformation?
