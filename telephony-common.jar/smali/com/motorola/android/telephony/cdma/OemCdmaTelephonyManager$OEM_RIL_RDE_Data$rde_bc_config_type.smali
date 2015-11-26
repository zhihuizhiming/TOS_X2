.class public Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_bc_config_type;
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
    name = "rde_bc_config_type"
.end annotation


# instance fields
.field public lte_bc_config:J

.field public lte_bc_config_ext:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 1370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1371
    iput-wide v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_bc_config_type;->lte_bc_config:J

    .line 1372
    iput-wide v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_bc_config_type;->lte_bc_config_ext:J

    .line 1373
    return-void
.end method

.method public constructor <init>(J)V
    .locals 2
    .param p1, "band"    # J

    .prologue
    .line 1374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1375
    iput-wide p1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_bc_config_type;->lte_bc_config:J

    .line 1376
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_bc_config_type;->lte_bc_config_ext:J

    .line 1377
    return-void
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_bc_config_type;
    .locals 3
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 1383
    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_bc_config_type;

    invoke-direct {v0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_bc_config_type;-><init>()V

    .line 1384
    .local v0, "bc_config":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_bc_config_type;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_bc_config_type;->lte_bc_config:J

    .line 1385
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_bc_config_type;->lte_bc_config_ext:J

    .line 1386
    return-object v0
.end method


# virtual methods
.method public serialize(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 1379
    iget-wide v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_bc_config_type;->lte_bc_config:J

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 1380
    iget-wide v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_bc_config_type;->lte_bc_config_ext:J

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 1381
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1389
    const/16 v0, 0x10

    return v0
.end method
