.class public Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_nam_accolc_type;
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
    name = "rde_nam_accolc_type"
.end annotation


# static fields
.field public static final OEM_RIL_CDMA_MAX_MINS:I = 0x2


# instance fields
.field public ACCOLCpClass:[B

.field public nam:B


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 1988
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1989
    iput-byte v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_nam_accolc_type;->nam:B

    .line 1990
    new-array v1, v3, [B

    iput-object v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_nam_accolc_type;->ACCOLCpClass:[B

    .line 1991
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 1992
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_nam_accolc_type;->ACCOLCpClass:[B

    aput-byte v2, v1, v0

    .line 1991
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1994
    :cond_0
    return-void
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_nam_accolc_type;
    .locals 4
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 2004
    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_nam_accolc_type;

    invoke-direct {v0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_nam_accolc_type;-><init>()V

    .line 2005
    .local v0, "accolcType":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_nam_accolc_type;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    iput-byte v2, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_nam_accolc_type;->nam:B

    .line 2006
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 2007
    iget-object v2, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_nam_accolc_type;->ACCOLCpClass:[B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    aput-byte v3, v2, v1

    .line 2006
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2009
    :cond_0
    return-object v0
.end method


# virtual methods
.method public serialize(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 1997
    iget-byte v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_nam_accolc_type;->nam:B

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1998
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 1999
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_nam_accolc_type;->ACCOLCpClass:[B

    aget-byte v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1998
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2001
    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 2013
    const/4 v0, 0x3

    return v0
.end method
