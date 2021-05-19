﻿using APKRepackageSDKTool;
using Mono.Web;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Security.Policy;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

public class CompileTool
{
    OutPutCallBack callBack;
    OutPutCallBack errorCallBack;
    CmdService cmd;

    public CompileTool(OutPutCallBack callBack, OutPutCallBack errorCallBack)
    {
        this.callBack = callBack;
        this.errorCallBack = errorCallBack;

        cmd = new CmdService(OutPut, errorCallBack);
    }

    public void OutPut(string content)
    {
        callBack?.Invoke(content);
    }

    public void ErrorOutPut(string content)
    {
        errorCallBack?.Invoke(content);
    }

    public void Jar2Smali(string jarPath, string filePath)
    {
        string smaliPath = filePath + "\\smali";
        string JavaTempPath = PathTool.GetCurrentPath() + "\\JavaTempPath";
        string jarName = FileTool.GetFileNameByPath(jarPath);
        string tempPath = JavaTempPath + "\\" + jarName;

        FileTool.CreatePath(JavaTempPath);

        OutPut("I: 放入Jar :" + jarName);

        //Jar to dex
        cmd.Execute("java -jar " + EditorData.GetDxPath() + " --dex --output=" + tempPath + " " + jarPath , true,true, outPutCmd: false);

        //dex to smali
        cmd.Execute("java -jar baksmali-2.1.3.jar --o=" + smaliPath + " " + tempPath, true, true, outPutCmd: false);

        ////dex to smali
        //cmd.Execute("java -jar "+ EditorData.GetBaksmaliPath() + " d " + tempPath  + " -o " + smaliPath);

        //删除临时目录
        //FileTool.DeleteDirectoryComplete(JavaTempPath);
    }

    public void GenerateRJar(string R_Path, string aimPath, string name, string sdkPath)
    {
        if (FindRPath(R_Path) != null)
        {
            string javaPath = FindRPath(R_Path);
            string jarPath = R_Path + name + "_R.jar";
            string rPath = aimPath + "/R.txt";

            //编译R.java文件
            cmd.Execute("javac -encoding UTF-8 -source 1.7 -target 1.7 \"" + javaPath + "\"", true, true, outPutCmd: false);

            //删除掉java文件
            FileTool.DeleteFile(javaPath);

            cmd.Execute("cd " + R_Path);

            //取第一个文件夹名作为命令开头
            string fileName = FileTool.GetDirectoryName(Directory.GetDirectories(R_Path)[0]);

            //生成的R文件的jar
            cmd.Execute("jar cvf \"./" + name + "_R.jar\" \"./" + fileName + "\"", path: R_Path,outPutCmd:false);

            if (File.Exists(jarPath))
            {
                //复制R文件到库
                File.Copy(jarPath, sdkPath + "/" + name + "_R.jar", true);

                OutPut("I: R文件生成完成！ ");
            }
            else
            {
                ErrorOutPut("E: R文件生成失败！ 请检查清单文件是否正确！ " + name);
            }
        }
        else
        {
            ErrorOutPut("E: R文件生成失败！ 请检查清单文件是否正确！ " + name);
        }
    }

    public  void RJava2Smali(string R_Path,string aimPath)
    {
        //转换smli文件
        if (FindRPath(R_Path) != null)
        {
            string javaPath = FindRPath(R_Path);
            string dexPath = R_Path + "classes.dex";
            string jarPath = R_Path + "R.jar";

            OutPut("编译R.java文件");
            //编译R.java文件
            cmd.Execute("javac -encoding UTF-8 -source 1.7 -target 1.7 \"" + javaPath + "\"", true, true);

            //切换当前目录
            cmd.Execute("cd " + R_Path);

            //取第一个文件夹名作为命令开头
            string fileName = FileTool.GetDirectoryName(Directory.GetDirectories(R_Path)[0]);

            OutPut("生成的R文件的jar");
            //生成的R文件的jar
            cmd.Execute("jar cvf \"./R.jar\" \"./" + fileName + "\"", path: R_Path);

            OutPut("Jar to dex");
            //Jar to dex
            cmd.Execute("java -jar " + EditorData.GetDxPath() + " --dex --output="+ dexPath + " " + jarPath);

            File.Delete(jarPath);

            OutPut("dex to smali");
            //dex to smali
            cmd.Execute("java -jar baksmali-2.1.3.jar --o=\"" + aimPath + "/smali\" " + dexPath);

            File.Delete(dexPath);
        }
        else
        {
            throw new Exception("R文件生成失败！ 请检查清单文件是否正确！");
        }
    }

