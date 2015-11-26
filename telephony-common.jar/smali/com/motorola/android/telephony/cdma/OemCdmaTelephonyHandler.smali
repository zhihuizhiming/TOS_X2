.class public Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyHandler;
.super Landroid/os/Handler;
.source "OemCdmaTelephonyHandler.java"


# static fields
.field private static final DBG:Z = false

.field private static final EVENT_UNSOL_OEM_HOOK_RAW:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "OemCdmaTelephonyHandler"


# instance fields
.field private mCM:Lcom/android/internal/telephony/CommandsInterface;

.field private mIsConcurrentVoiceAndDataAllowed:Z

.field private mIsDataSuspended:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 48
    iput-boolean v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyHandler;->mIsDataSuspended:Z

    .line 49
    iput-boolean v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyHandler;->mIsConcurrentVoiceAndDataAllowed:Z

    .line 54
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 55
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyHandler;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    .line 56
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyHandler;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnUnsolOemHookRaw(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 57
    return-void
.end method

.method private handleUnsolicitedOemHookRaw([B)V
    .locals 6
    .param p1, "rawData"    # [B

    .prologue
    .line 80
    array-length v4, p1

    if-gtz v4, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 83
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-static {v0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->readHookHeader(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;

    move-result-object v1

    .line 85
    .local v1, "cdmaHdr":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    if-eqz v1, :cond_0

    .line 87
    iget v4, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->msgId:I

    const v5, 0x20001b0

    if-ne v4, v5, :cond_2

    .line 89
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sprint.mip.error.notification"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 90
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "errorcode"

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 93
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 96
    .local v2, "e":Ljava/nio/BufferUnderflowException;
    const-string v4, "OemCdmaTelephonyHandler"

    const-string v5, "MIP ErrorNotify fails."

    invoke-static {v4, v5, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 99
    .end local v2    # "e":Ljava/nio/BufferUnderflowException;
    :cond_2
    iget v4, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->msgId:I

    const v5, 0x20001b2

    if-ne v4, v5, :cond_0

    .line 101
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sprint.vsncp.error.notification"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 102
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v4, "errorcode"

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 104
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 105
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v2

    .line 106
    .restart local v2    # "e":Ljava/nio/BufferUnderflowException;
    const-string v4, "OemCdmaTelephonyHandler"

    const-string v5, "VSNCP ErrorNotify fails."

    invoke-static {v4, v5, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyHandler;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnUnsolOemHookRaw(Landroid/os/Handler;)V

    .line 61
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 66
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 73
    const-string v1, "OemCdmaTelephonyHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled message with number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :goto_0
    return-void

    .line 68
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 69
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    invoke-direct {p0, v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyHandler;->handleUnsolicitedOemHookRaw([B)V

    goto :goto_0

    .line 66
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
