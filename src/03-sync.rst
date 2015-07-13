.. _sync:

Synchronization
===============

If you have Google Chrome installed on multiple devices you can synchronize
your templates between machines. Here's how you do it:

Please make sure that you have the `Gorgias` extension installed_ on you
Google Chrome before following the steps bellow.

 1. Open the 'Options' for `Gorgias` from Extensions menu in Google Chrome.
 2. `Login` or `Register` if your not yet registered on the https://gorgias.io/ website.
 3. Click on `Sync Now` button (it takes a second or 2).
 4. Optionally refresh the page if you don't see them right away.

Now all your quicktexts should be synchronized with the Synchronization server.

In order to get your templates synchronized with other machines repeat
the steps above (but this time just Login).

How does synchronization work?
------------------------------

Every time the synchronization process starts all your templates are uploaded
and stored to the https://gorgias.io/ via a secure HTTPS connection.

The uploaded templates can now be shared between computers or with other members of your team using the https://gorgias.io
interface.

Syncing not only uploads all your templates it also updates the templates
that have been modified on other computers or downloads the new templates shared
by your team.

.. note:: No templates are ever deleted! Unless you specifically demand it.
          In order to completely delete your data please send an e-mail to support@gorgias.io

.. _installed: https://chrome.google.com/webstore/detail/quicktext-for-gmail/fbkpbekdjdelappaffjlbfffidknkeko

Why not use google.sync instead?
--------------------------------

While `Google Sync <http://www.google.com/sync/index.html>`_ is very convenient and works well for most Chrome extensions, it's a bit more complicated for `Gorgias`.

Here are the reasons why Chrome Sync is not the best fit for Gorgias:

First, `chrome.storage.sync <https://developer.chrome.com/extensions/storage>`_ is `limited <https://developer.chrome.com/extensions/storage#property-sync>`_ to 100MB and 512 items. While this is more than enough for most Gorgias users, some of our users have more than 512 templates. Hard to believe, but true.

Secondly (and probably most importantly for our customers) the chrome.storage.sync is attached only to one account, you can't share your templates with other team members.

Other practical reasons include the fact that it's difficult to debug a Sync problem when it's completely outside your control (Google Servers) and it's especially difficult to maintain 2 different implementations of a syncing methods.

We'd be more than happy to discuss a solution to this issue: support@gorgias.io
