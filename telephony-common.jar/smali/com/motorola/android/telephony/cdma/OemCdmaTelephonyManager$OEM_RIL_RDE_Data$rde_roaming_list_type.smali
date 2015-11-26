.class public Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_roaming_list_type;
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
    name = "rde_roaming_list_type"
.end annotation


# static fields
.field public static final NV_SIZE_OF_RAM_ROAMING_LIST:I = 0x4006


# instance fields
.field public roaming_list:[B

.field public size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1793
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1794
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_roaming_list_type;->size:I

    .line 1795
    return-void
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_roaming_list_type;
    .locals 4
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 1809
    new-instance v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_roaming_list_type;

    invoke-direct {v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_roaming_list_type;-><init>()V

    .line 1810
    .local v1, "pt":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_roaming_list_type;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_roaming_list_type;->size:I

    .line 1811
    iget v2, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_roaming_list_type;->size:I

    new-array v2, v2, [B

    iput-object v2, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_roaming_list_type;->roaming_list:[B

    .line 1812
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_roaming_list_type;->size:I

    if-ge v0, v2, :cond_0

    .line 1813
    iget-object v2, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_roaming_list_type;->roaming_list:[B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    aput-byte v3, v2, v0

    .line 1812
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1815
    :cond_0
    const-string v2, "OemCdmaTelephonyManager"

    const-string v3, "rde_roaming_list_type deserialize()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    return-object v1
.end method


# virtual methods
.method public serialize(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 1803
    const-string v0, "OemCdmaTelephonyManager"

    const-string v1, "rde_roaming_list_type serialize()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1804
    iget v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_roaming_list_type;->size:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1805
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_roaming_list_type;->roaming_list:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1806
    return-void
.end method

.method public setRoamingList([B)V
    .locals 1
    .param p1, "prl_list"    # [B

    .prologue
    .line 1798
    iput-object p1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_roaming_list_type;->roaming_list:[B

    .line 1799
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_roaming_list_type;->roaming_list:[B

    array-length v0, v0

    iput v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_roaming_list_type;->size:I

    .line 1800
    return-void
.end method

.method public size()I
    .locals 2

    .prologue
    .line 1821
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_roaming_list_type;->roaming_list:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v1, 0x4

    .line 1822
    .local v0, "s":I
    return v0
.end method
