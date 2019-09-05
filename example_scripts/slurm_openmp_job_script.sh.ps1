#!/bin/bash
# Usage: sbatch slurm-openmp-job-script
# Prepared By: Kai Xi,  Apr 2015
#              help@massive.org.au

# NOTE: To activate a SLURM option, remove the whitespace between the '#' and 'SBATCH'

# To give your job a name, replace "MyJob" with an appropriate name
# SBATCH --job-name=MyJob


# To set a project account for credit charging, 
# SBATCH --account=pmosp


# Request CPU resource for a openmp job, suppose it is a 12-thread job
# SBATCH --ntasks=1
# SBATCH --ntasks-per-node=1
# SBATCH --cpus-per-task=12

# Memory usage (MB)
# SBATCH --mem-per-cpu=4000

# Set your minimum acceptable walltime, format: day-hours:minutes:seconds
# SBATCH --time=0-06:00:00


# To receive an email when job completes or fails
# SBATCH --mail-user=<You Email Address>
# SBATCH --mail-type=END
# SBATCH --mail-type=FAIL


# Set the file for output (stdout)
# SBATCH --output=MyJob-%j.out

# Set the file for error log (stderr)
# SBATCH --error=MyJob-%j.err


# Use reserved node to run job when a node reservation is made for you already
# SBATCH --reservation=reservation_name


# Command to run a openmp job
# Set OMP_NUM_THREADS to the same value as: --cpus-per-task=12
export OMP_NUM_THREADS=12
./you_openmp_program


