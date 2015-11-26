.class public Lcom/motorola/android/telephony/cdma/OemLteTelephonyHandler;
.super Landroid/os/Handler;
.source "OemLteTelephonyHandler.java"


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_UNSOL_OEM_HOOK_RAW:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "OemLteTelephonyHandler"

.field private static final MOT_QMI_SPRINT_DS_PROFILE_MAX_APN_STRING_LEN_V01:I = 0x67

.field private static lteErrorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/android/telephony/LteError;",
            ">;"
        }
    .end annotation
.end field

.field private static mLastLteError:Lcom/motorola/android/telephony/LteError;


# instance fields
.field private mCM:Lcom/android/internal/telephony/CommandsInterface;

.field private mIsConcurrentVoiceAndDataAllowed:Z

.field private mIsDataSuspended:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyHandler;->mLastLteError:Lcom/motorola/android/telephony/LteError;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyHandler;->lteErrorList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 54
    iput-boolean v0, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyHandler;->mIsDataSuspended:Z

    .line 55
    iput-boolean v0, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyHandler;->mIsConcurrentVoiceAndDataAllowed:Z

    .line 62
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 63
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyHandler;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    .line 64
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyHandler;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnUnsolOemHookRaw(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 65
    return-void
.end method

.method private handleUnsolicitedOemHookRaw([B)V
    .locals 13
    .param p1, "rawData"    # [B

    .prologue
    .line 87
    const-string v11, "OemLteTelephonyHandler"

    const-string v12, "handleUnsolicitedCdmaOemHookRaw"

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    array-length v11, p1

    if-gtz v11, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    const/4 v7, 0x0

    .line 91
    .local v7, "errorCode":I
    const/4 v3, 0x0

    .line 92
    .local v3, "apnValid":B
    const/4 v2, 0x0

    .line 93
    .local v2, "apnNameLength":I
    const/16 v11, 0x67

    new-array v1, v11, [B

    .line 96
    .local v1, "apnNameAsByteArray":[B
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v11

    sget-object v12, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 97
    .local v4, "bb":Ljava/nio/ByteBuffer;
    invoke-static {v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->readHookHeader(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;

    move-result-object v5

    .line 99
    .local v5, "cdmaHdr":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    if-eqz v5, :cond_0

    .line 101
    iget v11, v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->msgId:I

    const v12, 0x20001b1

    if-ne v11, v12, :cond_0

    .line 105
    :try_start_0
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    .line 106
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 107
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 108
    const/4 v11, 0x0

    const/16 v12, 0x67

    invoke-virtual {v4, v1, v11, v12}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 109
    const/16 v11, 0x67

    invoke-static {v2, v11}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 111
    new-instance v0, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v0, v1, v11, v2}, Ljava/lang/String;-><init>([BII)V

    .line 112
    .local v0, "apnName":Ljava/lang/String;
    new-instance v12, Lcom/motorola/android/telephony/LteError;

    if-eqz v3, :cond_3

    const/4 v11, 0x1

    :goto_1
    invoke-direct {v12, v7, v0, v11}, Lcom/motorola/android/telephony/LteError;-><init>(ILjava/lang/String;Z)V

    sput-object v12, Lcom/motorola/android/telephony/cdma/OemLteTelephonyHandler;->mLastLteError:Lcom/motorola/android/telephony/LteError;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .end local v0    # "apnName":Ljava/lang/String;
    :goto_2
    new-instance v8, Landroid/content/Intent;

    const-string v11, "com.sprint.lte.error.notification"

    invoke-direct {v8, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 119
    .local v8, "intent":Landroid/content/Intent;
    const-string v11, "errorcode"

    invoke-virtual {v8, v11, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 120
    const-string v11, "OemLteTelephonyHandler"

    const-string v12, "LTE error event received, broadcast to show notification"

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v11, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 124
    sget-object v11, Lcom/motorola/android/telephony/cdma/OemLteTelephonyHandler;->lteErrorList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object v9

    .line 125
    .local v9, "iterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/motorola/android/telephony/LteError;>;"
    const/4 v10, 0x0

    .line 126
    .local v10, "match":Z
    :cond_2
    :goto_3
    invoke-interface {v9}, Ljava/util/ListIterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 127
    invoke-interface {v9}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/android/telephony/LteError;

    .line 128
    .local v6, "e":Lcom/motorola/android/telephony/LteError;
    invoke-virtual {v6}, Lcom/motorola/android/telephony/LteError;->getApnName()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/motorola/android/telephony/cdma/OemLteTelephonyHandler;->mLastLteError:Lcom/motorola/android/telephony/LteError;

    invoke-virtual {v12}, Lcom/motorola/android/telephony/LteError;->getApnName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 130
    sget-object v11, Lcom/motorola/android/telephony/cdma/OemLteTelephonyHandler;->mLastLteError:Lcom/motorola/android/telephony/LteError;

    invoke-interface {v9, v11}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 131
    const/4 v10, 0x1

    goto :goto_3

    .line 112
    .end local v6    # "e":Lcom/motorola/android/telephony/LteError;
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "iterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/motorola/android/telephony/LteError;>;"
    .end local v10    # "match":Z
    .restart local v0    # "apnName":Ljava/lang/String;
    :cond_3
    const/4 v11, 0x0

    goto :goto_1

    .line 113
    .end local v0    # "apnName":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 114
    .local v6, "e":Ljava/nio/BufferUnderflowException;
    const-string v11, "OemLteTelephonyHandler"

    const-string v12, "isMipErrorNotify fails."

    invoke-static {v11, v12, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 134
    .end local v6    # "e":Ljava/nio/BufferUnderflowException;
    .restart local v8    # "intent":Landroid/content/Intent;
    .restart local v9    # "iterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/motorola/android/telephony/LteError;>;"
    .restart local v10    # "match":Z
    :cond_4
    if-nez v10, :cond_0

    .line 135
    sget-object v11, Lcom/motorola/android/telephony/cdma/OemLteTelephonyHandler;->lteErrorList:Ljava/util/ArrayList;

    sget-object v12, Lcom/motorola/android/telephony/cdma/OemLteTelephonyHandler;->mLastLteError:Lcom/motorola/android/telephony/LteError;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyHandler;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnUnsolOemHookRaw(Landroid/os/Handler;)V

    .line 69
    return-void
.end method

.method public getLteErrors()[Lcom/motorola/android/telephony/LteError;
    .locals 2

    .prologue
    .line 147
    sget-object v1, Lcom/motorola/android/telephony/cdma/OemLteTelephonyHandler;->lteErrorList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v1, [Lcom/motorola/android/telephony/LteError;

    .line 148
    .local v0, "errList":[Lcom/motorola/android/telephony/LteError;
    sget-object v1, Lcom/motorola/android/telephony/cdma/OemLteTelephonyHandler;->lteErrorList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 149
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 74
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 81
    const-string v1, "OemLteTelephonyHandler"

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

    .line 84
    :goto_0
    return-void

    .line 76
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 77
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    invoke-direct {p0, v1}, Lcom/motorola/android/telephony/cdma/OemLteTelephonyHandler;->handleUnsolicitedOemHookRaw([B)V

    goto :goto_0

    .line 74
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
