.class Lcom/motorola/android/internal/telephony/ImsSetting$SMSConfig;
.super Lcom/motorola/android/internal/telephony/ImsSetting$Config;
.source "ImsSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/ImsSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SMSConfig"
.end annotation


# instance fields
.field mContextURI:Lcom/motorola/android/internal/telephony/ImsSetting$StringValue;

.field mContextURIValid:Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

.field mSMSFormat:Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;

.field mSMSOverIP:Lcom/motorola/android/internal/telephony/ImsSetting$ByteValue;

.field mSmsFormatValid:Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

.field mSmsOverIPValid:Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

.field final synthetic this$0:Lcom/motorola/android/internal/telephony/ImsSetting;


# direct methods
.method constructor <init>(Lcom/motorola/android/internal/telephony/ImsSetting;)V
    .locals 3

    .prologue
    .line 560
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SMSConfig;->this$0:Lcom/motorola/android/internal/telephony/ImsSetting;

    invoke-direct {p0, p1}, Lcom/motorola/android/internal/telephony/ImsSetting$Config;-><init>(Lcom/motorola/android/internal/telephony/ImsSetting;)V

    .line 561
    new-instance v0, Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SMSConfig;->this$0:Lcom/motorola/android/internal/telephony/ImsSetting;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;-><init>(Lcom/motorola/android/internal/telephony/ImsSetting;I)V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SMSConfig;->mSmsFormatValid:Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

    .line 562
    new-instance v0, Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SMSConfig;->this$0:Lcom/motorola/android/internal/telephony/ImsSetting;

    invoke-direct {v0, v1}, Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;-><init>(Lcom/motorola/android/internal/telephony/ImsSetting;)V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SMSConfig;->mSMSFormat:Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;

    .line 563
    new-instance v0, Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SMSConfig;->this$0:Lcom/motorola/android/internal/telephony/ImsSetting;

    invoke-direct {v0, v1}, Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;-><init>(Lcom/motorola/android/internal/telephony/ImsSetting;)V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SMSConfig;->mSmsOverIPValid:Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

    .line 564
    new-instance v0, Lcom/motorola/android/internal/telephony/ImsSetting$ByteValue;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SMSConfig;->this$0:Lcom/motorola/android/internal/telephony/ImsSetting;

    invoke-direct {v0, v1}, Lcom/motorola/android/internal/telephony/ImsSetting$ByteValue;-><init>(Lcom/motorola/android/internal/telephony/ImsSetting;)V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SMSConfig;->mSMSOverIP:Lcom/motorola/android/internal/telephony/ImsSetting$ByteValue;

    .line 565
    new-instance v0, Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SMSConfig;->this$0:Lcom/motorola/android/internal/telephony/ImsSetting;

    invoke-direct {v0, v1}, Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;-><init>(Lcom/motorola/android/internal/telephony/ImsSetting;)V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SMSConfig;->mContextURIValid:Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

    .line 566
    new-instance v0, Lcom/motorola/android/internal/telephony/ImsSetting$StringValue;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SMSConfig;->this$0:Lcom/motorola/android/internal/telephony/ImsSetting;

    invoke-direct {v0, v1}, Lcom/motorola/android/internal/telephony/ImsSetting$StringValue;-><init>(Lcom/motorola/android/internal/telephony/ImsSetting;)V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SMSConfig;->mContextURI:Lcom/motorola/android/internal/telephony/ImsSetting$StringValue;

    return-void
.end method


# virtual methods
.method getSize()I
    .locals 1

    .prologue
    .line 570
    const/16 v0, 0x10b

    return v0
.end method

.method populate(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 585
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SMSConfig;->mSmsFormatValid:Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

    invoke-virtual {v0, p1}, Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 586
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SMSConfig;->mSMSFormat:Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;

    invoke-virtual {v0, p1}, Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;->get(Ljava/nio/ByteBuffer;)V

    .line 587
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SMSConfig;->mSmsOverIPValid:Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

    invoke-virtual {v0, p1}, Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 588
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SMSConfig;->mSMSOverIP:Lcom/motorola/android/internal/telephony/ImsSetting$ByteValue;

    invoke-virtual {v0, p1}, Lcom/motorola/android/internal/telephony/ImsSetting$ByteValue;->get(Ljava/nio/ByteBuffer;)V

    .line 589
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SMSConfig;->mContextURIValid:Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

    invoke-virtual {v0, p1}, Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 590
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SMSConfig;->mContextURI:Lcom/motorola/android/internal/telephony/ImsSetting$StringValue;

    invoke-virtual {v0, p1}, Lcom/motorola/android/internal/telephony/ImsSetting$StringValue;->get(Ljava/nio/ByteBuffer;)V

    .line 591
    const-string v0, "IMS_SETTING"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SMSConfig::populate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    return-void
.end method

.method put(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 574
    const-string v0, "IMS_SETTING"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SMSConfig::put: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SMSConfig;->mSmsFormatValid:Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

    invoke-virtual {v0, p1}, Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 577
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SMSConfig;->mSMSFormat:Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;

    invoke-virtual {v0, p1}, Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;->put(Ljava/nio/ByteBuffer;)V

    .line 578
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SMSConfig;->mSmsOverIPValid:Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

    invoke-virtual {v0, p1}, Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 579
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SMSConfig;->mSMSOverIP:Lcom/motorola/android/internal/telephony/ImsSetting$ByteValue;

    invoke-virtual {v0, p1}, Lcom/motorola/android/internal/telephony/ImsSetting$ByteValue;->put(Ljava/nio/ByteBuffer;)V

    .line 580
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SMSConfig;->mContextURIValid:Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

    invoke-virtual {v0, p1}, Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 581
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SMSConfig;->mContextURI:Lcom/motorola/android/internal/telephony/ImsSetting$StringValue;

    invoke-virtual {v0, p1}, Lcom/motorola/android/internal/telephony/ImsSetting$StringValue;->put(Ljava/nio/ByteBuffer;)V

    .line 582
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMSConfig [mSmsFormatValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SMSConfig;->mSmsFormatValid:Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSMSFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SMSConfig;->mSMSFormat:Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSmsOverIPValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SMSConfig;->mSmsOverIPValid:Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSMSOverIP="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SMSConfig;->mSMSOverIP:Lcom/motorola/android/internal/telephony/ImsSetting$ByteValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mContextURIValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SMSConfig;->mContextURIValid:Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mContextURI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SMSConfig;->mContextURI:Lcom/motorola/android/internal/telephony/ImsSetting$StringValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
