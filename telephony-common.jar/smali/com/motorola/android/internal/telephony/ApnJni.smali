.class public Lcom/motorola/android/internal/telephony/ApnJni;
.super Ljava/lang/Object;
.source "ApnJni.java"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    :try_start_0
    const-string v1, "ApnJni"

    const-string v2, "Trying to load libapnjni"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    const-string v1, "apnjni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 38
    const-string v1, "ApnJni"

    const-string v2, "worked..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .local v0, "ule":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 40
    .end local v0    # "ule":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 41
    .restart local v0    # "ule":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "ApnJni"

    const-string v2, "ERROR: Could not load libapnjni"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native createApn(ILcom/motorola/android/internal/telephony/ApnInfo;)I
.end method

.method public static native deleteApn(II)I
.end method

.method public static native listApns(I)[Lcom/motorola/android/internal/telephony/ApnInfo;
.end method

.method public static native queryApn(IILcom/motorola/android/internal/telephony/ApnInfo;)I
.end method

.method public static native setApn(IILcom/motorola/android/internal/telephony/ApnInfo;)I
.end method
