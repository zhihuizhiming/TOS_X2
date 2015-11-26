.class Lcom/motorola/android/internal/telephony/ImsSetting$ShortValue;
.super Lcom/motorola/android/internal/telephony/ImsSetting$PadingValue;
.source "ImsSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/ImsSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShortValue"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/internal/telephony/ImsSetting;

.field private value:S


# direct methods
.method constructor <init>(Lcom/motorola/android/internal/telephony/ImsSetting;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 339
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$ShortValue;->this$0:Lcom/motorola/android/internal/telephony/ImsSetting;

    .line 340
    invoke-direct {p0, p1, v0}, Lcom/motorola/android/internal/telephony/ImsSetting$PadingValue;-><init>(Lcom/motorola/android/internal/telephony/ImsSetting;I)V

    .line 341
    iput-short v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$ShortValue;->value:S

    .line 342
    return-void
.end method

.method constructor <init>(Lcom/motorola/android/internal/telephony/ImsSetting;I)V
    .locals 0
    .param p2, "size"    # I

    .prologue
    .line 335
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$ShortValue;->this$0:Lcom/motorola/android/internal/telephony/ImsSetting;

    .line 336
    invoke-direct {p0, p1, p2}, Lcom/motorola/android/internal/telephony/ImsSetting$PadingValue;-><init>(Lcom/motorola/android/internal/telephony/ImsSetting;I)V

    .line 337
    return-void
.end method


# virtual methods
.method get(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 352
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$ShortValue;->value:S

    .line 354
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    .line 355
    .local v0, "pos":I
    iget v1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$PadingValue;->padSize:I

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 356
    return-void
.end method

.method public getValue()S
    .locals 1

    .prologue
    .line 359
    iget-short v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$ShortValue;->value:S

    return v0
.end method

.method put(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 345
    iget-short v1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$ShortValue;->value:S

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 346
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$PadingValue;->padSize:I

    if-ge v0, v1, :cond_0

    .line 347
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 346
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 349
    :cond_0
    return-void
.end method

.method public setValue(S)V
    .locals 0
    .param p1, "v"    # S

    .prologue
    .line 363
    iput-short p1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$ShortValue;->value:S

    .line 364
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShortValue [value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$ShortValue;->value:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
