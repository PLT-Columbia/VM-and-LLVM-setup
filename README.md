# COMS W4115: Programming Assignment 2.1 (Environment Setup 2)

## Course Summary

**Course:** COMS 4115 Programming Languages and Translators (Fall 2020)  
**Website:** https://www.rayb.info/fall2020  
**University:** Columbia University  
**Instructor:** [Prof. Baishakhi Ray](https://www.rayb.info/)

## Logistics
- **Announcement Date:** Thursday, September 24, 2020
- **Due Date:** Sunday, October 4, 2020 by 11:59 PM. <font color="red">**No extensions!**</font>
- **Total Points:** 5

## Assignment

This assignment is the second of two assignments involving setting up your environment in preparation for future programming assignments. Here, we will create a virtual machine (optional) and set up LLVM.

### Creating a Virtual Machine (Optional)

If you do not have an environment or VM available for setting up LLVM, we suggest requesting for a virtual machine or setting up your own machine. Please choose exactly one of the following options if the previous statement applies to you.

#### Google Cloud VMs

We have allocated Google Cloud (GCloud) credits for each student. Please email or create a private Piazza post to the instructors/TAs expressing your interest in requesting for GCloud credits, and you will be sent a $100 GCloud coupon by email.

1. Follow these initial [instructions](http://www.cs.columbia.edu/crf/cloud-cs/) to redeem your course coupon.
2. Create a project for this class, and give it a name (_e.g._, "coms4115"). This will likely have to be created within the _columbia_ organization. 
3. Navigate to *Compute Engine* (while in the context of the new project), and create a virtual machine to match the specification shown below (you may select your own name). The most notable changes are:
	* Leave the region/zone to `us-central1` and `us-central1-a`.
	* Machine type: `n1-standard-4`
	* Click "change'' under boot disk to select `Ubuntu 18.04 LTS`, and add at least 120 GB of persistent hard disk (HDD).
	* Leave the defaults for the remaining options: `Compute Engine Default Service Account`, `Allow default access`, and `Unchecked boxes for Allow HTTP/HTTPS traffic`.
4. Upon creation of the VM, SSH into the machine by clicking the SSH button next to the instance in Compute Engine, or add your SSH keys to log in using your own terminal. More information on access can be found [here](https://cloud.google.com/compute/docs/instances/connecting-to-instance).

<p align="center"> <img src="vm-setup.png" alt="Virtual Machine Settings" width="70%"/> </p>

<font color="red">**IMPORTANT:**</font> You must _shut down_ your instance when not in use. There are not enough credits to keep the server running continuously. Ensure it is shut down when not in use so that you do not lose credits unintentionally. There should be enough credits for about 850 hours of compute time.

Note that the GCloud VMs will have the same Ubuntu base image, and you can install necessary libraries on top of LLVM Clang in the future.

#### VMware Workstation/Oracle VirtualBox VMs

You may choose to use other open-source software to create your VMs. If you do so, please follow these steps:

* Create Ubuntu 18.04.3 Virtual Machine by using either VMware Workstation 15 Player or Oracle VM VirtualBox to install Ubuntu 18.04.3.
    - At least 8 GB memory is required for the virtual machine, and 12 GB memory is recommended.
    - At least 120 GB hard disk is required.
* Install the necessary packages (which can also be installed by running the `setup.sh` shell script we provide):
    - `sudo apt update`
    - `sudo apt upgrade`
    - `sudo apt install build-essential subversion cmake python3-dev`
    - `sudo apt install libncurses5-dev libxml2-dev libedit-dev swig`
    - `sudo apt install doxygen graphviz xz-utils git`

### Setting Up LLVM (5 Points)

