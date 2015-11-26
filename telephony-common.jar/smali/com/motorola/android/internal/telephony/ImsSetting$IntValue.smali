.class Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;
.super Lcom/motorola/android/internal/telephony/ImsSetting$PadingValue;
.source "ImsSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/ImsSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IntValue"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/internal/telephony/ImsSetting;

.field private value:I


# direct methods
.method constructor <init>(Lcom/motorola/android/internal/telephony/ImsSetting;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 379
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;->this$0:Lcom/motorola/android/internal/telephony/ImsSetting;

    .line 380
    invoke-direct {p0, p1, v0}, Lcom/motorola/android/internal/telephony/ImsSetting$PadingValue;-><init>(Lcom/motorola/android/internal/telephony/ImsSetting;I)V

    .line 381
    iput v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;->value:I

    .line 382
    return-void
.end method

.method constructor <init>(Lcom/motorola/android/internal/telephony/ImsSetting;I)V
    .locals 0
    .param p2, "size"    # I

    .prologue
    .line 375
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;->this$0:Lcom/motorola/android/internal/telephony/ImsSetting;

    .line 376
    invoke-direct {p0, p1, p2}, Lcom/motorola/android/internal/telephony/ImsSetting$PadingValue;-><init>(Lcom/motorola/android/internal/telephony/ImsSetting;I)V

    .line 377
    return-void
.end method


# virtual methods
.method get(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 391
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;->value:I

    .line 393
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    .line 394
    .local v0, "pos":I
    iget v1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$PadingValue;->padSize:I

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 395
    return-void
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 398
    iget v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;->value:I

    return v0
.end method

.method put(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 384
    iget v1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;->value:I

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 385
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$PadingValue;->padSize:I

    if-ge v0, v1, :cond_0

    .line 386
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 385
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 388
    :cond_0
    return-void
.end method

.method public setValue(I)V
    .locals 0
    .param p1, "v"    # I

    .prologue
    .line 402
    iput p1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;->value:I

    .line 403
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IntValue [value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
