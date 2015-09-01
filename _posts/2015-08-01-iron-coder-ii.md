---
layout: post
title: Iron Coder II
category: Python
---
> Please see Jamal's original post [here](http://jamalhansen.com/iron-coder-2). I borrowed this from him.

Today marks the day that is the beginning of Iron Coder II.  This is a code challenge where I will compete against myself and [Jamal Hansen](http://jamalhansen.com) to complete a randomized Ruby Quiz in Python.

We have two weeks to complete this; challenge ends 23:59 CT on 8/15/2015.

Here is a [link to my git repo](https://github.com/kylegalloway/Euchre-Hands) and [Jamal's](https://github.com/jamalhansen/Iron-Coder-II)

This should be a fun challenge, I'm looking forward to it.

<!--end of excerpt-->
## The Challenge: Euchre Hands
[The following is extracted from Ruby Quiz # 55](http://rubyquiz.com/quiz55.html)

Euchre Hands (#55)

The card game of Euchre has an unusual ordering of cards in the hand. This week's Ruby Quiz is to take a random Euchre hand and sort it.

The first thing you need to know is that Euchre is played with a small deck of cards. Four suits are used Diamonds (d), Clubs (c), Spades (s), and Hearts (h), but each suit has only the cards Nine (9), Ten (T), Jack (J), Queen (Q), King (K), and Ace (A). The cards are generally ordered as I just listed them, Nine being the low card and Ace the high card. The exception is the "Bowers".

When a Euchre hand is started, the first task is to select a Trump suit. How that's done is not important, just know that one suit is always different from the rest. Trump is the best suit, valued higher than the other three suits (which are basically equal). In the Trump suit, the card order changes.

The first oddity of Trump is that the Jack of the selected suit becomes the Right Bower, the highest ranked Trump card. The second oddity is that the other Jack of the same color (Diamonds and Hearts are red while Clubs and Spades are black) becomes the Left Bower, the second highest Trump card. This card is considered to be of the Trump suit for the rest of the hand. For example, if Spades is selected as Trump, the order of Spades becomes (lowest to highest): 9s, Ts, Qs, Ks, As, Jc, and Js. All other suits run Nine to Ace, save that Clubs will be short a Jack.

The three non-Trump suits are equal, but it is good interface to sort the by suit alternating red, black, red, and black, I think. Especially with a GUI, this makes it easier to understand the hand.

Input (on STDIN) will be a line containing the Trump suit, followed by five lines containing a Euchre hand. For example:

{% highlight text %}

Diamonds
Kc
Jh
Kd
Td
Ah

{% endhighlight %}

Your script should output (to STDOUT) the Trump suit, followed by the cards in sorted order (highest card first):

{% highlight text %}
Diamonds
Jh
Kd
Td
Kc
Ah
{% endhighlight %}

Here is a script that will feed your program random hands:

{% highlight ruby %}
    #!/usr/local/bin/ruby -w

    # build a Euchre deck
    cards = Array.new
    %w{9 T J Q K A}.each do |face|
      %w{d c s h}.each do |suit|
        cards << face + suit
      end
    end

    # choose trump
    puts %w{Diamonds Clubs Spades Hearts}[rand(4)]

    # deal a hand
    cards = cards.sort_by { rand }
    puts cards[0..4]
{% endhighlight %}

{% include twitter_plug.html %}