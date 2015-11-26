.class public Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_nam_min1_type;
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
    name = "rde_nam_min1_type"
.end annotation


# static fields
.field public static final OEM_RIL_CDMA_MAX_MINS:I = 0x2


# instance fields
.field public min1:[I

.field public nam:B


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 1868
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1869
    iput-byte v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_nam_min1_type;->nam:B

    .line 1870
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_nam_min1_type;->min1:[I

    .line 1871
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 1872
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_nam_min1_type;->min1:[I

    aput v2, v1, v0

    .line 1871
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1874
    :cond_0
    return-void
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_nam_min1_type;
    .locals 4
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 1884
    new-instance v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_nam_min1_type;

    invoke-direct {v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_nam_min1_type;-><init>()V

    .line 1885
    .local v1, "min1Type":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_nam_min1_type;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    iput-byte v2, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_nam_min1_type;->nam:B

    .line 1886
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    .line 1887
    iget-object v2, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_nam_min1_type;->min1:[I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    aput v3, v2, v0

    .line 1886
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1889
    :cond_0
    return-object v1
.end method


# virtual methods
.method public serialize(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 1877
    iget-byte v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_nam_min1_type;->nam:B

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1878
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 1879
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_nam_min1_type;->min1:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1878
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1881
    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1893
    const/16 v0, 0x9

    return v0
.end method
