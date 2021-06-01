# Geographic Heat Map Reference Implementation

## Objective

This application is a reference implementation for how to generate custom 
TopoJSON files to be used with the Geographic Heat Map reporting module on a 
Medallia Experience Cloud (MEC) instance.  

## Theory of Operation

The process takes a shape file and runs it through the MapShaper command, adding 
an `id` field to match a unit group in the MEC Instance.

## Usage

This application runs in a Bash shell with NodeJS version 10 or above.  Before 
running the application, first run:

```
npm install
```

Next, run the following command:

```
./build.sh
```

## License

Copyright 2021.  Medallia, Inc.

Licensed under the Apache License, Version 2.0 (the "License"); you may
not use this file except in compliance with the License.  You may obtain
a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

The map data used was taken from [Natural Earth Data][naturalearthdata] and is the
dataset titled `Admin 1 - States, Provinces` (without large lakes) ([direct link][sourcedata]).
It is provided under the Public Domain [license][license].

[comment]: # (The below is a list of external links used)
[naturalearthdata]: http://www.naturalearthdata.com/downloads/110m-cultural-vectors
[license]: https://www.naturalearthdata.com/about/terms-of-use
[sourcedata]: https://www.naturalearthdata.com/download/110m/cultural/ne_110m_admin_1_states_provinces_lakes.zip