.class public Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_imsi_addr_num_type;
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
    name = "rde_imsi_addr_num_type"
.end annotation


# instance fields
.field public nam:B

.field public num:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2057
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2058
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_imsi_addr_num_type;->nam:B

    .line 2059
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_imsi_addr_num_type;->num:B

    .line 2060
    return-void
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_imsi_addr_num_type;
    .locals 3
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 2071
    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_imsi_addr_num_type;

    invoke-direct {v0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_imsi_addr_num_type;-><init>()V

    .line 2072
    .local v0, "imsiAddrNumType":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_imsi_addr_num_type;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_imsi_addr_num_type;->nam:B

    .line 2073
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_imsi_addr_num_type;->num:B

    .line 2074
    iget-byte v1, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_imsi_addr_num_type;->num:B

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 2075
    const/4 v1, 0x0

    iput-byte v1, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_imsi_addr_num_type;->num:B

    .line 2077
    :cond_0
    return-object v0
.end method


# virtual methods
.method public serialize(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 2063
    iget-byte v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_imsi_addr_num_type;->nam:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 2064
    iget-byte v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_imsi_addr_num_type;->num:B

    if-nez v0, :cond_0

    .line 2065
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_imsi_addr_num_type;->num:B

    .line 2067
    :cond_0
    iget-byte v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_imsi_addr_num_type;->num:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 2068
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 2081
    const/4 v0, 0x2

    return v0
.end method
