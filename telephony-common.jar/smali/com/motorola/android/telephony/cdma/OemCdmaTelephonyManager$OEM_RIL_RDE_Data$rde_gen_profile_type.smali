.class public Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;
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
    name = "rde_gen_profile_type"
.end annotation


# static fields
.field public static final NUM_BYTES_UINT32:I = 0x4

.field public static final NV_MAX_NAI_LENGTH:I = 0x48


# instance fields
.field public home_addr:[B

.field public index:B

.field public mn_aaa_spi:[B

.field public mn_aaa_spi_set:B

.field public mn_ha_spi:[B

.field public mn_ha_spi_set:B

.field public nai:[B

.field public nai_length:B

.field public primary_ha_addr:[B

.field public rev_tun_pref:B

.field public secondary_ha_addr:[B


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 1507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1508
    iput-byte v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->index:B

    .line 1509
    iput-byte v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->nai_length:B

    .line 1510
    iput-byte v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->mn_ha_spi_set:B

    .line 1511
    iput-byte v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->mn_aaa_spi_set:B

    .line 1512
    iput-byte v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->rev_tun_pref:B

    .line 1514
    const/16 v1, 0x48

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->nai:[B

    .line 1515
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->nai:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1516
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->nai:[B

    aput-byte v2, v1, v0

    .line 1515
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1519
    :cond_0
    new-array v1, v3, [B

    iput-object v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->mn_ha_spi:[B

    .line 1520
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->mn_ha_spi:[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1521
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->mn_ha_spi:[B

    aput-byte v2, v1, v0

    .line 1520
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1524
    :cond_1
    new-array v1, v3, [B

    iput-object v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->mn_aaa_spi:[B

    .line 1525
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->mn_aaa_spi:[B

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1526
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->mn_aaa_spi:[B

    aput-byte v2, v1, v0

    .line 1525
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1529
    :cond_2
    new-array v1, v3, [B

    iput-object v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->home_addr:[B

    .line 1530
    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->home_addr:[B

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 1531
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->home_addr:[B

    aput-byte v2, v1, v0

    .line 1530
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1534
    :cond_3
    new-array v1, v3, [B

    iput-object v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->primary_ha_addr:[B

    .line 1535
    const/4 v0, 0x0

    :goto_4
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->primary_ha_addr:[B

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 1536
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->primary_ha_addr:[B

    aput-byte v2, v1, v0

    .line 1535
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1539
    :cond_4
    new-array v1, v3, [B

    iput-object v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->secondary_ha_addr:[B

    .line 1540
    const/4 v0, 0x0

    :goto_5
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->secondary_ha_addr:[B

    array-length v1, v1

    if-ge v0, v1, :cond_5

    .line 1541
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->secondary_ha_addr:[B

    aput-byte v2, v1, v0

    .line 1540
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1543
    :cond_5
    return-void
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;
    .locals 5
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 1585
    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;

    invoke-direct {v0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;-><init>()V

    .line 1587
    .local v0, "genProfType":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    iput-byte v2, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->index:B

    .line 1588
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    iput-byte v2, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->nai_length:B

    .line 1589
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->nai:[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 1590
    iget-object v2, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->nai:[B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    aput-byte v3, v2, v1

    .line 1589
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1592
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    iput-byte v2, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->mn_ha_spi_set:B

    .line 1594
    const/4 v1, 0x0

    :goto_1
    iget-object v2, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->mn_ha_spi:[B

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 1595
    iget-object v2, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->mn_ha_spi:[B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    aput-byte v3, v2, v1

    .line 1594
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1597
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    iput-byte v2, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->mn_aaa_spi_set:B

    .line 1599
    const/4 v1, 0x0

    :goto_2
    iget-object v2, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->mn_aaa_spi:[B

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 1600
    iget-object v2, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->mn_aaa_spi:[B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    aput-byte v3, v2, v1

    .line 1599
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1602
    :cond_2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    iput-byte v2, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->rev_tun_pref:B

    .line 1604
    const/4 v1, 0x0

    :goto_3
    iget-object v2, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->home_addr:[B

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 1605
    iget-object v2, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->home_addr:[B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    aput-byte v3, v2, v1

    .line 1604
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1607
    :cond_3
    const/4 v1, 0x0

    :goto_4
    iget-object v2, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->primary_ha_addr:[B

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 1608
    iget-object v2, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->primary_ha_addr:[B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    aput-byte v3, v2, v1

    .line 1607
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1610
    :cond_4
    const/4 v1, 0x0

    :goto_5
    iget-object v2, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->secondary_ha_addr:[B

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 1611
    iget-object v2, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->secondary_ha_addr:[B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    aput-byte v3, v2, v1

    .line 1610
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1613
    :cond_5
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1614
    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rde_gen_profile_type deserialize() index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-byte v4, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->index:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " nai="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->nai:[B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mn_ha_spi_set="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-byte v4, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->mn_ha_spi_set:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " nam="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->mn_ha_spi:[B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mn_aaa_spi_set"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-byte v4, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->mn_aaa_spi_set:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "rev_tun_pref"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-byte v4, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->rev_tun_pref:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    :cond_6
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1621
    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rde_gen_profile_type deserialize() home_addr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->home_addr:[B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " primary_ha_addr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->primary_ha_addr:[B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " secondary_ha_addr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->secondary_ha_addr:[B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    :cond_7
    return-object v0
.end method


# virtual methods
.method public serialize(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v2, 0x0

    .line 1546
    iget-byte v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->index:B

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1547
    iget-byte v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->nai_length:B

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1548
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-byte v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->nai_length:B

    if-ge v0, v1, :cond_0

    .line 1549
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->nai:[B

    aget-byte v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1548
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1551
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-byte v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->nai_length:B

    rsub-int/lit8 v1, v1, 0x48

    if-ge v0, v1, :cond_1

    .line 1552
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1551
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1554
    :cond_1
    iget-byte v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->mn_ha_spi_set:B

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1556
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->mn_ha_spi:[B

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1557
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->mn_ha_spi:[B

    aget-byte v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1556
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1559
    :cond_2
    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->mn_ha_spi:[B

    array-length v1, v1

    rsub-int/lit8 v1, v1, 0x4

    if-ge v0, v1, :cond_3

    .line 1560
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1559
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1563
    :cond_3
    iget-byte v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->mn_aaa_spi_set:B

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1565
    const/4 v0, 0x0

    :goto_4
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->mn_aaa_spi:[B

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 1566
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->mn_aaa_spi:[B

    aget-byte v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1565
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1568
    :cond_4
    const/4 v0, 0x0

    :goto_5
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->mn_aaa_spi:[B

    array-length v1, v1

    rsub-int/lit8 v1, v1, 0x4

    if-ge v0, v1, :cond_5

    .line 1569
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1568
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1571
    :cond_5
    iget-byte v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->rev_tun_pref:B

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1573
    const/4 v0, 0x0

    :goto_6
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->home_addr:[B

    array-length v1, v1

    if-ge v0, v1, :cond_6

    .line 1574
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->home_addr:[B

    aget-byte v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1573
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1576
    :cond_6
    const/4 v0, 0x0

    :goto_7
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->primary_ha_addr:[B

    array-length v1, v1

    if-ge v0, v1, :cond_7

    .line 1577
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->primary_ha_addr:[B

    aget-byte v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1576
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1579
    :cond_7
    const/4 v0, 0x0

    :goto_8
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->secondary_ha_addr:[B

    array-length v1, v1

    if-ge v0, v1, :cond_8

    .line 1580
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->secondary_ha_addr:[B

    aget-byte v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1579
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1582
    :cond_8
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1630
    const/16 v0, 0x61

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1641
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1642
    .local v0, "sb":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->index:B

    invoke-static {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->byteToHexString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1643
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", nai_length=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->nai_length:B

    invoke-static {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->byteToHexString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1644
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", nai="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->nai:[B

    invoke-static {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1645
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mn_ha_spi_set="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->mn_ha_spi_set:B

    invoke-static {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->byteToHexString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1646
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mn_ha_spi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->mn_ha_spi:[B

    invoke-static {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1647
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mn_aaa_spi_set="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->mn_aaa_spi_set:B

    invoke-static {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->byteToHexString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1648
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mn_aaa_spi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->mn_aaa_spi:[B

    invoke-static {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1649
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", rev_tun_pref="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->rev_tun_pref:B

    invoke-static {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->byteToHexString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1650
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", home_addr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->home_addr:[B

    invoke-static {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1651
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", primary_ha_addr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->primary_ha_addr:[B

    invoke-static {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1652
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", secondary_ha_addr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;->secondary_ha_addr:[B

    invoke-static {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1654
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
