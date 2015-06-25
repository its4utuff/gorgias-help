.. _templates:

Creating Templates
==================

What's a template?
------------------

A template is a piece of text that can be inserted with Gorgias, to avoid writing it manually.  

I can be any repetitive text you frequently write. 

Here are a few examples:
::
    Malala Yousafzai
    Nobel Peace Prize 2014
    malala@yousafzai.org
    (415)-937-2402 


::

    Hello Jane,

    Thanks for contacting us. Here are the steps to reset your password:
    ...
    Best, 

    John


How to create a template?
-------------------------

First, go to the New Template page

    1. Click on the "G" icon to open the Gorgias menu
.. figure:: img/gorgias-icon.png
    :width: 200
    :alt: Gorgias menu
    :align: center
.
    2. Click on "New Template". You're in! Now let's create your template

    3. Give a name to your template, choose a shortcut (that's the shortcut you will type to insert it), and a body
.. figure:: img/template-editor.png
    :width: 500
    :alt: Template editor
    :align: center
.
    4. Save it and you're done! 

You can now try inserting it in your favorite inbox. 


You can also create templates out of text in Chrome
    1. Select the text you want to create a template out of, right click on it, and hit "Save [selected text]...".
    2. You can now configure it and save it as explained above!
.. figure:: img/save.png
    :width: 500
    :alt: Template editor
    :align: center
.


Variables
---------

If you address someone in a template, you can use a variable to avoid changing the recipient's name everytime you insert this template. 

Imagine you start a template by addressing the recipient::

    Hello XXX,

    And then the rest of the e-mail follows...

You can use a variable for the recipient first name. Place the selector where you want to insert it, click on "Insert Variables" and select "To: First Name". 

Now your template looks like this::

    Hello {{to.0.first_name}},

    And then the rest of the e-mail follows...

and if you write to Jane, this is what it will print when you insert it::

    Hello Jane,

    And then the rest of the e-mail follows...

TADA!


List of variables
+++++++++++++++++

Here is the list of variables you can use:

* `To` field (recipient)
    * {{to.0.email}}
    * {{to.0.name}}
    * {{to.0.last_name}}
    * {{to.0.first_name}}

* `From` field (you!)
    * {{from.0.email}}
    * {{from.0.name}}
    * {{from.0.last_name}}
    * {{from.0.first_name}}

* `CC` field
    * {{cc.0.email}}
    * {{cc.0.name}}
    * {{cc.0.last_name}}
    * {{cc.0.first_name}}

* `BCC` field
    * {{bcc.0.email}}
    * {{bcc.0.name}}
    * {{bcc.0.last_name}}
    * {{bcc.0.first_name}}

* {{subject}} - subject content of the message

The power of the templates is given by the `Handlebars <http://handlebarsjs.com/>`_
template library.

.. note:: If the variable value is missing (e.g. no First Name for the contact) the variable is replace with an empty string.


Formatting
----------

To add formatting to a template, you can use HTML. 

If you don't know HTML, no worries! We have a trick for you: 

* Format your template in Gmail (with links, or anything else you need)
* Copy it `here <https://dl.dropboxusercontent.com/u/67896528/Editor/editor.html>`_, convert it into HTML & copy the HTML code
* Copy the HTML code in your template body, you're good!


Adding email subject in a template
----------------------------------

If you're using Gorgias to send emails, you can also add an email subject in a template. 

In the "New template" window, click on "Configure Fields" to show the subject field, and type in the subject here.


Tagging
-------

You can tag templates to keep your templates organized. You can find more in :ref:`tags`. 