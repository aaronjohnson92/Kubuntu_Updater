sudo apt-get install -y curl python3 python3-pip build-essential git python3 python3-dev ffmpeg libsdl2-dev libsdl2-image-dev libsdl2-mixer-dev libsdl2-ttf-dev libportmidi-dev libswscale-dev libavformat-dev libavcodec-dev zlib1g-dev libgstreamer1.0 gstreamer1.0-plugins-base gstreamer1.0-plugins-good mercurial libsdl-image1.2-dev libsdl-mixer1.2-dev libsdl-ttf2.0-dev libsmpeg-dev libsdl1.2-dev libportmidi-dev libswscale-dev libavformat-dev libavcodec-dev zlib1g-dev python3-setuptools python3-wheel gcc playonlinux python3-setuptools python3-opengl python3-enchant python3-dev build-essential libgl1-mesa-dev libgles2-mesa-dev zlib1g-dev apt-transport-https cpu-checker qemu-kvm libvirt-bin ubuntu-vm-builder bridge-utils python-pip python-dev bochs nasm qemu virt-manager libxft-dev

sudo sh -c 'curl https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -'
sudo sh -c 'curl https://storage.googleapis.com/download.dartlang.org/linux/debian/dart_stable.list > /etc/apt/sources.list.d/dart_stable.list'

sudo apt-get update 
sudo apt-get install dart

cd ~

mkdir `pwd`/Libraries
cd `pwd`/Libraries
mkdir Android_Sdk

wget - http://www.portaudio.com/archives/pa_stable_v190600_20161030.tgz
tar -xvzf pa_stable_v190600_20161030.tgz
cd portaudio
echo n | ./configure && make
echo n | sudo make install
sudo apt-get update

echo "Please go to https://developer.android.com/studio/ and download android studio. Extract the file to your home drive. cd~ cd`pwd`/android-studio/bin and run ./studio.sh in another terminal"
echo "When the program runs do the following: Select the do not import settings button and then click okay, click the Next button select custom and then Next again"
echo "Select all of the check boxes and then set the SDK installation path to /home/your-user-name/Libraries/Android_Sdk and then click the Next button, click the next button again and then click the Finish button"
echo "Once the installation process has been completed click the Finish button. Click the Configure button in the lower right hand corner of the window then click the Settings button, locate and click the Plugin button"
echo "Finally, click the Browse Repositories button. Type Flutter and then click install, this will prompt you to also install the dart plugin, do this now. Once done close android studio and continue on with this script."
read -p "Continue with installation(y/n)" ok

cd ~
cd `pwd`/Libraries

git clone -b master https://github.com/flutter/flutter.git
cd flutter
cd bin
echo ./flutter doctor --android-licenses

cd ~ 
cd `pwd`/Libraries

wget - https://dl.bintray.com/boostorg/release/1.67.0/source/boost_1_67_0.tar.gz
tar -xvzf boost_1_67_0.tar.gz
cd boost_1_67_0
echo n | ./bootstrap.sh
echo n | sudo ./b2 install variant=release link=static runtime-link=static threading=multi

cd ~

wget - https://sourceforge.net/projects/nanapro/files/latest/download
unzip nana 1.5.6.zip -d `pwd`/Libraries/
cd ~
cd `pwd`\Libraries\nana\build\makefile\
sudo make

cd ~

sudo -H python3 -m pip install Cython==0.23.0 
sudo -H python3 -m pip install pyttsx3 chatterbot PyAudio PocketSphinx SpeechRecognition bleach boto boto3 botocore bz2file cffi click colorama cryptography docutils fire flashtext Flask future gensim html5lib httplib2 idna imbalanced-learn jedi Jinja2 jupyter jupyter-console jupyter-core kappa Keras luminoth lxml nltk notebook numpy pandas pendulum Pillow pyasn1 pycrypto pygobject pymongo PyNaCl PyOpenGL PyQt5 PySDL2 pytz PyYAML requests rsa scikit-learn scipy selenium setuptools sip six SQLAlchemy tensorflow tensorflow-gpu Theano tornado urllib3 wheel xlwt pyexcel pyexcel-io pyexcel-xls pyexcel-xlsx pyexcel-ods3 pyexcel-ods pyexcel-xlsxw pyexcel-xlsxr pyexcel-odsr pyexcel-htmlr pyexcel-text pyexcel-handsontable pyexcel-pygal pyexcel-sortable pyexcel-gantt nose

sudo -H python -m pip install Cython==0.23.0
sudo -H python -m pip install pyttsx chatterbot PyAudio PocketSphinx SpeechRecognition bleach boto botocore bz2file cffi click colorama cryptography docutils fire flashtext Flask future gensim html5lib httplib2 idna imbalanced-learn jedi Jinja2 jupyter jupyter-console jupyter-core kappa Keras luminoth lxml nltk notebook numpy pandas pendulum Pillow pyasn1 pycrypto pygobject pymongo PyNaCl PyOpenGL PySDL2 pytz PyYAML requests rsa scikit-learn scipy selenium setuptools six SQLAlchemy tensorflow tensorflow-gpu Theano tornado urllib3 wheel xlwt pyexcel pyexcel-io pyexcel-xls pyexcel-xlsx pyexcel-ods3 pyexcel-ods pyexcel-xlsxw pyexcel-xlsxr pyexcel-odsr pyexcel-htmlr pyexcel-text pyexcel-handsontable pyexcel-pygal pyexcel-sortable pyexcel-gantt nose

read -p "If you're running 18.04 Bionic Beaver with AMD64 you can install Oracle virtual machine if you want: (y/n)" ok
wget - https://download.virtualbox.org/virtualbox/5.2.10/virtualbox-5.2_5.2.10-122088~Ubuntu~bionic_amd64.deb
if ! [ $ok = "y" -o $ok = "Y" ]; then pass 
    echo n | sudo dpkg -i virtualbox-5.2_5.2.10-122088~Ubuntu~bionic_amd64.deb
    sudo apt-get install -f
fi

sudo dpkg --add-architecture i386 
sudo apt-get update 
sudo apt-get install wine-development
