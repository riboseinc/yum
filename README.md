# The Ribose Yum respository

This Yum repository contains packages maintained by
[Ribose](https://www.ribose.com).


# Usage instructions

Follow the steps below to use the Ribose yum repository.

## Quickstart

```
rpm --import https://github.com/riboseinc/yum/raw/master/ribose-packages.pub
curl -L https://github.com/riboseinc/yum/raw/master/ribose.repo > /etc/yum.repos.d/ribose.repo
```

## Import the Ribose Packaging PGP key

```
rpm --import https://github.com/riboseinc/yum/raw/master/ribose-packages.pub
```

## Install the ribose.repo file

By default the `ribose.repo` file has `gpgkey` and `gpgcheck` enabled.

```
curl -L https://github.com/riboseinc/yum/raw/master/ribose.repo > /etc/yum.repos.d/ribose.repo
```


# Install packages

e.g.,

```
yum install rnp
```

## Ruby with rbenv, ruby-build

This installs `rbenv` and Ruby 2.3.4 under its framework without needing
for compilation.

``` sh
yum install -y rbenv ruby-build rbenv-ruby-2.3.4
```

## botan2

``` sh
yum install -y botan2
```

## json-c12

``` sh
yum install -y json-c12
```

## Erlang

``` sh
yum install -y erlang-R15B01
```

## exmpp

``` sh
yum install -y erlang-exmpp
```

## erlang-xmlrpc

``` sh
yum install -y erlang-xmlrpc
```

## mydumper

``` sh
yum install -y botan2
```

## parallel

``` sh
yum install -y botan2
```


## NodeJS / npm packages


### Prerequisites

To install Ribose npm packages you need to first install NodeJS using
their official repo.

``` sh
yum install -y https://rpm.nodesource.com/pub_6.x/el/7/x86_64/nodesource-release-el7-1.noarch.rpm
yum install -y nodejs
```

### aws-es-curl

``` sh
yum install -y aws-es-curl
```

### elasticdump

``` sh
yum install -y elasticdump
```

### redis-dump

``` sh
yum install -y redis-dump
```

## Go packages (from `go get`)


### rutil

``` sh
yum install -y rutil
```



## Incompatible packages

The following packages may conflict with other packages in
RHEL7/CentOS7, use with caution.

### Plain Ruby (2.3.4)

The commands are funny because this package does not have a unique name.

``` sh
yum install -y openssl libyaml
yum install -y --disablerepo=* --enablerepo=ribose ruby
```

### libgsf

The commands are funny because this package does not have a unique name.

``` sh
yum install -y http://rpms.famillecollet.com/enterprise/remi-release-7.rpm
yum install -y pygtk2-devel
yum install -y --disablerepo=* --enablerepo=ribose libgsf
```

### vips

The commands are funny because this package does not have a unique name.

``` sh
yum install -y http://rpms.famillecollet.com/enterprise/remi-release-7.rpm
yum install -y ImageMagick6-libs OpenEXR-libs cfitsio fftw-libs-double fribidi \
  gd ghostscript ghostscript-fonts giflib graphviz hdf5 ilmbase libXaw libXmu \
  libXpm libXt libexif libgfortran libgsf libquadmath libraqm librsvg2 \
  libwebp libwmf-lite matio openjpeg-libs openslide orc poppler \
  poppler-glib urw-fonts
yum install --disablerepo=* --enablerepo=ribose vips
```

# Problems / Feedback

Feel free to contact the Ribose Packaging team at our [feedback
page](https://www.ribose.com/feedback)
