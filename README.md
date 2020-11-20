## Apache Server STIG Automated Compliance Validation Profile
<b>Apache Server</b> Version 2.4x <b>

<b>Apache Server</b> STIG Automated Compliance Validation Profile works with Chef InSpec to perform automated compliance checks of <b>Apache Server</b>.

This automated Security Technical Implementation Guide (STIG) validator was developed to reduce the time it takes to perform a security check based upon STIG Guidance from DISA. These check results should provide information needed to receive a secure authority to operate (ATO) certification for the applicable technology.
<b>Apache Server</b> uses [Chef InSpec](https://github.com/chef/inspec), which provides an open source compliance, security and policy testing framework that dynamically extracts system configuration information.

## Apache Server STIG Overview

The <b>Apache Server</b> STIG (https://public.cyber.mil/stigs/) by the United States Defense Information Systems Agency (DISA) offers a comprehensive compliance guide for the configuration and operation of various technologies.
DISA has created and maintains a set of security guidelines for applications, computer systems or networks connected to the DoD. These guidelines are the primary security standards used by many DoD agencies. In addition to defining security guidelines, the STIG also stipulates how security training should proceed and when security checks should occur. Organizations must stay compliant with these guidelines or they risk having their access to the DoD terminated.

[STIG](https://en.wikipedia.org/wiki/Security_Technical_Implementation_Guide)s are the configuration standards for United States Department of Defense (DoD) Information Assurance (IA) and IA-enabled devices/systems published by the United States Defense Information Systems Agency (DISA). Since 1998, DISA has played a critical role enhancing the security posture of DoD's security systems by providing the STIGs. The STIGs contain technical guidance to "lock down" information systems/software that might otherwise be vulnerable to a malicious computer attack.

The requirements associated with the <b>Apache Server</b> STIG are derived from the [National Institute of Standards and Technology](https://en.wikipedia.org/wiki/National_Institute_of_Standards_and_Technology) (NIST) [Special Publication (SP) 800-53, Revision 4](https://en.wikipedia.org/wiki/NIST_Special_Publication_800-53) and related documents.

While the [Insert Technology] STIG automation profile check was developed to provide technical guidance to validate information with security systems such as applications, the guidance applies to all organizations that need to meet internal security as well as compliance standards.

This check provides guidance on the configuration of <b>Apache Server</b> to address requirements associated with:

<b>[List out technology specific requirements]</b>

### This STIG Automated Compliance Validation Profile was developed based upon:
- List STIG guidance if applicable (includes older STIGs and Application STIG)
- List SRG guidance if applicable
- List CIS Benchmarks if applicable
- List White papers / other guidance etc.

## Getting Started

### Requirements

To run the <b>Apache Server</b> STIG Compliance Validation Program......<b>[insert startup requirements]</b>


#### STIG Validation Execution Host <b>[update or remove section based upon technology]</b>
- Linux VM or Host
- sudo access to install packages

#### Required software on STIG Validation Execution Host <b>[update or remove section based upon technology]</b>
- git
- ssh
- [InSpec](https://www.chef.io/products/chef-inspec/)
- [Docker](https://www.docker.com/)

### Setup Environment on STIG Validation Execution Host <b>[update or remove section based upon technology]</b>
#### Install InSpec
- Go to https://www.inspec.io/downloads/ and consult the documentation for you Operating System to download and install InSpec.
- Go to https://docs.docker.com/get-docker/ and consult the documentation for your Operating System to download and install Docker 

#### Ensure your InSpec version is at least 4.23.10 
```sh
inspec --version
```

### How to execute this instance 
(See: https://www.inspec.io/docs/reference/cli/)

#### Execute a single Control in the Profile 

**Note**: replace the profile's directory name - e.g. - `<Profile>` with `.` if you are in the profile's root directory.

```sh
inspec exec <Profile>/controls/V-92597.rb -t docker://<name_of_container>
```

or use the `--controls` flag
```sh
inspec exec <Profile> --controls=V-92597.rb V-92599.rb -t docker://<name_of_docker_container>
```

#### Execute a Single Control and save results as JSON with the name of the JSON file as results.json
```sh
inspec exec <Profile> --controls=V-92597.rb -t docker://<name_of_docker_container> --reporter json:results.json
```

#### Execute All Controls in the Profile 
```sh
inspec exec <Profile> -t docker://<name_of_docker_container>
```

#### Execute all the Controls in the Profile and save results as JSON 
```sh
inspec exec <Profile> -t docker://<name_of_docker_container> --reporter json:results.json
```

## Authors

Defense Information Systems Agency (DISA) https://www.disa.mil/

STIG support by DISA Risk Management Team and Cyber Exchange https://public.cyber.mil/



## Legal Notices

Copyright © 2020 Defense Information Systems Agency (DISA)