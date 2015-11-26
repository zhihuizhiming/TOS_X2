.class Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;
.super Lcom/motorola/android/internal/telephony/ImsSetting$Config;
.source "ImsSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/ImsSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SipConfigRawData"
.end annotation


# instance fields
.field mLocalPort:Lcom/motorola/android/internal/telephony/ImsSetting$ShortValue;

.field mLocalPortValid:Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

.field mRegistrationTimer:Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;

.field mRegistrationTimerValid:Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

.field mSigCompEnabled:Lcom/motorola/android/internal/telephony/ImsSetting$ByteValue;

.field mSigCompEnabledValid:Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

.field mSubscribeTimer:Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;

.field mSubscribeTimerValid:Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

.field mT1Timer:Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;

.field mT1TimerValid:Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

.field mT2Timer:Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;

.field mT2TimerValid:Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

.field mTfTimer:Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;

.field mTfTimerValid:Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

.field final synthetic this$0:Lcom/motorola/android/internal/telephony/ImsSetting;


# direct methods
.method constructor <init>(Lcom/motorola/android/internal/telephony/ImsSetting;)V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 472
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->this$0:Lcom/motorola/android/internal/telephony/ImsSetting;

    invoke-direct {p0, p1}, Lcom/motorola/android/internal/telephony/ImsSetting$Config;-><init>(Lcom/motorola/android/internal/telephony/ImsSetting;)V

    .line 473
    new-instance v0, Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->this$0:Lcom/motorola/android/internal/telephony/ImsSetting;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;-><init>(Lcom/motorola/android/internal/telephony/ImsSetting;I)V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->mLocalPortValid:Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

    .line 474
    new-instance v0, Lcom/motorola/android/internal/telephony/ImsSetting$ShortValue;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->this$0:Lcom/motorola/android/internal/telephony/ImsSetting;

    invoke-direct {v0, v1}, Lcom/motorola/android/internal/telephony/ImsSetting$ShortValue;-><init>(Lcom/motorola/android/internal/telephony/ImsSetting;)V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->mLocalPort:Lcom/motorola/android/internal/telephony/ImsSetting$ShortValue;

    .line 475
    new-instance v0, Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->this$0:Lcom/motorola/android/internal/telephony/ImsSetting;

    invoke-direct {v0, v1, v3}, Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;-><init>(Lcom/motorola/android/internal/telephony/ImsSetting;I)V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->mRegistrationTimerValid:Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

    .line 476
    new-instance v0, Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->this$0:Lcom/motorola/android/internal/telephony/ImsSetting;

    invoke-direct {v0, v1}, Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;-><init>(Lcom/motorola/android/internal/telephony/ImsSetting;)V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->mRegistrationTimer:Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;

    .line 477
    new-instance v0, Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->this$0:Lcom/motorola/android/internal/telephony/ImsSetting;

    invoke-direct {v0, v1, v3}, Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;-><init>(Lcom/motorola/android/internal/telephony/ImsSetting;I)V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->mSubscribeTimerValid:Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

    .line 478
    new-instance v0, Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->this$0:Lcom/motorola/android/internal/telephony/ImsSetting;

    invoke-direct {v0, v1}, Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;-><init>(Lcom/motorola/android/internal/telephony/ImsSetting;)V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->mSubscribeTimer:Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;

    .line 479
    new-instance v0, Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->this$0:Lcom/motorola/android/internal/telephony/ImsSetting;

    invoke-direct {v0, v1, v3}, Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;-><init>(Lcom/motorola/android/internal/telephony/ImsSetting;I)V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->mT1TimerValid:Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

    .line 480
    new-instance v0, Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->this$0:Lcom/motorola/android/internal/telephony/ImsSetting;

    invoke-direct {v0, v1}, Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;-><init>(Lcom/motorola/android/internal/telephony/ImsSetting;)V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->mT1Timer:Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;

    .line 481
    new-instance v0, Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->this$0:Lcom/motorola/android/internal/telephony/ImsSetting;

    invoke-direct {v0, v1, v3}, Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;-><init>(Lcom/motorola/android/internal/telephony/ImsSetting;I)V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->mT2TimerValid:Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

    .line 482
    new-instance v0, Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->this$0:Lcom/motorola/android/internal/telephony/ImsSetting;

    invoke-direct {v0, v1}, Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;-><init>(Lcom/motorola/android/internal/telephony/ImsSetting;)V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->mT2Timer:Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;

    .line 483
    new-instance v0, Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->this$0:Lcom/motorola/android/internal/telephony/ImsSetting;

    invoke-direct {v0, v1, v3}, Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;-><init>(Lcom/motorola/android/internal/telephony/ImsSetting;I)V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->mTfTimerValid:Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

    .line 484
    new-instance v0, Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->this$0:Lcom/motorola/android/internal/telephony/ImsSetting;

    invoke-direct {v0, v1}, Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;-><init>(Lcom/motorola/android/internal/telephony/ImsSetting;)V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->mTfTimer:Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;

    .line 485
    new-instance v0, Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->this$0:Lcom/motorola/android/internal/telephony/ImsSetting;

    invoke-direct {v0, v1}, Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;-><init>(Lcom/motorola/android/internal/telephony/ImsSetting;)V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->mSigCompEnabledValid:Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

    .line 486
    new-instance v0, Lcom/motorola/android/internal/telephony/ImsSetting$ByteValue;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->this$0:Lcom/motorola/android/internal/telephony/ImsSetting;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/internal/telephony/ImsSetting$ByteValue;-><init>(Lcom/motorola/android/internal/telephony/ImsSetting;I)V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->mSigCompEnabled:Lcom/motorola/android/internal/telephony/ImsSetting$ByteValue;

    return-void
