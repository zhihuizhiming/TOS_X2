.class Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;
.super Lcom/motorola/android/internal/telephony/ImsSetting$PadingValue;
.source "ImsSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/ImsSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ValidValue"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/internal/telephony/ImsSetting;

.field private value:Z


# direct methods
.method constructor <init>(Lcom/motorola/android/internal/telephony/ImsSetting;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 258
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;->this$0:Lcom/motorola/android/internal/telephony/ImsSetting;

    .line 259
    invoke-direct {p0, p1, v0}, Lcom/motorola/android/internal/telephony/ImsSetting$PadingValue;-><init>(Lcom/motorola/android/internal/telephony/ImsSetting;I)V

    .line 252
    iput-boolean v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;->value:Z

    .line 260
    iput-boolean v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;->value:Z

    .line 261
    return-void
.end method

.method constructor <init>(Lcom/motorola/android/internal/telephony/ImsSetting;I)V
    .locals 1
    .param p2, "size"    # I

    .prologue
    .line 254
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;->this$0:Lcom/motorola/android/internal/telephony/ImsSetting;

    .line 255
    invoke-direct {p0, p1, p2}, Lcom/motorola/android/internal/telephony/ImsSetting$PadingValue;-><init>(Lcom/motorola/android/internal/telephony/ImsSetting;I)V

    .line 252
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;->value:Z

    .line 256
    return-void
.end method


# virtual methods
.method get(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 272
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 273
    .local v1, "temp":B
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;->value:Z

    .line 275
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    .line 276
    .local v0, "pos":I
    iget v2, p0, Lcom/motorola/android/internal/telephony/ImsSetting$PadingValue;->padSize:I

    add-int/2addr v2, v0

    invoke-virtual {p1, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 277
    return-void

    .line 273
    .end local v0    # "pos":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getValue()Z
    .locals 1

    .prologue
    .line 280
    iget-boolean v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;->value:Z

    return v0
.end method

.method put(Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v3, 0x0

    .line 264
    iget-boolean v2, p0, Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;->value:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    int-to-byte v1, v2

    .line 265
    .local v1, "temp":B
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 266
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v2, p0, Lcom/motorola/android/internal/telephony/ImsSetting$PadingValue;->padSize:I

    if-ge v0, v2, :cond_1

    .line 267
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 266
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "temp":B
    :cond_0
    move v2, v3

    .line 264
    goto :goto_0

    .line 269
    .restart local v0    # "i":I
    .restart local v1    # "temp":B
    :cond_1
    return-void
.end method

.method public setValue(Z)V
    .locals 0
    .param p1, "v"    # Z

    .prologue
    .line 284
    iput-boolean p1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;->value:Z

    .line 285
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ValidValue value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;->value:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
