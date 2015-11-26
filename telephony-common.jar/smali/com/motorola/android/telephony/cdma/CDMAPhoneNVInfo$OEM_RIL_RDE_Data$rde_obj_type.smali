.class public Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;
.super Ljava/lang/Object;
.source "CDMAPhoneNVInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "rde_obj_type"
.end annotation


# instance fields
.field public data:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;->data:[B

    .line 327
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "i"    # Ljava/lang/Integer;

    .prologue
    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    const/16 v1, 0x20

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 344
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 346
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 348
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;->data:[B

    .line 349
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/16 v0, 0x64

    const/4 v3, 0x0

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v0, :cond_0

    .line 355
    .local v0, "length":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 356
    .local v1, "tempData":[B
    new-array v2, v0, [B

    iput-object v2, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;->data:[B

    .line 357
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;->data:[B

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 359
    return-void

    .line 354
    .end local v0    # "length":I
    .end local v1    # "tempData":[B
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0
.end method

.method public constructor <init>(Z)V
    .locals 3
    .param p1, "b"    # Z

    .prologue
    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    const/16 v1, 0x20

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 331
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 333
    if-eqz p1, :cond_0

    .line 334
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 339
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;->data:[B

    .line 340
    return-void

    .line 336
    :cond_0
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public constructor <init>([B)V
    .locals 0
    .param p1, "s"    # [B

    .prologue
    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    iput-object p1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;->data:[B

    .line 365
    return-void
.end method

.method public static rdeToBool(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;)Z
    .locals 2
    .param p0, "rde_obj"    # Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;

    .prologue
    const/4 v0, 0x0

    .line 381
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;->data:[B

    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0xff

    if-eqz v1, :cond_0

    .line 382
    const/4 v0, 0x1

    .line 384
    :cond_0
    return v0
.end method

.method public static rdeToHEXString(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;)Ljava/lang/String;
    .locals 2
    .param p0, "rde_obj"    # Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;

    .prologue
    .line 399
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;->data:[B

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, "s":Ljava/lang/String;
    return-object v0
.end method

.method public static rdeToInteger(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;)I
    .locals 4
    .param p0, "rde_obj"    # Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;

    .prologue
    .line 373
    const/4 v1, 0x0

    .line 374
    .local v1, "result":I
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;->data:[B

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 375
    mul-int/lit16 v2, v1, 0x100

    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;->data:[B

    aget-byte v3, v3, v0

    and-int/lit16 v3, v3, 0xff

    add-int v1, v2, v3

    .line 374
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 377
    :cond_0
    return v1
.end method

.method public static rdeToString(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;)Ljava/lang/String;
    .locals 3
    .param p0, "rde_obj"    # Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;

    .prologue
    .line 389
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 390
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;->data:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;->data:[B

    aget-byte v2, v2, v0

    if-eqz v2, :cond_0

    .line 391
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;->data:[B

    aget-byte v2, v2, v0

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 390
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 393
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public size()I
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;->data:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;->data:[B

    array-length v0, v0

    goto :goto_0
.end method
