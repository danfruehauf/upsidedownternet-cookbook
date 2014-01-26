upsidedownternet Cookbook
===============
Chef cookbook to configure upsidedownternet (http://www.ex-parrot.com/~pete/upside-down-ternet.html)

Requirements
------------
Depends mainly on squid and apache.

Attributes
----------

#### upsidedownternet::squid
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
</table>

Usage
-----
#### upsidedownternet::squid
Simply include the recipe:
```
include_recipe "upsidedownternet::squid"
include_recipe "upsidedownternet::apache"
```

Contributing
------------
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors:
 * Dan Fruehauf <malkodan@gmail.com>
