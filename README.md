## Apache Server STIG Automated Compliance Validation Profile
<b>Apache Server 2.4</b>

<b>Apache Server 2.4</b> STIG Automated Compliance Validation Profile works with Chef InSpec to perform automated compliance checks of <b>Apache Server</b>.

This automated Security Technical Implementation Guide (STIG) validator was developed to reduce the time it takes to perform a security check based upon STIG Guidance from DISA. These check results should provide information needed to receive a secure authority to operate (ATO) certification for the applicable technology.
<b>Apache Server</b> uses [Chef InSpec](https://github.com/chef/inspec), which provides an open source compliance, security and policy testing framework that dynamically extracts system configuration information.

## Apache Server STIG Overview

The <b>Apache Server</b> STIG (https://public.cyber.mil/stigs/) by the United States Defense Information Systems Agency (DISA) offers a comprehensive compliance guide for the configuration and operation of various technologies.
DISA has created and maintains a set of security guidelines for applications, computer systems or networks connected to the DoD. These guidelines are the primary security standards used by many DoD agencies. In addition to defining security guidelines, the STIG also stipulates how security training should proceed and when security checks should occur. Organizations must stay compliant with these guidelines or they risk having their access to the DoD terminated.

[STIG](https://en.wikipedia.org/wiki/Security_Technical_Implementation_Guide)s are the configuration standards for United States Department of Defense (DoD) Information Assurance (IA) and IA-enabled devices/systems published by the United States Defense Information Systems Agency (DISA). Since 1998, DISA has played a critical role enhancing the security posture of DoD's security systems by providing the STIGs. The STIGs contain technical guidance to "lock down" information systems/software that might otherwise be vulnerable to a malicious computer attack.

The requirements associated with the <b>Apache Server</b> STIG are derived from the [National Institute of Standards and Technology](https://en.wikipedia.org/wiki/National_Institute_of_Standards_and_Technology) (NIST) [Special Publication (SP) 800-53, Revision 4](https://en.wikipedia.org/wiki/NIST_Special_Publication_800-53) and related documents.

While the Apache Server STIG automation profile check was developed to provide technical guidance to validate information with security systems such as applications, the guidance applies to all organizations that need to meet internal security as well as compliance standards.

### This STIG Automated Compliance Validation Profile was developed based upon:
- Apache Server Security Technical Implementation Guide
### Update History 
| Guidance Name  | Guidance Version | Guidance Location                            | Profile Version | Profile Release Date | STIG EOL    | Profile EOL |
|---------------------------------------|------------------|--------------------------------------------|-----------------|----------------------|-------------|-------------|
| Apache Site 2.4 STIG  | Ver 2, Rel 1    | https://public.cyber.mil/stigs/downloads/  |         1.0.0          |        28 Jan 2021           | NA | NA |



## Getting Started

### Requirements

#### Apache Server  
- Apache Server
- Account providing appropriate permissions to perform audit scan


#### Required software on Apache Server machine
- git
- [InSpec](https://www.chef.io/products/chef-inspec/)

### Setup Environment on Apache Server machine 
#### Install InSpec
Goto https://www.inspec.io/downloads/ and consult the documentation for your Operating System to download and install InSpec.

#### Ensure InSpec version is at least 4.23.10 
```sh
inspec --version
```

### How to execute this instance  
(See: https://www.inspec.io/docs/reference/cli/)

#### Execute a single Control in the Profile 
**Note**: Replace the profile's directory name - e.g. - `<Profile>` with `.` if currently in the profile's root directory.
```sh
inspec exec <Profile>/controls/V-72841.rb --show-progress
```
or use the --controls flag to execute checking with a subset of controls
```sh
inspec exec <Profile> --controls=V-72841.rb V-72845.rb --show-progress
```

#### Execute a Single Control and save results as JSON 
```sh
inspec exec <Profile> --controls=V-72841.rb --show-progress --reporter json:results.json
```

#### Execute All Controls in the Profile 
```sh
inspec exec <Profile> --show-progress
```

#### Execute all the Controls in the Profile and save results as JSON 
```sh
inspec exec <Profile> --show-progress  --reporter json:results.json
```

## Check Overview:

**Manual Checks**

These checks are not included in the automation process.

| Check Number | Description                                                                                                                                                                                               |
|--------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| V-92771      | The Apache web server must not perform user management for hosted applications.                                                                                                                                            |
| V-92773      | The Apache web server must have Multipurpose Internet Mail Extensions (MIME) that invoke operating system shell programs disabled.                                                                                         |
| V-92775      | The Apache web server must allow mappings to unused and vulnerable scripts to be removed.                                                                                                                                  |
| V-92777      | The Apache web server must have resource mappings set to disable the serving of certain file types.                                                                                                                        |
| V-92787      | Only authenticated system administrators or the designated PKI Sponsor for the Apache web server must have access to the Apache web servers private key.                                                                   |
| V-92795      | Cookies exchanged between the Apache web server and client, such as session cookies, must have security settings that disallow cookie access outside the originating Apache web server and hosted application.             |
| V-92797      | The Apache web server must augment re-creation to a stable and known baseline.                                                                                                                                             |
| V-92799      | The Apache web server document directory must be in a separate partition from the Apache web servers system files.                                                                                                         |
| V-92803      | The Apache web server must display a default hosted application web page, not a directory listing, when a requested web page cannot be found.                                                                              |
| V-92815      | The Apache web server must restrict inbound connections from nonsecure zones.                                                                                                                                              |
| V-92817      | Non-privileged accounts on the hosting system must only access Apache web server security-relevant information and functions through a distinct administrative account.                                                    |
| V-92819      | The Apache web server application, libraries, and configuration files must only be accessible to privileged users.                                                                                                         |
| V-92843      | The Apache web server must be configured in accordance with the security configuration settings based on DoD security configuration or implementation guidance, including STIGs, NSA configuration guides, CTOs, and DTMs. |

**Normal Checks**

These checks will follow the normal automation process and will report accurate STIG compliance PASS/FAIL.

| Check Number | Description                                                                                                                                                                                               |
|--------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| V-92761      | The Apache web server must perform server-side session management.                                                                                                                                                         |
| V-92763      | The Apache web server must use encryption strength in accordance with the categorization of data hosted by the Apache web server when remote connections are provided.                                                     |
| V-92769      | The Apache web server must produce log records containing sufficient information to establish what type of events occurred.                                                                                                |
| V-92779      | Users and scripts running on behalf of users must be contained to the document root or home directory tree of the Apache web server.                                                                                       |
| V-92781      | The Apache web server must be configured to use a specified IP address and port.                                                                                                                                           |
| V-92785      | The Apache web server must perform RFC 5280-compliant certification path validation.                                                                                                                                       |
| V-92801      | The Apache web server must be tuned to handle the operational requirements of the hosted application.                                                                                                                      |
| V-92805      | Warning and error messages displayed to clients must be modified to minimize the identity of the Apache web server, patches, loaded modules, and directory paths.                                                          |
| V-92807      | Debugging and trace information used to diagnose the Apache web server must be disabled.                                                                                                                                   |
| V-92809      | The Apache web server must set an absolute timeout for sessions.                                                                                                                                                           |
| V-92811      | The Apache web server must set an inactive timeout for sessions.                                                                                                                                                           |
| V-92821      | The Apache web server must only accept client certificates issued by DoD PKI or DoD-approved PKI Certification Authorities (CAs).                                                                                          |
| V-92831      | The Apache web server cookies, such as session cookies, sent to the client using SSL/TLS must not be compressed.                                                                                                           |
| V-92833      | Cookies exchanged between the Apache web server and the client, such as session cookies, must have cookie properties set to prohibit client-side scripts from reading the cookie data.                                     |
| V-92835      | Cookies exchanged between the Apache web server and the client, such as session cookies, must have cookie properties set to force the encryption of cookies.                                                               |                                                                                                                                
## Authors

Defense Information Systems Agency (DISA) https://www.disa.mil/

STIG support by DISA Risk Management Team and Cyber Exchange https://public.cyber.mil/

## Legal Notices

Copyright © 2020 Defense Information Systems Agency (DISA)