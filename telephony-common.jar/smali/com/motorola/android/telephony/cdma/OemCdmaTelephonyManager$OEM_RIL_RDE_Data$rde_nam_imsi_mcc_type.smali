.class public Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_nam_imsi_mcc_type;
.super Ljava/lang/Object;
.source "OemCdmaTelephonyManager.java"

# interfaces
.implements Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "rde_nam_imsi_mcc_type"
.end annotation


# instance fields
.field public imsi_mcc:S

.field public nam:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1961
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1962
    iput-byte v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_nam_imsi_mcc_type;->nam:B

    .line 1963
    iput-short v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_nam_imsi_mcc_type;->imsi_mcc:S

    .line 1964
    return-void
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_nam_imsi_mcc_type;
    .locals 2
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 1972
    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_nam_imsi_mcc_type;

    invoke-direct {v0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_nam_imsi_mcc_type;-><init>()V

    .line 1973
    .local v0, "imsiMccType":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_nam_imsi_mcc_type;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_nam_imsi_mcc_type;->nam:B

    .line 1974
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput-short v1, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_nam_imsi_mcc_type;->imsi_mcc:S

    .line 1975
    return-object v0
.end method


# virtual methods
.method public serialize(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 1967
    iget-byte v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_nam_imsi_mcc_type;->nam:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1968
    iget-short v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_nam_imsi_mcc_type;->imsi_mcc:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1969
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1979
    const/4 v0, 0x3

    return v0
.end method
