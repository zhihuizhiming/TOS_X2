.class public Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_nam_mdn_type;
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
    name = "rde_nam_mdn_type"
.end annotation


# static fields
.field public static final OEM_RIL_CDMA_MDN_LENGTH:I = 0xa


# instance fields
.field public mdn:[B

.field public nam:B


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0xa

    const/4 v2, 0x0

    .line 1834
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1835
    iput-byte v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_nam_mdn_type;->nam:B

    .line 1836
    new-array v1, v3, [B

    iput-object v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_nam_mdn_type;->mdn:[B

    .line 1837
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 1838
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_nam_mdn_type;->mdn:[B

    aput-byte v2, v1, v0

    .line 1837
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1840
    :cond_0
    return-void
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_nam_mdn_type;
    .locals 4
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 1850
    new-instance v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_nam_mdn_type;

    invoke-direct {v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_nam_mdn_type;-><init>()V

    .line 1851
    .local v1, "mdnType":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_nam_mdn_type;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    iput-byte v2, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_nam_mdn_type;->nam:B

    .line 1852
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    .line 1853
    iget-object v2, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_nam_mdn_type;->mdn:[B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    aput-byte v3, v2, v0

    .line 1852
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1855
    :cond_0
    return-object v1
.end method


# virtual methods
.method public serialize(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 1843
    iget-byte v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_nam_mdn_type;->nam:B

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1844
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 1845
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_nam_mdn_type;->mdn:[B

    aget-byte v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1844
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1847
    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1859
    const/16 v0, 0xb

    return v0
.end method
