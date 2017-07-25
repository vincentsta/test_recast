# Recast.AI starter kit Ruby

A starter kit for developing bots on the [Recast.AI](https://recast.ai) platform.

> **Note:** This project is currently in beta version and can be modified at any time.

## Requirements

#### Ruby version

We recommand use `ruby 2.3+`


#### Recast.AI account

Create an account on the [Recast.AI](https://recast.ai) platform and follow this [quick tutorial](https://recast.ai/gettingstarted) to create your first bot on the interface.

## Usage

#### Installation

First clone the project:
```bash
git clone git@github.com:RecastAI/starter-ruby.git my-bot && cd my-bot
```

Then, install the dependencies:

```bash
bundle
```


#### Create the config file

Create a `application.yml` in the `config/` folder at the root of your project.

Copy paste the following configuration:

```yaml
REQUEST_TOKEN: ''
LANGUAGE: ''
PORT: 5000
```

This configuration will be loaded as environment variables thanks to `figaro`, this means that you will be able to override them via the command line.

To complete your Recast.AI `token` and your `language`:

- Go to your bot page
- Click on the settings icon (the gear on the right of your screen)
- Copy your `request token`
- Set the default language of your bot as either `'en'`, `'fr'`, ...


#### Run locally

`bundle exec rackup`

> **Note:** Next steps, only if you have connected your bot to channels, using the Bot Connector tool

- Download [ngrok](https://ngrok.com/)
- Launch: `ngrok http 5000`
- Copy the url ngrok outputs
- Paste it in the [Recast.AI](https://recast.ai) interface: Go to your bot page, click on the **RUN** tab and edit your `current bot webhook`
- Chat with your bot on the channels you've configured ;)


## Documentation

Code | Documentation
------------ | -------------
Receiving messages | [The Recast.AI SDK](https://github.com/RecastAI/SDK-Ruby/wiki/03-Receive-and-send-messages)
Sending messages | [The Recast.AI SDK](https://github.com/RecastAI/SDK-Ruby/wiki/03-Receive-and-send-messages)
Rich messaging | [Messages payloads](https://github.com/RecastAI/SDK-Ruby/wiki/04-Message-payload)
Manage the conversation | [The Recast.AI SDK](https://github.com/RecastAI/SDK-Ruby/wiki/02-Manage-conversation)


## More

You can view the whole API reference at [man.recast.ai](https://man.recast.ai).
You can follow us on Twitter at [@recastai](https://twitter.com/recastai) for updates and releases.


## License

Copyright (c) [2017] [Recast.AI](https://recast.ai)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
