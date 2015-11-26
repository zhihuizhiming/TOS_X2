.class public Lcom/android/internal/telephony/CallManager$CmHandler;
.super Landroid/os/Handler;
.source "CallManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CmHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/CallManager;


# direct methods
.method protected constructor <init>(Lcom/android/internal/telephony/CallManager;)V
    .locals 0

    .prologue
    .line 2025
    iput-object p1, p0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2030
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    sparse-switch v11, :sswitch_data_0

    .line 2215
    :cond_0
    :goto_0
    return-void

    .line 2033
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v12, v11, Lcom/android/internal/telephony/CallManager;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    invoke-virtual {v12, v11}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2037
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v11, v11, Landroid/os/AsyncResult;

    if-eqz v11, :cond_3

    .line 2038
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 2039
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v11, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v11, v11, Lcom/android/internal/telephony/Connection;

    if-eqz v11, :cond_3

    .line 2040
    iget-object v4, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/Connection;

    .line 2042
    .local v4, "cn":Lcom/android/internal/telephony/Connection;
    new-instance v7, Landroid/content/Intent;

    const-string v11, "com.motorola.android.intent.action.ACTION_CALL_DISCONNECTED"

    invoke-direct {v7, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2043
    .local v7, "intent":Landroid/content/Intent;
    const-string v11, "incoming"

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v12

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2044
    const-string v11, "duration"

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v12

    invoke-virtual {v7, v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2045
    const-string v11, "disconnected_time"

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getDisconnectTime()J

    move-result-wide v12

    invoke-virtual {v7, v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2046
    const-string v11, "disconnected_cause"

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2048
    const-string v11, "disconnected_cause_additional"

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getAdditionalErrorInfo()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2052
    const-string v11, "type"

    iget-object v12, v4, Lcom/android/internal/telephony/Connection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    iget v12, v12, Lcom/android/internal/telephony/CallDetails;->call_type:I

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2053
    const-string v11, "domain"

    iget-object v12, v4, Lcom/android/internal/telephony/Connection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    iget v12, v12, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2057
    :try_start_0
    const-string v11, "index"

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getIndex()I

    move-result v12

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2062
    :goto_1
    const-string v11, "create_time"

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v12

    invoke-virtual {v7, v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2063
    const-string v11, "fallback"

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->isFallback()Z

    move-result v12

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2065
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 2066
    const/4 v10, -0x1

    .line 2067
    .local v10, "subscription":I
    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 2068
    .local v3, "ca":Lcom/android/internal/telephony/Call;
    if-eqz v3, :cond_1

    .line 2069
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    .line 2070
    .local v9, "ph":Lcom/android/internal/telephony/Phone;
    if-eqz v9, :cond_1

    .line 2071
    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v10

    .line 2074
    .end local v9    # "ph":Lcom/android/internal/telephony/Phone;
    :cond_1
    const/4 v11, -0x1

    if-eq v10, v11, :cond_2

    .line 2076
    const-string v11, "subscription"

    invoke-virtual {v7, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2079
    .end local v3    # "ca":Lcom/android/internal/telephony/Call;
    .end local v10    # "subscription":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2084
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "cn":Lcom/android/internal/telephony/Connection;
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->isImsPhoneActive()Z

    move-result v11

    if-nez v11, :cond_0

    .line 2085
    const-string v11, "CallManager"

    const-string v12, "Call disconnected, check if restore roaming IMS mode. "

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2086
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    # getter for: Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v11}, Lcom/android/internal/telephony/CallManager;->access$000(Lcom/android/internal/telephony/CallManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->contSetImsMode()V

    goto/16 :goto_0

    .line 2058
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    .restart local v4    # "cn":Lcom/android/internal/telephony/Connection;
    .restart local v7    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v5

    .line 2059
    .local v5, "e":Lcom/android/internal/telephony/CallStateException;
    const-string v11, "CallManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getIndex: return exception="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    const-string v11, "index"

    const/4 v12, -0x1

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 2094
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "cn":Lcom/android/internal/telephony/Connection;
    .end local v5    # "e":Lcom/android/internal/telephony/CallStateException;
    .end local v7    # "intent":Landroid/content/Intent;
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v11, v11, Lcom/android/internal/telephony/CallManager;->mEmergencyCallHelper:Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;

    if-eqz v11, :cond_4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getContext()Landroid/content/Context;

    move-result-object v11

    if-eqz v11, :cond_4

    .line 2095
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v11, v11, Lcom/android/internal/telephony/CallManager;->mEmergencyCallHelper:Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;->onPrecisePhoneStateChange()V

    .line 2098
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v12, v11, Lcom/android/internal/telephony/CallManager;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    invoke-virtual {v12, v11}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2102
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v11

    if-nez v11, :cond_5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    # invokes: Lcom/android/internal/telephony/CallManager;->hasMoreThanOneRingingCall()Z
    invoke-static {v11}, Lcom/android/internal/telephony/CallManager;->access$100(Lcom/android/internal/telephony/CallManager;)Z

    move-result v11

    if-eqz v11, :cond_6

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    # invokes: Lcom/android/internal/telephony/CallManager;->isRingingDuplicateCall()Z
    invoke-static {v11}, Lcom/android/internal/telephony/CallManager;->access$200(Lcom/android/internal/telephony/CallManager;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 2104
    :cond_5
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/Connection;

    .line 2106
    .local v2, "c":Lcom/android/internal/telephony/Connection;
    :try_start_1
    const-string v11, "CallManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "silently drop incoming call: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2107
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 2108
    :catch_1
    move-exception v5

    .line 2109
    .restart local v5    # "e":Lcom/android/internal/telephony/CallStateException;
    const-string v11, "CallManager"

    const-string v12, "new ringing connection"

    invoke-static {v11, v12, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 2112
    .end local v2    # "c":Lcom/android/internal/telephony/Connection;
    .end local v5    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v12, v11, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    invoke-virtual {v12, v11}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2117
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v12, v11, Lcom/android/internal/telephony/CallManager;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    invoke-virtual {v12, v11}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2122
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v11

    if-nez v11, :cond_0

    .line 2123
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v12, v11, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    invoke-virtual {v12, v11}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2128
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v12, v11, Lcom/android/internal/telephony/CallManager;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    invoke-virtual {v12, v11}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2132
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v12, v11, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    invoke-virtual {v12, v11}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2136
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v12, v11, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    invoke-virtual {v12, v11}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2140
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v12, v11, Lcom/android/internal/telephony/CallManager;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    invoke-virtual {v12, v11}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2144
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v12, v11, Lcom/android/internal/telephony/CallManager;->mDisplayInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    invoke-virtual {v12, v11}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2148
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v12, v11, Lcom/android/internal/telephony/CallManager;->mSignalInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    invoke-virtual {v12, v11}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2152
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v12, v11, Lcom/android/internal/telephony/CallManager;->mCdmaOtaStatusChangeRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    invoke-virtual {v12, v11}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2156
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v12, v11, Lcom/android/internal/telephony/CallManager;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    invoke-virtual {v12, v11}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2160
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v12, v11, Lcom/android/internal/telephony/CallManager;->mMmiInitiateRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    invoke-virtual {v12, v11}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2164
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v12, v11, Lcom/android/internal/telephony/CallManager;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    invoke-virtual {v12, v11}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2168
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v12, v11, Lcom/android/internal/telephony/CallManager;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    invoke-virtual {v12, v11}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2172
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v12, v11, Lcom/android/internal/telephony/CallManager;->mSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    invoke-virtual {v12, v11}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2176
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v12, v11, Lcom/android/internal/telephony/CallManager;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    invoke-virtual {v12, v11}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2180
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v12, v11, Lcom/android/internal/telephony/CallManager;->mSuppServiceNotificationRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    invoke-virtual {v12, v11}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2184
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v12, v11, Lcom/android/internal/telephony/CallManager;->mServiceStateChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    invoke-virtual {v12, v11}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2188
    :sswitch_14
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 2189
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    if-eqz v1, :cond_7

    iget-object v11, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v11, :cond_7

    iget-object v11, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v11, :cond_7

    .line 2190
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v12, v11, Lcom/android/internal/telephony/CallManager;->mCallModifyRegistrants:Landroid/os/RegistrantList;

    new-instance v13, Landroid/os/AsyncResult;

    const/4 v14, 0x0

    iget-object v11, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v11, Lcom/android/internal/telephony/Connection;

    const/4 v15, 0x0

    invoke-direct {v13, v14, v11, v15}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v12, v13}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2193
    :cond_7
    const-string v11, "CallManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error EVENT_MODIFY_CALL AsyncResult ar= "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2200
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :sswitch_15
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v11, v11, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v11}, Landroid/os/RegistrantList;->size()I

    move-result v11

    if-ge v6, v11, :cond_0

    .line 2202
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v11, v11, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v11, v6}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Registrant;

    invoke-virtual {v11}, Landroid/os/Registrant;->messageForRegistrant()Landroid/os/Message;

    move-result-object v8

    .line 2203
    .local v8, "notifyMsg":Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v11, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2204
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    iput v11, v8, Landroid/os/Message;->arg1:I

    .line 2205
    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 2200
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 2210
    .end local v6    # "i":I
    .end local v8    # "notifyMsg":Landroid/os/Message;
    :sswitch_16
    const-string v11, "CallManager"

    const-string v12, "handleMessage (EVENT_CALL_TYPE_CHANGE)"

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2211
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/CallManager$CmHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v12, v11, Lcom/android/internal/telephony/CallManager;->mCallTypeChangeRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    invoke-virtual {v12, v11}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2030
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_2
        0x67 -> :sswitch_3
        0x68 -> :sswitch_4
        0x69 -> :sswitch_5
        0x6a -> :sswitch_6
        0x6b -> :sswitch_7
        0x6c -> :sswitch_8
        0x6d -> :sswitch_9
        0x6e -> :sswitch_a
        0x6f -> :sswitch_b
        0x70 -> :sswitch_c
        0x71 -> :sswitch_d
        0x72 -> :sswitch_e
        0x73 -> :sswitch_f
        0x74 -> :sswitch_10
        0x75 -> :sswitch_11
        0x76 -> :sswitch_13
        0x77 -> :sswitch_15
        0x78 -> :sswitch_12
        0x79 -> :sswitch_14
        0xc8 -> :sswitch_16
    .end sparse-switch
.end method