.end method


# virtual methods
.method getSize()I
    .locals 1

    .prologue
    .line 490
    const/16 v0, 0x30

    return v0
.end method

.method populate(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 513
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->mLocalPortValid:Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

    invoke-virtual {v0, p1}, Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 514
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->mLocalPort:Lcom/motorola/android/internal/telephony/ImsSetting$ShortValue;

    invoke-virtual {v0, p1}, Lcom/motorola/android/internal/telephony/ImsSetting$ShortValue;->get(Ljava/nio/ByteBuffer;)V

    .line 515
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->mRegistrationTimerValid:Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

    invoke-virtual {v0, p1}, Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 516
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->mRegistrationTimer:Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;

    invoke-virtual {v0, p1}, Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;->get(Ljava/nio/ByteBuffer;)V

    .line 517
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->mSubscribeTimerValid:Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

    invoke-virtual {v0, p1}, Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 518
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->mSubscribeTimer:Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;

    invoke-virtual {v0, p1}, Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;->get(Ljava/nio/ByteBuffer;)V

    .line 519
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->mT1TimerValid:Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

    invoke-virtual {v0, p1}, Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 520
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->mT1Timer:Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;

    invoke-virtual {v0, p1}, Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;->get(Ljava/nio/ByteBuffer;)V

    .line 521
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->mT2TimerValid:Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

    invoke-virtual {v0, p1}, Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 522
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->mT2Timer:Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;

    invoke-virtual {v0, p1}, Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;->get(Ljava/nio/ByteBuffer;)V

    .line 523
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->mTfTimerValid:Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

    invoke-virtual {v0, p1}, Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 524
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->mTfTimer:Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;

    invoke-virtual {v0, p1}, Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;->get(Ljava/nio/ByteBuffer;)V

    .line 525
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->mSigCompEnabledValid:Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

    invoke-virtual {v0, p1}, Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 526
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->mSigCompEnabled:Lcom/motorola/android/internal/telephony/ImsSetting$ByteValue;

    invoke-virtual {v0, p1}, Lcom/motorola/android/internal/telephony/ImsSetting$ByteValue;->get(Ljava/nio/ByteBuffer;)V

    .line 528
    const-string v0, "IMS_SETTING"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SipConfigRawData::populate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    return-void
.end method

.method put(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 494
    const-string v0, "IMS_SETTING"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SipConfigRawData::put: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->mLocalPortValid:Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

    invoke-virtual {v0, p1}, Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 497
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->mLocalPort:Lcom/motorola/android/internal/telephony/ImsSetting$ShortValue;

    invoke-virtual {v0, p1}, Lcom/motorola/android/internal/telephony/ImsSetting$ShortValue;->put(Ljava/nio/ByteBuffer;)V

    .line 498
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->mRegistrationTimerValid:Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

    invoke-virtual {v0, p1}, Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 499
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->mRegistrationTimer:Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;

    invoke-virtual {v0, p1}, Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;->put(Ljava/nio/ByteBuffer;)V

    .line 500
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->mSubscribeTimerValid:Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

    invoke-virtual {v0, p1}, Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 501
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->mSubscribeTimer:Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;

    invoke-virtual {v0, p1}, Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;->put(Ljava/nio/ByteBuffer;)V

    .line 502
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->mT1TimerValid:Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

    invoke-virtual {v0, p1}, Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 503
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->mT1Timer:Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;

    invoke-virtual {v0, p1}, Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;->put(Ljava/nio/ByteBuffer;)V

    .line 504
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->mT2TimerValid:Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

    invoke-virtual {v0, p1}, Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 505
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->mT2Timer:Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;

    invoke-virtual {v0, p1}, Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;->put(Ljava/nio/ByteBuffer;)V

    .line 506
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->mTfTimerValid:Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

    invoke-virtual {v0, p1}, Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 507
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->mTfTimer:Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;

    invoke-virtual {v0, p1}, Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;->put(Ljava/nio/ByteBuffer;)V

    .line 508
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->mSigCompEnabledValid:Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

    invoke-virtual {v0, p1}, Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 509
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->mSigCompEnabled:Lcom/motorola/android/internal/telephony/ImsSetting$ByteValue;

    invoke-virtual {v0, p1}, Lcom/motorola/android/internal/telephony/ImsSetting$ByteValue;->put(Ljava/nio/ByteBuffer;)V

    .line 510
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SipConfigRawData [mLocalPortValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->mLocalPortValid:Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLocalPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->mLocalPort:Lcom/motorola/android/internal/telephony/ImsSetting$ShortValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRegistrationTimerValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->mRegistrationTimerValid:Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRegistrationTimer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->mRegistrationTimer:Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSubscribeTimerValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->mSubscribeTimerValid:Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSubscribeTimer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->mSubscribeTimer:Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mT1TimerValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->mT1TimerValid:Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mT1Timer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->mT1Timer:Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mT2TimerValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->mT2TimerValid:Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mT2Timer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->mT2Timer:Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTfTimerValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->mTfTimerValid:Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTfTimer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->mTfTimer:Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSigCompEnabledValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->mSigCompEnabledValid:Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSigCompEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->mSigCompEnabled:Lcom/motorola/android/internal/telephony/ImsSetting$ByteValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
