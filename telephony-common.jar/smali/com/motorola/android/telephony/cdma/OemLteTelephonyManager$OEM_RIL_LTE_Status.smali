.class public Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Status;
.super Ljava/lang/Object;
.source "OemLteTelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OEM_RIL_LTE_Status"
.end annotation


# instance fields
.field public band:B

.field public bandwidth:B

.field public cellId:I

.field public dlChannel:I

.field public mcc:S

.field public mnc:S

.field public rsrp:S

.field public rsrq:B

.field public rssi:B

.field public state:I

.field public txPower:I

.field public ulChannel:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
