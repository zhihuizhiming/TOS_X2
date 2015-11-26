.class final Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/InboundSmsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SmsBroadcastReceiver"
.end annotation


# instance fields
.field private mBroadcastTimeNano:J

.field private final mDeleteWhere:Ljava/lang/String;

.field private final mDeleteWhereArgs:[Ljava/lang/String;

.field private mFormat:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/telephony/InboundSmsHandler;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsTracker;)V
    .locals 2
    .param p2, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;

    .prologue
    .line 1060
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1061
    invoke-virtual {p2}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhere()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mDeleteWhere:Ljava/lang/String;

    .line 1062
    invoke-virtual {p2}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mDeleteWhereArgs:[Ljava/lang/String;

    .line 1063
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mBroadcastTimeNano:J

    .line 1065
    invoke-virtual {p2}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mFormat:Ljava/lang/String;

    .line 1066
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1070
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1072
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x104062f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1074
    .local v6, "motoDirectAppSmsAction":Ljava/lang/String;
    const-string v9, "android.provider.Telephony.SMS_DELIVER"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1078
    :cond_0
    const-string v9, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1079
    const/4 v9, 0x0

    invoke-virtual {p2, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1080
    iget-object v9, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string v10, "android.permission.RECEIVE_SMS"

    const/16 v11, 0x10

    invoke-virtual {v9, p2, v10, v11, p0}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    .line 1146
    :goto_0
    return-void

    .line 1082
    :cond_1
    const-string v9, "android.provider.Telephony.WAP_PUSH_DELIVER"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1084
    const-string v9, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1085
    const/4 v9, 0x0

    invoke-virtual {p2, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1086
    iget-object v9, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string v10, "android.permission.RECEIVE_SMS"

    const/16 v11, 0x10

    invoke-virtual {v9, p2, v10, v11, p0}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    goto :goto_0

    .line 1089
    :cond_2
    const-string v9, "com.motorola.provider.Telephony.SMS_UNORDERED_RECEIVED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "com.motorola.intent.action.DATA_SMS_UNORDERED_RECEIVED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1092
    :cond_3
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Landroid/content/BroadcastReceiver;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v4

    .line 1093
    .local v4, "initialExtras":Landroid/os/Bundle;
    const-string v9, "orderedPdus"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/Object;

    move-object v5, v9

    check-cast v5, [Ljava/lang/Object;

    .line 1094
    .local v5, "messages":[Ljava/lang/Object;
    if-eqz v5, :cond_4

    array-length v9, v5

    if-nez v9, :cond_5

    .line 1095
    :cond_4
    iget-object v9, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string v10, "error : orderedPdus from messaging-app is null!"

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1103
    iget-object v9, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 1107
    :cond_5
    array-length v9, v5

    new-array v7, v9, [[B

    .line 1108
    .local v7, "pdus":[[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v9, v5

    if-ge v3, v9, :cond_6

    .line 1109
    aget-object v9, v5, v3

    check-cast v9, [B

    check-cast v9, [B

    aput-object v9, v7, v3

    .line 1108
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1111
    :cond_6
    const-string v9, "com.motorola.provider.Telephony.SMS_UNORDERED_RECEIVED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1112
    iget-object v9, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v10, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mFormat:Ljava/lang/String;

    invoke-virtual {v9, p0, v7, v10}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchSMS(Landroid/content/BroadcastReceiver;[[BLjava/lang/String;)Z

    goto :goto_0

    .line 1114
    :cond_7
    const-string v9, "destPort"

    const/4 v10, -0x1

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1115
    .local v1, "destPort":I
    iget-object v9, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v10, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mFormat:Ljava/lang/String;

    invoke-virtual {v9, p0, v7, v1, v10}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchDataMessage(Landroid/content/BroadcastReceiver;[[BILjava/lang/String;)Z

    goto :goto_0

    .line 1121
    .end local v1    # "destPort":I
    .end local v3    # "i":I
    .end local v4    # "initialExtras":Landroid/os/Bundle;
    .end local v5    # "messages":[Ljava/lang/Object;
    .end local v7    # "pdus":[[B
    :cond_8
    const-string v9, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    const-string v9, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    const-string v9, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 1125
    iget-object v9, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unexpected BroadcastReceiver action: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 1128
    :cond_9
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getResultCode()I

    move-result v8

    .line 1129
    .local v8, "rc":I
    const/4 v9, -0x1

    if-eq v8, v9, :cond_a

    const/4 v9, 0x1

    if-eq v8, v9, :cond_a

    .line 1130
    iget-object v9, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "a broadcast receiver set the result code to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", deleting from raw table anyway!"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 1136
    :goto_2
    iget-object v9, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v10, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mDeleteWhere:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mDeleteWhereArgs:[Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1137
    iget-object v9, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 1139
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    iget-wide v11, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mBroadcastTimeNano:J

    sub-long/2addr v9, v11

    const-wide/32 v11, 0xf4240

    div-long/2addr v9, v11

    long-to-int v2, v9

    .line 1140
    .local v2, "durationMillis":I
    const/16 v9, 0x1388

    if-lt v2, v9, :cond_b

    .line 1141
    iget-object v9, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Slow ordered broadcast completion time: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ms"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1133
    .end local v2    # "durationMillis":I
    :cond_a
    iget-object v9, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string v10, "successful broadcast, deleting from raw table."

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 1143
    .restart local v2    # "durationMillis":I
    :cond_b
    iget-object v9, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ordered broadcast completed in: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ms"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
