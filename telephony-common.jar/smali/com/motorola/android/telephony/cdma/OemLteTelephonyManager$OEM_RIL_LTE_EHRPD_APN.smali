.class public Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_EHRPD_APN;
.super Ljava/lang/Object;
.source "OemLteTelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OEM_RIL_LTE_EHRPD_APN"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_EHRPD_APN$IpAddr;
    }
.end annotation


# static fields
.field public static final MOT_QMI_SPRINT_DS_PROFILE_MAX_APN_STRING_LEN_V01:I = 0x67


# instance fields
.field public apnName:Ljava/lang/String;

.field public ipAddr:Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_EHRPD_APN$IpAddr;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_EHRPD_APN$IpAddr;)V
    .locals 0
    .param p1, "apnName"    # Ljava/lang/String;
    .param p2, "ipAddr"    # Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_EHRPD_APN$IpAddr;

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object p1, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_EHRPD_APN;->apnName:Ljava/lang/String;

    .line 147
    iput-object p2, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_EHRPD_APN;->ipAddr:Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_EHRPD_APN$IpAddr;

    .line 148
    return-void
.end method
