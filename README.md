lscubes
=======

A command line program to list the cubes contained in a file.

Description
-----------

lscubes uses iris to read the file and construct cubes, then prints a summary
of these cubes to the screen


Requirements
------------

The [iris](http://scitools.org.uk/iris) package is required.


Installation
------------

To install:

    $ python setup.py install --user

and make sure `~/.local/bin` is on your `$PATH`. Alternatively you can simply copy
`bin/lscubes` to somewhere on your `$PATH`.


Examples
--------

List the cubes in the file ctd.nc:

    $ lscubes ctd.nc
    ctd.nc contains 2 cubes:
    ------------------------
    0: sea_water_practical_salinity / (1)  (sea_water_pressure_due_to_sea_water: 2392)
    1: sea_water_temperature / (K)         (sea_water_pressure_due_to_sea_water: 2392)

    sea_water_practical_salinity / (1)  (sea_water_pressure_due_to_sea_water: 2392)
         Dimension coordinates:
              sea_water_pressure_due_to_sea_water                           x
         Scalar coordinates:
              latitude: -26.4058 degrees
              longitude: 154.949 degrees
         Attributes:
              Conventions: CF-1.5

    sea_water_temperature / (K)         (sea_water_pressure_due_to_sea_water: 2392)
         Dimension coordinates:
              sea_water_pressure_due_to_sea_water                           x
         Scalar coordinates:
              latitude: -26.4058 degrees
              longitude: 154.949 degrees
         Attributes:
              Conventions: CF-1.5

Same again but only print the summary:

    $ lscubes -s ctd.nc
    ctd.nc contains 2 cubes:
    ------------------------
    0: sea_water_practical_salinity / (1)  (sea_water_pressure_due_to_sea_water: 2392)
    1: sea_water_temperature / (K)         (sea_water_pressure_due_to_sea_water: 2392)

List only the cubes with name *sea_water_temperature*:

    $ lscubes ctd.nc -n sea_water_temperature
    ctd.nc contains 1 cubes [only:sea_water_temperature]:
    -----------------------------------------------------
    0: sea_water_temperature / (K)         (sea_water_pressure_due_to_sea_water: 2392)

    sea_water_temperature / (K)         (sea_water_pressure_due_to_sea_water: 2392)
         Dimension coordinates:
              sea_water_pressure_due_to_sea_water                           x
         Scalar coordinates:
              latitude: -26.4058 degrees
              longitude: 154.949 degrees
         Attributes:
              Conventions: CF-1.5

