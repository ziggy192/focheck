# focheck – Validate XSL-FO and Antenna House extensions in oXygen or standalone

**focheck** bundles a Relax NG schema and a Schematron grammar in an oXygen framework for detailed validation
of XSL-FO within oXygen XML Editor.  You can, of course,
also use the **focheck** Relax NG and Schematron outside of oXygen, either together or separately.

The Relax NG handles structural validation and the
Schematron handles the additional constraints that cannot be
expressed in Relax NG.  The Schematron parses property value
expressions using an XSLT-based parser generated by the REx
parser generator plus an XSLT library for reducing the parse tree
to XSL-FO datatypes.

## Disclaimer

`focheck` is a work in progress.  It does not (yet) handle every XSL-FO property or every requirement in the XSL-FO spec, nor does it evaluate either functions or relative lengths.

Pull requests and new issues are welcome.

## Installing

* If you just want to use **focheck** with oXygen, then you can simply download and install a static copy of this repository.
* If you want to easily keep up-to-date with changes, then you can clone this repository and 'pull' the latest version whenever you want.
* If you want to hack on **focheck** or submit pull requests, then you can fork this repository and clone that onto your local machine.

### Installing a ZIP archive to oXygen `frameworks` directory

1. Download the ZIP archive from the latest release on the 'Releases' page.
1. Extract the folder in the ZIP archive to the oXygen `frameworks` directory.
 - On Windows, this is `C:\Program Files\Oxygen XML Editor 16\frameworks`, or something similar.
 - If you don't have permission to copy the folder to the `frameworks` directory, then you can use an alternative location as described below.
 - You don't need to remove the `-master` from the folder name, since oXygen doesn't display the folder name.
1. Restart oXygen.

### Installing a ZIP archive to an alternative frameworks location

If you don't have permission to modify the oXygen installation – for example, if oXygen is installed on Windows under `C:\Program Files\` and you are not an Administrator – you can set oXygen to also use an alternative frameworks location.

1. Click on the "Download ZIP" button on this project's main page to download the files.
1. Extract the folder in the ZIP archive to a folder where you can create the new folder.
1. In your oXygen preferences, add the folder *containing* the **focheck** folder as an alternative frameworks location.
 - See http://oxygenxml.com/doc/ug-editor/index.html#topics/framework-location.html
1. Restart oXygen.

### Installing a repository clone

1. Clone the repository into either the oXygen `frameworks` directory or another directory.
 - **focheck** incorporates **[stf](https://github.com/MenteaXML/stf)** as a submodule.  There are two ways to also check out **stf**:
   - Pass `--recursive` to `git clone` when you check out **focheck**
   - If you've already checked out **focheck**, you can run
     `git submodule init`
     `git submodule update`
2. If necessary, add the folder *containing* the **focheck** folder as an alternative frameworks location.
3. Restart oXygen.

## Using **focheck**

### oXygen XML Editor

When you open an XSL-FO document – where the document element is `root` in the XSL-FO namespace – oXygen will automatically validate the document against both the Relax NG schema and the Schematron grammar.

### Standalone

You can use the Relax NG schema in the `schema` folder and the Schematron files in the `schematron` folder outside of oXygen.  However:

- The Relax NG works with Jing and with Emacs `nxml-mode` but not with `xmllint`.
- The Schematron requires an XSLT 2.0 binding and a Schematron implementation that will both match on attributes as contexts as well as import and use external XSLT 2.0 stylesheets.

## Building

### oXygen XML Editor

1. Open `build.xml` in oXygen.
2. Run the default "ANT" transformation scenario.

### Standalone

1. If the properties in `build.properties` are not correct for your system, then copy `build.properties` to `build.local.properties` in the same directory.
 - You can delete or comment out any properties in `build.local.properties` that you don't need to change.
1. Run Ant.

## Other Ant targets

### `run.parser`

Runs the parser on `${input}`.

### `framework.zip`

Makes a Zip archive of just the oXygen framework.

## License

Copyright 2015 Antenna House, Inc.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
