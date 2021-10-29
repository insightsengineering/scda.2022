
# Synthetic CDISC Data Archive 2021

This R package contains synthetic CDISC data that we accumulate over time in 2021. Once data is released it will not be changed anymore so that this data can be used for unit testing.

The data name convention is `<domain>_<?area?>_<added on date>`.

You can query the available data with

```r
data(package = "scda.2021")
```

# Installation

## Clone and install manually

1. Clone the repository

   The repository can be downloaded directly from the `github.com` site as an archive (see [GitHub tutorial on cloning to learn more](https://docs.github.com/en/github/creating-cloning-and-archiving-repositories/cloning-a-repository-from-github/cloning-a-repository)).
   Alternatively, Git command line tools offer the same functionality, without the need for manual downloading and unpacking the archive, but require to authenticate to GitHub.
   You can authenticate using a key pair or a Personal Access Token (PAT). Please refer to excellent GitHub tutorials on [connecting to GitHub using SSH](https://docs.github.com/en/github/authenticating-to-github) or [creating and using PAT](https://docs.github.com/en/github/authenticating-to-github/keeping-your-account-and-data-secure/creating-a-personal-access-token).
   1. Using PAT. Input in the Git Bash console, PowerShell or any Linux shell:

      ```sh
      $ git clone https://github.com/insightsengineering/scda.2021.git
      Username: your_username_goes_here
      Password: your_token_goes_here
      ```

   1. Using SSH. If set up properly, the repository is ready to be cloned executing:

       ```sh
       git clone https://github.com/insightsengineering/scda.2021.git
       ```

   This creates a sub-directory `scda.2021` containing the cloned repository.

2. Build and install

   The native R tools provide a quick way to install a package. Run in PowerShell or any Linux shell:

   ```sh
   R CMD build scda.2021
   ```

   This command builds the package and creates an archive. The name of the archive is output by the command at then of building. Then input in the shell:

   ```sh
   Rscript -e 'install.packages("name_of_the_archive")
   ```

   Here is an example of a real command (with name_of_the_archive substituted by the output of the build command):

   ```sh
   Rscript -e 'install.packages("scda.2021_0.1.0.9000.tar.gz")'
   ```

# Note

The data in this package is an accumulation over time of datasets that were needed for documentation and unit testing code. We do not attempt to provide reproducibility of the data. The git repository has the folder `data_raw` which might have the scripts to create some of the data.
