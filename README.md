# Riyadh Blog

## Learning Goals

1. Create an HTML structure for an existing mockup

## Introduction

Web developers are often asked to work from a mockup of a potential webpage,
generally referred to as either a `mockup` or `comp`. In this lab, you'll be
asked to use a mockup image, source text and images, and create an HTML
structure that mirrors the mockup image.

## Getting Started

Fork and clone this lesson into your local environment. Navigate into its directory
in the terminal, then run `code .` to open the files in Visual Studio Code. Finally,
run `bundle` to install the lab's dependencies.

## Create an HTML Structure for an Existing Mockup

### Process

In the `index.html` file, use the comments in the code to place the content
from `SOURCE.md` in the proper locations. The image file
[`MOCKUP.jpg`](https://s3.amazonaws.com/learn-verified/RIYADH-MOCKUP.jpg) can
be used as a reference to build the `index.html` page as it appears.

Open `index.html` in a separate browser tab to see your progress as you work. Run `rspec`
as you go to see test results.

### Bonus

Use CSS in the `style.css` file in the `css` folder to change different aspects
about your page such as:

* font color
* font size
* font family
* change the background image to a color
* change the background color to a gradient

You can also try modifying these styles on-the-fly by modifying them with the
[developer tools] of your [browser].

You might think: "BUT I DON'T KNOW CSS" (_very well_ or _at all_). Developers
*constantly* encounter this feeling. Since developers are constantly learning,
we try to keep the commands as simple as possible. You might know more than you
think! What happens if you change `red` to `green`? What do you expect? How
would you validate your guess? Developers usually call this process "trying
stuff" or "messing around" or "playing with stuff." While all those phrases
sound like a joke, what they mean to say is that they're using the Scientific
Method to validate their guesses into building a model.

It's possibly the most powerful learning technique possible. Toddlers and
puppies are amazing at it!

## Saving Your Work Remotely

Currently, the work you've done on this assignment is only on your local
machine. To preserve work on your GitHub fork, you will need to stage the
changes you've made, commit them, and push the commit up to GitHub. Use
the following commands to do this:

```sh
git add .
git commit -m "Completed assignment"
git push
```

If you visit your fork on GitHub, you should now see that _you've_ made the most
recent commit, and your solution will be present in the files.

[these steps]: http://help.learn.co/the-learn-ide/common-ide-questions/viewing-html-pages-in-the-learn-ide
[developer tools]: https://www.youtube.com/watch?v=q3mWDijP_8w
[browser]: http://www.sitepoint.com/edit-source-files-in-chrome/
