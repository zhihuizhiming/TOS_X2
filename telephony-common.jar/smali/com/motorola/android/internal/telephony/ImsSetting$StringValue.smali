.class Lcom/motorola/android/internal/telephony/ImsSetting$StringValue;
.super Ljava/lang/Object;
.source "ImsSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/ImsSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StringValue"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/internal/telephony/ImsSetting;

.field private value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/motorola/android/internal/telephony/ImsSetting;)V
    .locals 0

    .prologue
    .line 411
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$StringValue;->this$0:Lcom/motorola/android/internal/telephony/ImsSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method get(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 423
    const/16 v1, 0x100

    new-array v0, v1, [B

    .line 424
    .local v0, "b":[B
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 425
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 426
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$StringValue;->value:Ljava/lang/String;

    .line 427
    return-void
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$StringValue;->value:Ljava/lang/String;

    return-object v0
.end method

.method put(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 415
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$StringValue;->value:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$StringValue;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$StringValue;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 420
    :goto_0
    return-void

    .line 418
    :cond_0
    const-string v0, "IMS_SETTING"

    const-string v1, "StringValue is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 434
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$StringValue;->value:Ljava/lang/String;

    .line 435
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StringValue [value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$StringValue;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
