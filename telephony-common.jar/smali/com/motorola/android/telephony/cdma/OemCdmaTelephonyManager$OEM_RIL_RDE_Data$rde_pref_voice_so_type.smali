.class public Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_pref_voice_so_type;
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
    name = "rde_pref_voice_so_type"
.end annotation


# instance fields
.field public evrc_capability_enabled:B

.field public home_orig_voice_so:S

.field public home_page_voice_so:S

.field public nam:B

.field public roam_orig_voice_so:S


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1748
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1749
    iput-byte v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_pref_voice_so_type;->nam:B

    .line 1750
    iput-byte v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_pref_voice_so_type;->evrc_capability_enabled:B

    .line 1751
    iput-short v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_pref_voice_so_type;->home_page_voice_so:S

    .line 1752
    iput-short v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_pref_voice_so_type;->home_orig_voice_so:S

    .line 1753
    iput-short v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_pref_voice_so_type;->roam_orig_voice_so:S

    .line 1754
    return-void
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_pref_voice_so_type;
    .locals 2
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 1766
    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_pref_voice_so_type;

    invoke-direct {v0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_pref_voice_so_type;-><init>()V

    .line 1767
    .local v0, "pt":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_pref_voice_so_type;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_pref_voice_so_type;->nam:B

    .line 1768
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_pref_voice_so_type;->evrc_capability_enabled:B

    .line 1769
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput-short v1, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_pref_voice_so_type;->home_page_voice_so:S

    .line 1770
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput-short v1, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_pref_voice_so_type;->home_orig_voice_so:S

    .line 1771
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput-short v1, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_pref_voice_so_type;->roam_orig_voice_so:S

    .line 1772
    return-object v0
.end method


# virtual methods
.method public serialize(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 1757
    iget-byte v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_pref_voice_so_type;->nam:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1758
    iget-byte v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_pref_voice_so_type;->evrc_capability_enabled:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1759
    iget-short v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_pref_voice_so_type;->home_page_voice_so:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1760
    iget-short v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_pref_voice_so_type;->home_orig_voice_so:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1761
    iget-short v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_pref_voice_so_type;->roam_orig_voice_so:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1762
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1776
    const/16 v0, 0x11

    .line 1777
    .local v0, "s":I
    return v0
.end method
