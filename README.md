[![Travis](https://img.shields.io/travis/rust-lang/rust.svg)](https://travis-ci.org/HewlettPackard/chef-hprest-cookbook)
[![Chef cookbook](https://img.shields.io/cookbook/v/hprest.svg)](https://supermarket.chef.io/cookbooks/hprest)

# Hprest Cookbook

#### Table of Contents
1. [Description](#description)
1. [Requirements](#requirements)
1. [Platforms - which platforms are supported](#platforms)
    * [Which Chef version is compatible?](#chef)
1. [Usage](#usage)
1. [How to contribute](#contributing)

## Description

**Hprest** is a Chef cookbook that installs the Hewlett-Packard RESTful Interface Tool, and provides 
recipes to use Chef to manage your node's settings

### What does hprest do?

**Hprest** installs the hprest (RESTful Interface Tool) on your node, and provides custom resources 
to send valid hprest commands

## Requirements

**Hprest** has no dependencies, and only requires the node to be able to access Hewlett-Packard Enterprise's 
repositories.

It is strongly suggested by Chef and us that chef-client be run as root or administrator, to ensure that everything is working properly. If root/administrator is not used, **hprest** may fail.

### Platforms

- Windows Server 2012, Ubuntu, Debian, Red Hat Linux

### Chef

- Chef 12.0 or later

## Usage

### Hprest::default

Include `hprest` in your node's `run_list` to install hprest.

### Custom Resources

`Hprest` includes an 'hprest' resource that is used to provide valid hprest commands to the node.

This can be used by adding in commands you wish to use in the service.rb file

**Example service.rb file**

```ruby
hprest 'login 10.0.0.100 -u admin -p password'
hprest 'types'
hprest 'select HpBios.'
hprest 'set AdminName="John Doe"'
hprest 'get AdminName'
hprest 'commit'
```

## Contributing

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

## History

* 01/10/2017: Initial Commit
* 04/28/2017: Release of v1.1.0

## License

Copyright 2017 Hewlett Packard Enterprise Development LP

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

 http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

## Authors

* [Jack Garcia](http://github.com/LumbaJack)
* [Matthew Kocurek](http://github.com/Yergidy)
* [Prithvi Subrahmanya](http://github.com/PrithviBS)

