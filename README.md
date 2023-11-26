# Paper-3-Implementation-Ubiquitous-Computing

## Setting Up the Environment

1. **Login to HPC:**
   - Use your HPC credentials to log in.
   - Navigate to the home directory.

2. **Load Conda Environment:**
   - Load the conda environment with the required libraries.
     ```bash
     module load conda=python/3.7
     ```

3. **Create a New Conda Environment:**
   - Run the following command to create a new conda environment named `test_env`.
     ```bash
     conda create --name test_env python==3.7
     ```

4. **Activate the Virtual Environment:**
   - Activate the virtual environment using:
     ```bash
     conda activate test_env
     ```

## Clone the Repository

5. **Clone the GitHub Repository:**
   - Clone the project repository into the current directory.
     ```bash
     git clone https://github.com/ashish7515/Paper-3-Implementation-Ubiquitous-Computing.git
     ```

   This will copy the `paper_implementation.py` and the project paper PDF along with the required files to your home directory.

## Install Dependencies

6. **Generate Requirements.txt:**
   - Generate the `requirements.txt` file using pipreqs.
     ```bash
     pip install pipreqs
     pipreqs .
     ```

   This creates a `requirements.txt` file containing all the required packages.

7. **Install Dependencies:**
   - Install the packages listed in `requirements.txt`.
     ```bash
     pip install -r requirements.txt
     ```

## Job Submission

8. **Update Job Description (Optional):**
   - The default job description is present in the `slrum.sh` file.
   - You can update or change anything in this file based on your requirements.

9. **Submit the Job:**
   - Submit the job using the following command.
     ```bash
     sbatch slrum.sh
     ```

   This will create and submit the job to the HPC, and it will start executing over the compute nodes.

   The output of the job will be saved in `dl_out`, and any errors will be saved in `dl_err`.
