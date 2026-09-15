# 3dprinting_stuff

Personal 3D-printing repo: designs, downloaded models, printer hardware
reference, firmware config, and calibration prints.

## Layout

```
models/          designs I made - one folder per project
  <project>/
    src/         editable sources (.FCStd, .scad, .blend)
    print/       print-ready files (.stl, .3mf, .gcode)
    README.md    what it is, print settings, status
    (loose .txt/.pdf/.jpg notes stay at the project root)
downloads/       third-party models, one folder per item (URL + license in its README.md)
calibration/     test prints (.gcode): speeds, accelerations, input shaping, vases
boards/          hardware reference: board manuals + STEP parts (BTT SKR Mini E3,
                 BIQU MicroProbe V2, Ender-3)
machines/        per-printer config & notes
  sv08/klipper/  printer.cfg, moonraker, macros, backup
software/        Marlin config, OctoPrint docker-compose
```

## Conventions

- Folders: lowercase kebab-case. File names as-is, but extension case is
  normalized (`.stl`, `.3mf`, `.step`, `.pdf` - not `.STL`/`.STEP`/`.PDF`).
- Every model project has a small `README.md`: purpose, print settings
  (slicer, material, profile), and print status. Fill it in - it's the thing
  you'll want in 6 months.
- `src/` vs `print/`: slicers and FreeCAD only see finished exports; no
  half-baked files.
- FreeCAD auto-backups (`*.FCBak`, `*FCStd1`) are git-ignored - don't commit
  them.
- sv08: frame/enclosure *designs* live in `models/sv08/`, printer *config*
  lives in `machines/sv08/`.
