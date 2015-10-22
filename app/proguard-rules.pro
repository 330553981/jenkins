# To enable ProGuard in your project, edit project.properties
# to define the proguard.config property as described in that file.
#
# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in ${sdk.dir}/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the ProGuard
# include property in project.properties.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class: 

-keepclassmembers class * implements android.os.Parcelable {
    static android.os.Parcelable$Creator CREATOR;
}

-keepclassmembers class * {
   public <init>(org.json.JSONObject);
}

-keep public class com.jenkins.R$*{
    public static final int *;
}

-keepclassmembers enum * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}

-keepclasseswithmembernames class * {
    native <methods>;
}

-optimizationpasses 5 
-dontskipnonpubliclibraryclassmembers
-dontskipnonpubliclibraryclasses
-dontpreverify
-ignorewarnings
-dontwarn Decoder.** 
-dontwarn android.support.v4.**
-dontwarn android.support.**
-dontwarn org.apache.http.** 
-dontwarn android.net.http.** 
-dontwarn okio.**
-dontwarn android.webkit.**
-dontwarn org.apache.http.**
-dontwarn org.eclipse.jdt.annotation.**
-keep class org.apache.http.** { *; }
-keepattributes *Annotation*
-keepattributes *JavascriptInterface*
-keepattributes Signature
-ignorewarnings
-dontwarn com.google.gson.** 
-dontwarn Decoder.** 
-dontwarn android-support-v4.**
-keep class com.google.gson.**{*;} 
-keep class Decoder.**{*;} 
-keep class android.support.v4.**{*;} 
-keep class android.support.v7.**{*;}
-keep class android.net.http.** { *;}
-keep class **.R$* {*;} 
-keep public class android.webkit.**
-keep public class * extends android.app.Fragment  
-keep public class * extends android.app.Activity
-keep public class * extends android.app.Application
-keep public class * extends android.app.Service
-keep public class * extends android.content.BroadcastReceiver
-keep public class * extends android.content.ContentProvider
-keep public class * extends android.app.backup.BackupAgentHelper
-keep public class * extends android.preference.Preference
-keep public class * extends android.support.v4.**
-keep class **$Properties

-keepclassmembers class fqcn.of.javascript.interface.for.webview {
 	public *;
}

-keepattributes Exceptions,InnerClasses

-keepclassmembers class **.R$* {
    public static <fields>;
}