    public void GenerateRJar2APK(string R_Path, string rarPath, string name, string aimPath)
    {
        if (FindRPath(R_Path) != null)
        {
            string javaPath = FindRPath(R_Path);
            string jarPath = R_Path + name + "_R.jar";
            string rPath = rarPath + "/R.txt";

            //编译R.java文件（编译成了class文件）
            cmd.Execute("javac -encoding UTF-8 -source 1.7 -target 1.7 \"" + javaPath + "\"", true, true);

            //删除掉java文件
            FileTool.DeleteFile(javaPath);

            cmd.Execute("cd " + R_Path);

            //取第一个文件夹名作为命令开头
            string fileName = FileTool.GetDirectoryName(Directory.GetDirectories(R_Path)[0]);

            //生成的R文件的jar
            cmd.Execute("jar cvf \"./" + name + "_R.jar\" \"./" + fileName + "\"", path: R_Path);

            if (File.Exists(jarPath))
            {
                Jar2Smali(jarPath, aimPath);
                OutPut("I: R文件生成完成！ ");
            }
            else
            {
                ErrorOutPut("E: RJar2APK R文件生成失败！  " + name);
            }
        }
        else
        {
            ErrorOutPut("E: RJar2APK R文件生成失败！" + name);
        }
    }

    public void CompileCustomJavaClass(SDKConfig sdkConfig,ChannelInfo channelInfo, string filePath)
    {
        string smaliPath = filePath + "\\smali";
        string JavaCompileTempPath = PathTool.GetCurrentPath() + "\\JavaCompileTempPath";
        string JavaCompileSrcPath = PathTool.GetCurrentPath() + "\\JavaCompileTempPath\\Src";
        string JavaCompileLibPath = PathTool.GetCurrentPath() + "\\JavaCompileTempPath\\Lib";
        string JavaFilePath = JavaCompileTempPath + "\\smali.java";
        string classFilePath = JavaCompileTempPath + "\\Class";
        string dexFilePath = JavaCompileTempPath + "\\smali.dex";

        CmdService cmd = new CmdService(OutPut, errorCallBack);

        //构造编译环境
        //创建Java类(替换关键字)
        for (int i = 0; i < sdkConfig.customJavaClass.Count; i++)
        {
            string javaName = JavaCompileSrcPath + "\\" + sdkConfig.customJavaClass[i].key + ".java";
            string s = AndroidTool.ReplaceKeyWord(sdkConfig.customJavaClass[i].value, channelInfo);
            FileTool.WriteStringByFile(javaName, s);
        }

        //复制Java库
        string libs = "";
        for (int i = 0; i < sdkConfig.customJavaLibrary.Count; i++)
        {
            string p = JavaCompileLibPath + "\\" + FileTool.GetFileNameByPath(sdkConfig.customJavaLibrary[i]);
            libs += p + ";";
            FileTool.CreateFilePath(p);

            string libPath = EditorData.SdkLibPath + sdkConfig.customJavaLibrary[i];
            File.Copy(libPath, p, true);
        }

        //创建导出目录
        FileTool.CreatePath(classFilePath);

        //Java to class
        cmd.Execute("javac  -classpath " + libs + " " + JavaCompileSrcPath + "\\*.java -d " + classFilePath);

        //class to dex
        cmd.Execute("java -jar " + EditorData.GetDxPath() + " --verbose --dex --output=" + dexFilePath + " " + classFilePath);

        //dex to smali
        cmd.Execute("java -jar " + EditorData.GetBaksmaliPath() + " --o=" + smaliPath + " " + dexFilePath);

        //删除临时目录
        FileTool.DeleteDirectoryComplete(JavaCompileTempPath);
    }

    public void Convert2AndroidX(string inputJar,string outPutJar)
    {
        if(string.IsNullOrEmpty(EditorData.JetifierPath))
        {
            errorCallBack("E: 没有配置 Jetifier 路径！请在首选项中配置！");
        }
        else
        {
            cmd.Execute(EditorData.JetifierPath + "/jetifier-standalone.bat  -i \"" + inputJar + "\" -o \"" + outPutJar + "\"");
            callBack("I: "+inputJar + " 转换完毕");
        }
    }

    //public string ReplaceKeyWord(string oldContent, ChannelInfo channelInfo)
    //{
    //    string result = oldContent;

    //    if (channelInfo != null)
    //    {
    //        result = result.Replace("{PackageName}", channelInfo.PackageName);
    //        result = result.Replace("${applicationId}", channelInfo.PackageName);
    //        //result = result.Replace("{applicationId}", channelInfo.PackageName);
    //    }

    //    return result;
    //}

    //public string ReplaceKeyWordbySDKInfo(string oldContent, SDKInfo SDKinfo)
    //{
    //    string result = oldContent;

    //    if(SDKinfo != null)
    //    {
    //        for (int i = 0; i < SDKinfo.sdkConfig.Count; i++)
    //        {
    //            result = result.Replace("{" + SDKinfo.sdkConfig[i].key + "}", SDKinfo.sdkConfig[i].value);
    //        }
    //    }

    //    return result;
    //}

    String FindRPath(string path)
    {
        try
        {
            //递归寻找目标文件路径并输出
            return FileTool.GetAllFileNamesByPath(path, new string[] { "java" })[0];
        }
        catch (Exception)
        {
            return null;
        }
    }


}