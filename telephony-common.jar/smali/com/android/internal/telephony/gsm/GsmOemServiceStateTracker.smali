.class Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;
.super Lcom/android/internal/telephony/ServiceStateTracker;
.source "GsmOemServiceStateTracker.java"


# static fields
.field static final DBG:Z = true

.field private static final EVENT_GET_SIGNAL_STRENGTH_DONE:I = 0x3ec

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field static final OEM_SIGNAL_STRENGTH_REQ_DATA_QC:[B


# instance fields
.field public mATTContext:I

.field public mOldss:Landroid/telephony/SignalStrength;

.field phone:Lcom/android/internal/telephony/gsm/GSMPhone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->OEM_SIGNAL_STRENGTH_REQ_DATA_QC:[B

    return-void

    :array_0
    .array-data 1
        0x1t
        0x5t
        0x0t
        0x4t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;

    .prologue
    .line 62
    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    new-instance v1, Landroid/telephony/CellInfoGsm;

    invoke-direct {v1}, Landroid/telephony/CellInfoGsm;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/CommandsInterface;Landroid/telephony/CellInfo;)V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->mATTContext:I

    .line 64
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 65
    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 66
    return-void
.end method

.method private pollState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 186
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    .line 187
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    aput v2, v0, v2

    .line 189
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    aget v1, v0, v2

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v2

    .line 190
    return-void
.end method

.method private pollStateDone()V
    .locals 2

    .prologue
    .line 195
    const-string v0, "GSM"

    const-string v1, "Poll ServiceState done: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 73
    const-string v0, "GSM"

    const-string v1, "GsmServiceStateTracker finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return-void
.end method

.method public getCurrentDataConnectionState()I
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x0

    return v0
.end method

.method protected getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    return-object v0
.end method

.method public getSignalStrength(Landroid/telephony/SignalStrength;Landroid/telephony/SignalStrength;)V
    .locals 3
    .param p1, "oldss"    # Landroid/telephony/SignalStrength;
    .param p2, "ss"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enter in getSignalStrength"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/telephony/SignalStrength;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->log(Ljava/lang/String;)V

    .line 213
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->mOldss:Landroid/telephony/SignalStrength;

    .line 215
    const-string v0, "GsmOemServiceStateTracker::getSignalStrength Send OEM request raw"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->log(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v1, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->OEM_SIGNAL_STRENGTH_REQ_DATA_QC:[B

    const/16 v2, 0x3ec

    invoke-virtual {p0, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 219
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 87
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 118
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unhandled message with number: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 90
    :pswitch_0
    const-string v7, "Received case EVENT_GET_SIGNAL_STRENGTH_DONE"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->log(Ljava/lang/String;)V

    .line 91
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 92
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, [B

    move-object v6, v7

    check-cast v6, [B

    .line 94
    .local v6, "states":[B
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_1

    array-length v7, v6

    const/4 v8, 0x3

    if-ge v7, v8, :cond_3

    .line 95
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Get Signal Strength error or byte array length < 3"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_2

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    :goto_1
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v7, ""

    goto :goto_1

    .line 100
    :cond_3
    iget-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Landroid/telephony/SignalStrength;

    .line 101
    .local v5, "ss":Landroid/telephony/SignalStrength;
    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 102
    .local v1, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    mul-int/lit8 v4, v7, -0x1

    .line 103
    .local v4, "sigStrength":I
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    mul-int/lit8 v2, v7, -0x1

    .line 104
    .local v2, "ecno_ber":I
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 105
    .local v3, "rat":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received OEM values: sigStrength="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", ecno_ber="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", rat="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->log(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v5, v3, v4, v2}, Landroid/telephony/SignalStrength;->setOemSignalStrength(III)V

    .line 108
    invoke-static {}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->getInstance()Lcom/motorola/android/internal/telephony/SignalLevelManager;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->setLevels(Landroid/telephony/SignalStrength;)V

    .line 109
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received OEM signal strength"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->log(Ljava/lang/String;)V

    .line 110
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->mOldss:Landroid/telephony/SignalStrength;

    invoke-virtual {v7, v5}, Landroid/telephony/SignalStrength;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 111
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->notifySignalStrength()V

    goto/16 :goto_0

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x3ec
        :pswitch_0
    .end packed-switch
.end method

.method protected handlePollStateResult(ILandroid/os/AsyncResult;)V
    .locals 5
    .param p1, "what"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v4, 0x0

    .line 134
    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_4

    .line 135
    const/4 v0, 0x0

    .line 137
    .local v0, "err":Lcom/android/internal/telephony/CommandException$Error;
    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    .line 141
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_2

    .line 143
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->cancelPollState()V

    .line 173
    .end local v0    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_1
    :goto_0
    return-void

    .line 147
    .restart local v0    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v1

    if-nez v1, :cond_3

    .line 149
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->cancelPollState()V

    goto :goto_0

    .line 153
    :cond_3
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/android/internal/telephony/CommandException$Error;

    if-eq v0, v1, :cond_4

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/android/internal/telephony/CommandException$Error;

    if-eq v0, v1, :cond_4

    .line 155
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RIL implementation has returned an error where it must succeed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .end local v0    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    aget v2, v1, v4

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, v4

    .line 170
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    aget v1, v1, v4

    if-nez v1, :cond_1

    .line 171
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;->pollStateDone()V

    goto :goto_0
.end method

.method protected hangupAndPowerOff()V
    .locals 0

    .prologue
    .line 245
    return-void
.end method

.method public isConcurrentVoiceAndDataAllowed()Z
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x0

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 239
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GsmOemServiceStateTracker] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 234
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GsmOemServiceStateTracker] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    return-void
.end method

.method protected onUpdateIccAvailability()V
    .locals 0

    .prologue
    .line 229
    return-void
.end method

.method protected setPowerStateToDesired()V
    .locals 0

    .prologue
    .line 202
    return-void
.end method

.method protected updateSpnDisplay()V
    .locals 0

    .prologue
    .line 206
    return-void
.end method
