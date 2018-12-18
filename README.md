# Let-It-Snow

An iOS example written in Swift lang that displays a snow scene that introduces iOS Core Animation and in particular, how to use CALayer and CAEmitter to render snow particles.

The code followed the awesome tutorial by Paul Hudson from Hacking With Swift Fame. 

Link to full tutorial: https://www.hackingwithswift.com/articles/151/how-to-create-a-snow-scene-with-core-animation

Things to extend/improve on:
<ol>
<li>Each of the three UIView subclasses is useful in its own right – I combined them here to prove a point rather than suggesting you add snow scenes to your app!
But if you want to make these truly reusable then you should look at the properties they have: you should add more properties to fully express the range of customization points you want to offer, so that you can create different kinds of effects without having to modify the layer code directly.</li>
<li>You should also look into adding @IBDesignable and @IBInspectable to the views, allowing you some control over them in Interface Builder.</li>
</ol>
