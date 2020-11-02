FROM ubuntu:16.04
MAINTAINER Islam A. Ali <islam.a.mustafa@gmail.com>



# [1] General Dependencies
RUN echo "[Dockerfile Info] Installing GENERAL Dependencies ......"
RUN apt-get update && apt-get install -y \
	 	build-essential \
		cmake \
		pkg-config \
		htop \
		gedit \
		wget \
		git \
		unzip \
		software-properties-common
		

# ------------------------------------------------------------------------------------------                                 
# [2] OpenCV
ENV OPENCV 3.4.1
RUN echo "[Dockerfile Info] Installing OPENCV Dependencies ......"
RUN apt-get update && apt-get install -y \
	build-essential \
	libgtk2.0-dev\
	libavcodec-dev\
	libavformat-dev\ 
	libswscale-dev \
	python3.5-dev \
	python3-numpy \
	libtbb2 \
	libtbb-dev
	
RUN apt-add-repository "deb http://security.ubuntu.com/ubuntu xenial-security main"
RUN apt-get update && apt-get install -y \
	libjasper1\
	libjasper-dev \
	libjpeg-dev \
	libpng-dev \
	libtiff5-dev \
	libjasper-dev \
	libdc1394-22-dev \
	libeigen3-dev \
	libtheora-dev \
	libvorbis-dev \
	libxvidcore-dev \
	libx264-dev \
	sphinx-common \
	libtbb-dev \
	yasm \
	libfaac-dev \
	libopencore-amrnb-dev \
	libopencore-amrwb-dev \
	libopenexr-dev \
	libgstreamer-plugins-base1.0-dev \
	libavutil-dev \
	libavfilter-dev \
	libavresample-dev

RUN echo "[Dockerfile Info] Installing OPENCV ......"
RUN cd /opt && \
	wget https://github.com/opencv/opencv/archive/3.4.1.zip && \
	unzip 3.4.1.zip && \
	cd opencv-3.4.1 && \
	mkdir build
RUN cd /opt/opencv-3.4.1/build && \ 
	cmake -D CMAKE_BUILD_TYPE=RELEASE -D WITH_CUDA=OFF -D WITH_OPENGL=OFF .. && \
	make -j8 && \
	make install

	
# ------------------------------------------------------------------------------------------
# [3] Pangolin
RUN echo "[Dockerfile Info] Installing PNGOLIN Dependencies ......"
RUN apt-get update && apt-get install -y \
		libgl1-mesa-dev \
		libglew-dev \
		libpython2.7-dev \
		ffmpeg libavcodec-dev libavutil-dev libavformat-dev libswscale-dev libavdevice-dev \
		libdc1394-22-dev libraw1394-dev \		
		libjpeg-dev libpng12-dev libtiff5-dev libopenexr-dev

RUN echo "[Dockerfile Info] Installing PNGOLIN ......"
RUN mkdir -p ~/pangolin && \
		cd ~/pangolin && \
		git clone https://github.com/stevenlovegrove/Pangolin.git && \
		cd Pangolin && \
		mkdir build && \
		cd build && \
		cmake .. && \
		cmake --build .	


# ------------------------------------------------------------------------------------------
# [4] Eigen3
RUN echo "[Dockerfile Info] Installing EIGEN3 Dependencies ......"
# none 
RUN echo "[Dockerfile Info] Installing EIGEN3 ......"
#RUN mkdir -p ~/eigenLib && \
#	cd ~/eigenLib && \
#	curl -fsSL http://bitbucket.org/eigen/eigen/get/3.3.2.tar.gz -o eigen.tar.gz \
#	cd eigen && \
#	mkdir build && \
#	cd build && \
#    	cmake -D CMAKE_INSTALL_PREFIX=/usr -D CMAKE_BUILD_TYPE=RELEASE .. && \
#    	make install 
 
RUN curl -fsSL "$EIGEN_DOWNLOAD_URL" -o eigen.tar.gz && \
	mkdir /usr/include/eigen &&\
  	tar -xf eigen.tar.gz --strip-components=1 -C /usr/include/eigen && \
  	rm eigen.tar.gz
    	
# ------------------------------------------------------------------------------------------
# [5] Orb-slam2
RUN echo "[Dockerfile Info] Installing ORB-SLAM2 ......"
RUN mkdir -p ~/orbslam2 && \
	cd ~/orbslam2 && \
	git clone https://github.com/raulmur/ORB_SLAM2.git ORB_SLAM2 && \
	cd ORB_SLAM2 && \
	chmod +x build.sh && \
	./build.sh   


