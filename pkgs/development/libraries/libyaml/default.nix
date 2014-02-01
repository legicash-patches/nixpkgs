{stdenv, fetchurl}:

stdenv.mkDerivation {
  name = "libyaml-0.1.3";

  src = fetchurl {
    url = http://pyyaml.org/download/libyaml/yaml-0.1.3.tar.gz;
    sha256 = "a8bbad7e5250b3735126b7e3bd9f6fce9db19d6be7cc13abad17a24b59ec144a";
  };

  # Downloaded on 2014-02-01 from https://bugzilla.redhat.com/show_bug.cgi?id=1033990
  patches = [ ./cve-2013-6393_a.patch ./cve-2013-6393_b.patch ./cve-2013-6393_c.patch ];

  meta = {
    homepage = http://pyyaml.org/;
    description = "A YAML 1.1 parser and emitter written in C";
    license = "free";
  };
}
