# This command creates a new directory named 'java' in the current directory.
mkdir java

# This command downloads the OpenJDK 22.0.1 tar.gz file from the official website using 'curl' and saves it in the '~/java' directory.
# The '--output' option specifies the location and name of the saved file.
curl https://download.java.net/java/GA/jdk22.0.1/c7ec1332f7bb44aeba2eb341ae18aca4/8/GPL/openjdk-22.0.1_linux-aarch64_bin.tar.gz --output ~/java/openjdk-22.0.1_linux-aarch64_bin.tar.gz

# This command extracts the downloaded tar.gz file into the '~/java' directory.
# The '-xvf' option stands for eXtract, Verbose and File respectively.
tar -xvf ~/java/openjdk-22.0.1_linux-aarch64_bin.tar.gz -C ~/java

# This command adds the path of the 'bin' directory inside the extracted JDK directory to the PATH environment variable.
# The '>>' operator appends this line to the end of the '.bashrc' file.
# The '~/.bashrc' file is a script that is executed whenever a new terminal session is started in interactive mode.
echo "export PATH=\$PATH:~/java/jdk-22.0.1/bin" >> ~/.bashrc

# This command sources the '.bashrc' file, which means it executes the file in the current shell, 
# and applies any changes made to the environment variables in the current session.
source ~/.bashrc
