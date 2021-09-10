# xarm-commander
A C++ CLI Tool for controlling the xArm7 Robot using the [xArm-CPLUS-SDK](https://github.com/xArm-Developer/xArm-CPLUS-SDK) and [CLI11](https://github.com/CLIUtils/CLI11).
For demonstration purposes, only two simple commands have been implemented so far.

The `xArm-CPLUS-SDK` is added as a subomodule, so when cloning this repository, do
```
git clone git@github.com:Interactions-HSG/xarm-commander.git --recursive
```

## Preparation: xArm-CPLUS-SDK
To use the xarm-commander, first install the xArm-PLUS-SDK library.
```
# install
sudo make -C libs/xArm-CPLUS-SDK xarm install

# uninstall
sudo make -C libs/xArm-CPLUS-SDK uninstall

# clean the build folder of the xarm library
sudo make -C libs/xArm-CPLUS-SDK clean
```

## Install
```
# compile and build the sourcecode for the xarm-commander:
make

# to use the xarm-commander globally install it in `/usr/local/bin`
sudo make install

# uninstall the xarm-commander
sudo make uninstall

# delete the build folder of the xarm-commander
make clean
```

## Examples
The `examples` directory contains examples on how to integrate the xarm-commander into different languages.  
Currently, the following examples are provided:
- `bash_routine.sh`: A simple collection of commands called from a bash script.
- `node_async.js`: Integration into Javascript using `async` functions.
- `node_promise.js`: Integration into Javascript using `promises`.


## Synopsis
For further description about usage of the xarm-commander, use -h or --help:
```
xarm-commander -h
```
> :bulb: Can be also used for subcommands: `xarm-commander get_version -h`

## Maintainers

- Jonas Brütsch ([@jo-bru](https://github.com/jo-bru))
- Iori Mizutani ([@iomz](https://github.com/iomz))

## License
See `LICENSE`.

