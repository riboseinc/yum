# The Ribose Yum respository

This Yum repository contains packages maintained by
[Ribose](https://www.ribose.com).


# Usage instructions

Follow the steps below to use the Ribose yum repository.

## Import the Ribose Packaging PGP key

```
rpm --import https://github.com/riboseinc/yum/raw/master/ribose-packages.pub
```

## Install the ribose.repo file

By default the `ribose.repo` file has `gpgkey` and `gpgcheck` enabled.

```
curl -L https://github.com/riboseinc/yum/raw/master/ribose.repo > /etc/yum.repos.d/ribose.repo
```

## Install packages

e.g.,

```
yum install netpgp
```

# Problems / Feedback

Feel free to contact the Ribose Packaging team at our [feedback
page](https://www.ribose.com/feedback)
