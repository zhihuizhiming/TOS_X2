.class Lcom/android/internal/telephony/RIL$TLV;
.super Ljava/lang/Object;
.source "RIL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TLV"
.end annotation


# instance fields
.field private len:S

.field private tag:B

.field final synthetic this$0:Lcom/android/internal/telephony/RIL;

.field private value:[B


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/RIL;)V
    .locals 0

    .prologue
    .line 3626
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$TLV;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RIL$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/RIL;
    .param p2, "x1"    # Lcom/android/internal/telephony/RIL$1;

    .prologue
    .line 3626
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL$TLV;-><init>(Lcom/android/internal/telephony/RIL;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/RIL$TLV;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/RIL$TLV;
    .param p1, "x1"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 3626
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL$TLV;->readFromByteBuffer(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/RIL$TLV;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/RIL$TLV;

    .prologue
    .line 3626
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$TLV;->value:[B

    return-object v0
.end method

.method private readFromByteBuffer(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "bBuff"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 3631
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    iput-byte v0, p0, Lcom/android/internal/telephony/RIL$TLV;->tag:B

    .line 3632
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/android/internal/telephony/RIL$TLV;->len:S

    .line 3633
    iget-short v0, p0, Lcom/android/internal/telephony/RIL$TLV;->len:S

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/RIL$TLV;->value:[B

    .line 3634
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$TLV;->value:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 3635
    return-void
.end method
