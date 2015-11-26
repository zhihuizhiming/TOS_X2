.class public Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_ss_profile_type;
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
    name = "rde_ss_profile_type"
.end annotation


# static fields
.field public static final MOT_NV_MAX_MN_AAA_SHARED_SECRET_LEN:I = 0x2

.field public static final NV_MAX_MN_AAA_SHARED_SECRET_LEN:I = 0x10

.field public static final NV_MAX_MN_HA_SHARED_SECRET_LEN:I = 0x10


# instance fields
.field public index:B

.field public mn_aaa_shared_secret:[B

.field public mn_aaa_shared_secret_length:B

.field public mn_ha_shared_secret:[B

.field public mn_ha_shared_secret_length:B


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x10

    const/4 v2, 0x0

    .line 1672
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1673
    iput-byte v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_ss_profile_type;->index:B

    .line 1674
    iput-byte v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_ss_profile_type;->mn_ha_shared_secret_length:B

    .line 1675
    iput-byte v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_ss_profile_type;->mn_aaa_shared_secret_length:B

    .line 1677
    new-array v1, v3, [B

    iput-object v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_ss_profile_type;->mn_ha_shared_secret:[B

    .line 1678
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_ss_profile_type;->mn_ha_shared_secret:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1679
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_ss_profile_type;->mn_ha_shared_secret:[B

    aput-byte v2, v1, v0

    .line 1678
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1682
    :cond_0
    new-array v1, v3, [B

    iput-object v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_ss_profile_type;->mn_aaa_shared_secret:[B

    .line 1683
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_ss_profile_type;->mn_aaa_shared_secret:[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1684
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_ss_profile_type;->mn_aaa_shared_secret:[B

    aput-byte v2, v1, v0

    .line 1683
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1686
    :cond_1
    return-void
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_ss_profile_type;
    .locals 4
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 1707
    new-instance v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_ss_profile_type;

    invoke-direct {v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_ss_profile_type;-><init>()V

    .line 1708
    .local v1, "ssProfType":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_ss_profile_type;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    iput-byte v2, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_ss_profile_type;->index:B

    .line 1709
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    iput-byte v2, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_ss_profile_type;->mn_ha_shared_secret_length:B

    .line 1710
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_ss_profile_type;->mn_ha_shared_secret:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1711
    iget-object v2, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_ss_profile_type;->mn_ha_shared_secret:[B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    aput-byte v3, v2, v0

    .line 1710
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1712
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    iput-byte v2, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_ss_profile_type;->mn_aaa_shared_secret_length:B

    .line 1713
    const/4 v0, 0x0

    :goto_1
    iget-object v2, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_ss_profile_type;->mn_aaa_shared_secret:[B

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 1714
    iget-object v2, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_ss_profile_type;->mn_aaa_shared_secret:[B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    aput-byte v3, v2, v0

    .line 1713
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1716
    :cond_1
    return-object v1
.end method


# virtual methods
.method public serialize(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v2, 0x0

    .line 1689
    iget-byte v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_ss_profile_type;->index:B

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1690
    iget-byte v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_ss_profile_type;->mn_ha_shared_secret_length:B

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1691
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_ss_profile_type;->mn_ha_shared_secret:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1692
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_ss_profile_type;->mn_ha_shared_secret:[B

    aget-byte v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1691
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1694
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_ss_profile_type;->mn_ha_shared_secret:[B

    array-length v1, v1

    rsub-int/lit8 v1, v1, 0x10

    if-ge v0, v1, :cond_1

    .line 1695
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1694
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1697
    :cond_1
    iget-byte v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_ss_profile_type;->mn_aaa_shared_secret_length:B

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1698
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_ss_profile_type;->mn_aaa_shared_secret:[B

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1699
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_ss_profile_type;->mn_aaa_shared_secret:[B

    aget-byte v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1698
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1701
    :cond_2
    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_ss_profile_type;->mn_aaa_shared_secret:[B

    array-length v1, v1

    rsub-int/lit8 v1, v1, 0x10

    if-ge v0, v1, :cond_3

    .line 1702
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1701
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1704
    :cond_3
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1720
    const/16 v0, 0x23

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1725
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1726
    .local v0, "sb":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_ss_profile_type;->index:B

    invoke-static {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->byteToHexString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1727
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mn_ha_shared_secret_length=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_ss_profile_type;->mn_ha_shared_secret_length:B

    invoke-static {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->byteToHexString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1729
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mn_ha_shared_secret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_ss_profile_type;->mn_ha_shared_secret:[B

    invoke-static {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1730
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mn_aaa_shared_secret_length=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_ss_profile_type;->mn_aaa_shared_secret_length:B

    invoke-static {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->byteToHexString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1732
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mn_aaa_shared_secret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_ss_profile_type;->mn_aaa_shared_secret:[B

    invoke-static {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1734
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
