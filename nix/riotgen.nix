{ lib
, buildPythonPackage
, fetchPypi
, pytest
, pyyaml
, click
, jinja2
}:

buildPythonPackage rec {
  pname = "riotgen";
  version = "0.8.4";

  propagatedBuildInputs = [ pyyaml click jinja2 ];

  src = fetchPypi {
    inherit version;
    pname = "riotgen";
    extension = "tar.gz";
    sha256 = "sha256:vbR5ePWns5hzlzZITqToD4a+DuUn28R/HVvZrzsa25c=";
  };

  # Test failing due to upstream issue (https://bitbucket.org/amentajo/lib3to2/issues/50/testsuite-fails-with-new-python-35)
  doCheck = false;

  meta = {
    homepage = "https://github.com/aabadie/riot-generator";
    description = "A source code generator for the RIOT operating system ";
    license = lib.licenses.bsd3;
    maintainers = [ ];
  };
}