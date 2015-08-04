---
layout: post
title: Splitting Git Directories, Magically
category: Git
---
I realized, after talking with some friends, that keeping all of my work in a single git directory was becoming a problem.
* I couldn't share it because I had the directory private.
* I couldn't seem to keep things as seperate as I would have liked.
* i could foresee problems with scalability.

So, I decided to split each and every subdirectory out into their own git repository. But for this to happen, I wanted to make sure that my git history was kept for each repository.

This meant if folder1 hadn't been used since last year and folder2 had been used some last year and some this year, both would show that correctly without also having the other's information.

So, after looking for a long time, I found [this answer](http://stackoverflow.com/questions/359424/detach-subdirectory-into-separate-git-repository/17864475#17864475). Using "The Easy Way" allowed me to have everything I wanted to happen.


After seperating them all out, I put them all under a folder named Repos. This allowed me to house them in a simple & clean looking way but still maintain their individuality.

I decided a few days later, that I wanted a way to update all of the individual git repos that were under this main "Repos" folder.

Again, after searching a bit, I stumbled across a script to [pull all subdirectories](http://stackoverflow.com/questions/3497123/run-git-pull-over%20-all-subdirectories#comment46218583_12495234).
It happened to be deep in the comments, but it works fantastically on both OSX and Linux.

{% include twitter_plug.html %}