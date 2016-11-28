.. _hd-integrations:

Integrations
============

We've built Gorgias so that you can manage all your customer support in one place. Integrations enable you to connect any application to Gorgias, provided that this application has an internet facing HTTP-based API.

There are three main use cases for integrations:

- Connect a support channel to Gorgias, like chat or social media
- Fetch customer data from a third party app (e.g. from your own back-office)
- Perform actions in a third party app (e.g. give a gift card to a customer)

We provide built-in integrations for `Facebook <https://www.facebook.com>`_ & `Smooch <https://smooch.io>`_. If you'd like to connect another app, you can use an HTTP integration.

We're happy to help you connect your apps to your Gorgias account, if you have questions feel free to contact us at support@gorgias.io.

Facebook
--------

Facebook is a popular social network where customers can interact with companies. This integration creates tickets when customers post on your Facebook page or send you a message on Messenger.

To get started with Facebook:
    1. Click "Add Facebook Page"

    2. Authorize the Gorgias app on Facebook

    3. Select the page you want to add

    4. Choose your import settings

    5. Click "Add Page"

Once you've added a Facebook page, every time someone posts on the page, comments on a post, or contacts the page via Messenger, it will create a ticket in Gorgias.
When you respond to this ticket, your response will be visible to the customer on Facebook, and also to your team on the Facebook messaging app.

.. note:: If the agent who added the page to Gorgias no longer has admin permissions on the page, you'll need someone else to re-authorize the page on your Gorgias account.

Smooch
------

Smooch is a chat widget that you can add on your website to interact with customers.

In order to enable chat in Gorgias, you need to create an account on Smooch first.

Then, here's how to connect your Smooch account to Gorgias:
    1. Click the "Add Smooch" button in integrations

    2. Go to your Smooch account settings, create a new secret key and paste your "key ID" and "secret" in Gorgias

    3. Click "Add Integration"

.. figure:: /_static/img/adding_smooch.png
    :width: 500
    :alt: Adding Smooch integration
    :align: center

Once you've added Smooch, when a visitor or a an app user start a conversation with you, it will create a chat ticket in Gorgias.
You'll see a notification in recent activities and the ticket will auto-refresh when the customers responds.

.. figure:: /_static/img/chat.png
    :width: 500
    :alt: Chat ticket
    :align: center

HTTP Integrations
-----------------

HTTP integrations allow you to connect any third-party app to Gorgias.

There are two main use-cases for HTTP integrations:
- Trigger an action in a third party app when a ticket is created or updated.
- Get customer data from a third party to populate the user profile

You can use Gorgias variables to pass data to other apps, like the customer's email with the {ticket.requester.email} variable

Below are popular use cases for HTTP integrations.

Shopify
+++++++

When you receive a message, you can display the customer profile and the last orders from Shopify in Gorgias.
Then, you can also do actions in Shopify from Gorgias itself.

.. figure:: /_static/img/ticket.png
    :width: 500
    :alt: Shopify integration
    :align: center

Here's how to do so:

1. Go to your Shopify account

2. Open the "App" page

3. Select "Private apps"

4. Create a new private app, called "Gorgias"

5. Change the "Customer" and "Order" permission to "Read and write"

.. figure:: /_static/img/helpdesk/integrations/shopify-permissions.png
    :width: 500
    :alt: Shopify permissions
    :align: center

6. Send the API key and password to support@gorgias.io, and we'll finish the setup for you!

Your custom back-office app
+++++++++++++++++++++++++++

Most support teams use a custom back-office, or admin, to look up customer profiles and do actions on them.

With Gorgias, you can automatically fetch customer data when a ticket is created, and display it next to tickets.

To do so:

    1. Add an http integration

    2. Use the GET method and your back-office url. It should look like this: company.com/api/users?email={ticket.requester.email}

    3. Optional: use a headers to pass the API key. For instance: "Authorization", "Basic 5Nmy9Z1loPr0M45TVBVRqoKyccj1jI03aGAZEx2fkO4KILVAq9PCpqA2Dk4Zcee9KkhTbHB5TrC5yydx="

    4. Select a trigger

    5. Save

Then, when a ticket is created or updated, Gorgias will automatically pull customer information from your back-office, and display it in the sidebar on the left of your tickets.

You can then use the interface builder to personalize the sidebar to your needs.

Slack
+++++

When a new ticket is created, you can connect Slack to post a notification in the Slack channel of your choice.

.. figure:: /_static/img/slack_notifications.png
    :width: 500
    :alt: Gorgias notifications in Slack
    :align: center

Here's how to do it:

    1. Go to "Apps & integrations" on Slack

    2. Click "Build" (top right) to add a custom integration

    3. Select "Incoming WebHooks"

    4. Select the channel where you want to see notifications of new tickets, and click "Add Incoming WebHooks Configuration"

    5. Copy the "Webhook URL"

    6. Create an HTTP integration in Gorgias

    7. Use the "Webhook URL" from Slack as a url

    8. Paste the code below to the body (to pass the ticket information to Slack)

    9. Select "Ticket Created" as a trigger

    10. Click "Add Integration"


.. figure:: /_static/img/slack_integration.png
    :width: 500
    :alt: Slack notification in Gorgias
    :align: center

TADA!

Zapier
++++++

You can trigger a zap when a ticket is created and/or updated.

To do so:

1. Create a zap in zapier and choose a "webhook" as a trigger.

2. Create an http integration in Gorgias

3. Select the POST method and use the webhook url from Zapier. You can pass arguments from Gorgias to Zapier using headers.

4. Select a trigger of your choice

Now, when the integration is triggered, your zap will run.
