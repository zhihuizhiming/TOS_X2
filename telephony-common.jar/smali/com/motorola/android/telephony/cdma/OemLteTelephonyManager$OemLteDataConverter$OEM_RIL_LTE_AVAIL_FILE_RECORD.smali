.class public Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OemLteDataConverter$OEM_RIL_LTE_AVAIL_FILE_RECORD;
.super Ljava/lang/Object;
.source "OemLteTelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OemLteDataConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OEM_RIL_LTE_AVAIL_FILE_RECORD"
.end annotation


# instance fields
.field public bsid:I

.field public nid:I

.field public sid:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "sid"    # I
    .param p2, "nid"    # I
    .param p3, "bsid"    # I

    .prologue
    .line 1196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1197
    iput p1, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OemLteDataConverter$OEM_RIL_LTE_AVAIL_FILE_RECORD;->sid:I

    .line 1198
    iput p2, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OemLteDataConverter$OEM_RIL_LTE_AVAIL_FILE_RECORD;->nid:I

    .line 1199
    iput p3, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OemLteDataConverter$OEM_RIL_LTE_AVAIL_FILE_RECORD;->bsid:I

    .line 1200
    return-void
.end method
