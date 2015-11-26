.class Lcom/motorola/android/internal/telephony/ImsSetting$ByteValue;
.super Lcom/motorola/android/internal/telephony/ImsSetting$PadingValue;
.source "ImsSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/ImsSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ByteValue"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/internal/telephony/ImsSetting;

.field private value:B


# direct methods
.method constructor <init>(Lcom/motorola/android/internal/telephony/ImsSetting;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 299
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$ByteValue;->this$0:Lcom/motorola/android/internal/telephony/ImsSetting;

    .line 300
    invoke-direct {p0, p1, v0}, Lcom/motorola/android/internal/telephony/ImsSetting$PadingValue;-><init>(Lcom/motorola/android/internal/telephony/ImsSetting;I)V

    .line 301
    iput-byte v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$ByteValue;->value:B

    .line 302
    return-void
.end method

.method constructor <init>(Lcom/motorola/android/internal/telephony/ImsSetting;I)V
    .locals 0
    .param p2, "size"    # I

    .prologue
    .line 295
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$ByteValue;->this$0:Lcom/motorola/android/internal/telephony/ImsSetting;

    .line 296
    invoke-direct {p0, p1, p2}, Lcom/motorola/android/internal/telephony/ImsSetting$PadingValue;-><init>(Lcom/motorola/android/internal/telephony/ImsSetting;I)V

    .line 297
    return-void
.end method


# virtual methods
.method get(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 312
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$ByteValue;->value:B

    .line 314
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    .line 315
    .local v0, "pos":I
    iget v1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$PadingValue;->padSize:I

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 316
    return-void
.end method

.method public getValue()B
    .locals 1

    .prologue
    .line 319
    iget-byte v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$ByteValue;->value:B

    return v0
.end method

.method put(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 305
    iget-byte v1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$ByteValue;->value:B

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 306
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$PadingValue;->padSize:I

    if-ge v0, v1, :cond_0

    .line 307
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 306
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 309
    :cond_0
    return-void
.end method

.method public setValue(B)V
    .locals 0
    .param p1, "v"    # B

    .prologue
    .line 323
    iput-byte p1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$ByteValue;->value:B

    .line 324
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ByteValue value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$ByteValue;->value:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
