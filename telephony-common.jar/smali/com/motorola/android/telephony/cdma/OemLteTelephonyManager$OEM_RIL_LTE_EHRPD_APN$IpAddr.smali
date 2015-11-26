.class public Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_EHRPD_APN$IpAddr;
.super Ljava/lang/Object;
.source "OemLteTelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_EHRPD_APN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IpAddr"
.end annotation


# instance fields
.field public ipv4Addr:I

.field public ipv6Addr:[J

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
