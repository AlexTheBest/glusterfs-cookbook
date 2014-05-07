glusterfs Cookbook
===========================
Chef cookbook with recipes to install GlusterFS.

Requirements
------------
#### Compatible operating systems

Cookbook has been tested and it is known to work on:

* Ubuntu (12.04, 14.04)

#### packages
* apt

Usage
-----
## Recipes

### server

Installs glusterfs-server.

### clone

Installs glusterfs-client.

### default

Default recipe, it includes to recipes: server and client .

Contributing
------------
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

Authors
-------------------
* [endhrk](https://github.com/endhrk)

License
-------
* [MIT](LICENSE)

