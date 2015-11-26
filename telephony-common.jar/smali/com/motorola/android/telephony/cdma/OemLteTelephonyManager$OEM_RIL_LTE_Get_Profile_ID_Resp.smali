.class public Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Get_Profile_ID_Resp;
.super Ljava/lang/Object;
.source "OemLteTelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OEM_RIL_LTE_Get_Profile_ID_Resp"
.end annotation


# instance fields
.field public profileId:B

.field public profileIdValid:Z


# direct methods
.method public constructor <init>(ZB)V
    .locals 0
    .param p1, "profileIdValid"    # Z
    .param p2, "profileId"    # B

    .prologue
    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    iput-boolean p1, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Get_Profile_ID_Resp;->profileIdValid:Z

    .line 414
    iput-byte p2, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Get_Profile_ID_Resp;->profileId:B

    .line 415
    return-void
.end method
