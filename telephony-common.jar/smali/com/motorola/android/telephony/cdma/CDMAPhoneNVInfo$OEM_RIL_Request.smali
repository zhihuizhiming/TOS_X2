.class Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
.super Ljava/lang/Object;
.source "CDMAPhoneNVInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OEM_RIL_Request"
.end annotation


# instance fields
.field public header:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;

.field public rde:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;


# direct methods
.method public constructor <init>(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;ILjava/lang/String;)V
    .locals 3
    .param p1, "irde"    # Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;
    .param p2, "msgId"    # I
    .param p3, "spcLockCode"    # Ljava/lang/String;

    .prologue
    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    iput-object p1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->rde:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;

    .line 457
    new-instance v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;

    invoke-direct {v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;-><init>()V

    iput-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->header:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;

    .line 458
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->header:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;

    iput p2, v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;->msgId:I

    .line 459
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->header:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;

    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->rde:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;

    invoke-virtual {v2}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->SIZE()I

    move-result v2

    iput v2, v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;->msgLength:I

    .line 460
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->header:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;

    const/4 v2, 0x0

    iput v2, v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;->error:I

    .line 461
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->header:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;

    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->header:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;

    const/4 v2, 0x6

    new-array v2, v2, [B

    iput-object v2, v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;->spcLockCode:[B

    .line 462
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->header:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;

    iget-object v1, v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;->spcLockCode:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 463
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->header:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;

    iget-object v1, v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;->spcLockCode:[B

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 462
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 465
    :cond_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 6
    .param p1, "data"    # [B

    .prologue
    const/4 v5, 0x5

    .line 497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 498
    new-instance v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;-><init>()V

    iput-object v3, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->header:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;

    .line 500
    if-nez p1, :cond_0

    .line 501
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->rde:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;

    .line 502
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->header:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;

    iput v5, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;->error:I

    .line 524
    :goto_0
    return-void

    .line 506
    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 509
    .local v0, "buf":Ljava/nio/ByteBuffer;
    :try_start_0
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->header:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;->msgId:I

    .line 510
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->header:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;->msgLength:I

    .line 511
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->header:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;->error:I

    .line 512
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->header:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;

    const/4 v4, 0x6

    new-array v4, v4, [B

    iput-object v4, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;->spcLockCode:[B

    .line 513
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->header:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;

    iget-object v3, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;->spcLockCode:[B

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 514
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->header:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;

    iget-object v3, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;->spcLockCode:[B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    aput-byte v4, v3, v2

    .line 513
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 518
    :cond_1
    invoke-static {v0}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->deserialize(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->rde:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 519
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 520
    .local v1, "e":Ljava/nio/BufferUnderflowException;
    const-string v3, "PhoneNVInfo"

    const-string v4, "byteArrToRdeData: buffer underflow"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->header:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;

    iput v5, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;->error:I

    goto :goto_0
.end method

.method public constructor <init>([BZ)V
    .locals 6
    .param p1, "data"    # [B
    .param p2, "readMsgBody"    # Z

    .prologue
    const/4 v5, 0x5

    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 469
    new-instance v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;-><init>()V

    iput-object v3, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->header:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;

    .line 471
    if-nez p1, :cond_1

    .line 472
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->rde:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;

    .line 473
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->header:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;

    iput v5, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;->error:I

    .line 495
    :cond_0
    :goto_0
    return-void

    .line 477
    :cond_1
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 480
    .local v0, "buf":Ljava/nio/ByteBuffer;
    :try_start_0
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->header:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;->msgId:I

    .line 481
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->header:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;->msgLength:I

    .line 482
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->header:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;->error:I

    .line 483
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->header:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;

    const/4 v4, 0x6

    new-array v4, v4, [B

    iput-object v4, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;->spcLockCode:[B

    .line 484
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->header:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;

    iget-object v3, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;->spcLockCode:[B

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 485
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->header:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;

    iget-object v3, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;->spcLockCode:[B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    aput-byte v4, v3, v2

    .line 484
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 489
    :cond_2
    if-eqz p2, :cond_0

    invoke-static {v0}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->deserialize(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->rde:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 490
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 491
    .local v1, "e":Ljava/nio/BufferUnderflowException;
    const-string v3, "PhoneNVInfo"

    const-string v4, "byteArrToRdeData: buffer underflow"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->header:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;

    iput v5, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;->error:I

    goto :goto_0
.end method

.method private static toString([B)Ljava/lang/String;
    .locals 6
    .param p0, "arr"    # [B

    .prologue
    .line 530
    if-nez p0, :cond_0

    .line 531
    const-string v2, "null"

    .line 538
    :goto_0
    return-object v2

    .line 532
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 534
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "hex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 536
    const-string v2, "%02X"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-byte v5, p0, v0

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 538
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public getBytes()[B
    .locals 4

    .prologue
    .line 542
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->rde:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->rde:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;

    invoke-virtual {v3}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->SIZE()I

    move-result v3

    :goto_0
    add-int/lit16 v3, v3, 0x90

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 544
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 545
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->header:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;

    iget v3, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;->msgId:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 546
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->header:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;

    iget v3, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;->msgLength:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 547
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->header:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;

    iget v3, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;->error:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 549
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/4 v3, 0x6

    if-ge v2, v3, :cond_1

    .line 550
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->header:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;

    iget-object v3, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;->spcLockCode:[B

    aget-byte v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 549
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 542
    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    .end local v2    # "i":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 554
    .restart local v0    # "buf":Ljava/nio/ByteBuffer;
    .restart local v2    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->rde:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;

    if-eqz v3, :cond_2

    .line 555
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->rde:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;

    invoke-virtual {v3, v0}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->serialize(Ljava/nio/ByteBuffer;)V

    .line 557
    :cond_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 559
    .local v1, "data":[B
    return-object v1
.end method
