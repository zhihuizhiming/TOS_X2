.class public Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_BST;
.super Ljava/lang/Object;
.source "OemLteTelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OEM_RIL_LTE_BST"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_BST$BandChannel;
    }
.end annotation


# static fields
.field public static final MAX_SIZE:I = 0x126

.field public static final MOT_QMI_SPRINT_BST_MAX_LENGTH_V01:I = 0x28

.field public static final MOT_QMI_SPRINT_MAX_GWL_GENERIC_BAND_V01:I = 0x20


# instance fields
.field public gsmBandChannel:[Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_BST$BandChannel;

.field public lteBandChannel:[Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_BST$BandChannel;

.field public plmnId:[B

.field public wcdmaBandChannel:[Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_BST$BandChannel;


# direct methods
.method public constructor <init>([B[Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_BST$BandChannel;[Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_BST$BandChannel;[Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_BST$BandChannel;)V
    .locals 0
    .param p1, "plmnId"    # [B
    .param p2, "gsmBandChannel"    # [Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_BST$BandChannel;
    .param p3, "wcdmaBandChannel"    # [Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_BST$BandChannel;
    .param p4, "lteBandChannel"    # [Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_BST$BandChannel;

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput-object p1, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_BST;->plmnId:[B

    .line 176
    iput-object p2, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_BST;->gsmBandChannel:[Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_BST$BandChannel;

    .line 177
    iput-object p3, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_BST;->wcdmaBandChannel:[Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_BST$BandChannel;

    .line 178
    iput-object p4, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_BST;->lteBandChannel:[Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_BST$BandChannel;

    .line 179
    return-void
.end method


# virtual methods
.method serialize(Ljava/nio/ByteBuffer;)V
    .locals 6
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 208
    const/16 v0, 0x60

    .line 209
    .local v0, "gl":B
    const/16 v4, 0x60

    .line 210
    .local v4, "wl":B
    const/16 v3, 0x60

    .line 211
    .local v3, "ll":B
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_BST;->plmnId:[B

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 212
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 213
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 214
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 217
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_BST;->gsmBandChannel:[Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_BST$BandChannel;

    array-length v2, v5

    .local v2, "len":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 218
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_BST;->gsmBandChannel:[Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_BST$BandChannel;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_BST$BandChannel;->toByteArray()[B

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 217
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 220
    :cond_0
    const/4 v1, 0x0

    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_BST;->gsmBandChannel:[Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_BST$BandChannel;

    array-length v5, v5

    rsub-int/lit8 v2, v5, 0x20

    .line 221
    :goto_1
    if-ge v1, v2, :cond_1

    .line 222
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_BST$BandChannel;->toEmptyByteArray()[B

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 221
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 224
    :cond_1
    const/4 v1, 0x0

    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_BST;->wcdmaBandChannel:[Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_BST$BandChannel;

    array-length v2, v5

    :goto_2
    if-ge v1, v2, :cond_2

    .line 225
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_BST;->wcdmaBandChannel:[Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_BST$BandChannel;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_BST$BandChannel;->toByteArray()[B

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 224
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 227
    :cond_2
    const/4 v1, 0x0

    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_BST;->wcdmaBandChannel:[Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_BST$BandChannel;

    array-length v5, v5

    rsub-int/lit8 v2, v5, 0x20

    .line 228
    :goto_3
    if-ge v1, v2, :cond_3

    .line 229
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_BST$BandChannel;->toEmptyByteArray()[B

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 228
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 231
    :cond_3
    const/4 v1, 0x0

    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_BST;->lteBandChannel:[Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_BST$BandChannel;

    array-length v2, v5

    :goto_4
    if-ge v1, v2, :cond_4

    .line 232
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_BST;->lteBandChannel:[Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_BST$BandChannel;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_BST$BandChannel;->toByteArray()[B

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 231
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 234
    :cond_4
    const/4 v1, 0x0

    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_BST;->lteBandChannel:[Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_BST$BandChannel;

    array-length v5, v5

    rsub-int/lit8 v2, v5, 0x20

    .line 235
    :goto_5
    if-ge v1, v2, :cond_5

    .line 236
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_BST$BandChannel;->toEmptyByteArray()[B

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 235
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 238
    :cond_5
    return-void
.end method

.method size()I
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_BST;->plmnId:[B

    array-length v0, v0

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_BST;->gsmBandChannel:[Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_BST$BandChannel;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_BST;->wcdmaBandChannel:[Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_BST$BandChannel;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_BST;->lteBandChannel:[Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_BST$BandChannel;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    return v0
.end method
