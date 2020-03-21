# FlutterEngineDebug

### 作用
使用该工程，通过Android Studio调试flutter engine的源码

### 使用说明

1. 获取该工程：

        执行 git clone https://github.com/sundyhy/FlutterEngineDebug.git

2. 获取flutterengine代码及编译需要的工具：
		
        执行 sh getfluttersource.sh

    该脚本会通过brew安装ant及ninja，然后在flutterengine目录执行gclient sync，获取flutterengine的代码，获取代码的配置在./flutterengine/.gclient里面已配置。
获取配置后会切换到master分支，如果需要其他分支代码，可以修改getfluttersource.sh脚本

3. 编译flutterengine代码：
	
        执行 sh buildfluttersource.sh

    该脚本会首先调用gn配置工程，然后调用ninja编译，编译完后自动拷贝libflutter.so到工程fe的目录

4. 添加需要调试的app：
	
        将需要调试的app apk文件的绝对路径设置在settings.gradle中ext.hostApk中

    注：这里的app为你需要调试的项目编译后的文件，跟本工程无关，非本工程生成

5. 调试flutterengine代码：
    
    1.	用Android Studio打开FlutterEngineDebug工程
    2.	连接手机编译项目
    3.	通过调试启动或者Attach to Android Application
    4.	直接在./flutterengine/src/flutter里面需要调试的C++代码里面打上断点，即可调试
    5.	如果还需要调试java代码，将fe/build.gradle文件里面注释掉的语句java.srcDirs = ['src/main/java', '../flutterengine/src/flutter/shell/platform/android']打开即可