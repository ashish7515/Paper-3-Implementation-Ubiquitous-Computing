# Paper-3-Implementation-Ubiquitous-Computing

---

## Implementation of Quantization and Training of Neural Networks for Efficient Integer-Arithmetic-Only Inference

**Group Number - 25**
- Ashish Kumar
- M R Akshit
- Harshit Swarnkar

   
---
## Setting Up the Environment

1. **Login to HPC:**
   - Use your HPC credentials to log in using the command.
     ```bash
     ssh <username>@172.16.40.30
     ```
   - Navigate to the home directory.

2. **Load Conda Environment:**
   - Load the conda environment with the pre-downloaded libraries because Conda environment has been installed with most of the popular python
packages
     ```bash
     module load conda-python/3.7
     ```

3. **Create a New Conda Environment:**
   - Run the following command to create a new conda environment named `test_env`.
     ```bash
     conda create --name test_env python=3.7
     ```

4. **Activate the Virtual Environment:**
   - Activate the virtual environment using:
     ```bash
     conda activate test_env
     ```

## Clone the Repository

5. **Clone the GitHub Repository:**
   - Clone the project repository into the current home directory.
     ```bash
     git clone https://github.com/ashish7515/Paper-3-Implementation-Ubiquitous-Computing.git
     ```
6. **Add SSH Key to Git (If you encounter errors):**
   - If you encounter any Git-related errors, it might be due to authentication issues.
   - Add your SSH key to your Git credentials using the following steps:
     - Generate an SSH key if you haven't already: [GitHub SSH Key Setup Guide](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
     - Add your SSH key to your GitHub account: [Adding a new SSH key to your GitHub account](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account)
     - Retry the `git clone` command.

   This will copy the necessary python files and the project paper PDF along with the required files to create a job in your home directory.

## Install Dependencies

7. **Generate Requirements.txt:**
   - Generate the `requirements.txt` file using pipreqs.
     ```bash
     pip install pipreqs
     pipreqs .
     ```

   This creates a `requirements.txt` file containing all the required packages.

8. **Install Dependencies:**
   - Install the packages listed in `requirements.txt`.
     ```bash
     pip install -r requirements.txt
     ```

## Job Submission

9. **Update Job Description (Optional):**
   - The default job description is present in the `slrum_file.sh` file.
   - You can update or change anything in this file based on your requirements.

10. **Submit the Job:**
   - To place a job on the compute nodes, we write a bash script (slrum_file) and then submit it. ParamShivay can then smartly handle the resource requirements based on availability.
   - Submit the job using the following command.
     ```bash
     sbatch slrum_file.sh
     ```

   This will create and submit the job to the HPC, and it will start executing over the compute nodes.

   The output of the job will be saved in `dl_out`, and any errors will be saved in `dl_err`.


## Checking Job Status and Outputs

11. **Check Job Status:**
    - You can check the status of your job using the following command:
      ```bash
      scontrol show job <job_ID>
      ```
      Replace `<job_ID>` with the actual job ID (without angular brackets).

12. **Check Outputs:**
    - To check the outputs, you can use tools like `vim`. For example:
      ```bash
      vim dl_out
      ```
      This allows you to view the output file.

Feel free to adjust any details or wording to better suit your specific instructions or context.




