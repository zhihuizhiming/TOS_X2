.class Landroid/net/wifi/WifiStateMachine$8;
.super Landroid/content/BroadcastReceiver;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 1074
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$8;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, -0x1

    .line 1077
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "qualcomm.intent.action.SAFE_WIFI_CHANNELS_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1079
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$8;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string/jumbo v4, "start_safe_channel"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    # setter for: Landroid/net/wifi/WifiStateMachine;->startSafeChannel:I
    invoke-static {v3, v4}, Landroid/net/wifi/WifiStateMachine;->access$1602(Landroid/net/wifi/WifiStateMachine;I)I

    .line 1080
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$8;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v4, "end_safe_channel"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    # setter for: Landroid/net/wifi/WifiStateMachine;->endSafeChannel:I
    invoke-static {v3, v4}, Landroid/net/wifi/WifiStateMachine;->access$1702(Landroid/net/wifi/WifiStateMachine;I)I

    .line 1081
    const-string v3, "WifiStateMachine"

    const-string v4, "Received WIFI_CHANNELS_CHANGED broadcast"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$8;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v2

    .line 1083
    .local v2, "state":I
    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    .line 1084
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$8;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3}, Landroid/net/wifi/WifiStateMachine;->getSapAutoChannelSelection()I

    move-result v0

    .line 1085
    .local v0, "autochannel":I
    const-string v3, "WifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "autochannel="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    const/4 v3, 0x1

    if-ne v3, v0, :cond_1

    .line 1087
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$8;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3}, Landroid/net/wifi/WifiStateMachine;->getSapOperatingChannel()I

    move-result v1

    .line 1088
    .local v1, "currentChannel":I
    if-ltz v1, :cond_1

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$8;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->startSafeChannel:I
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$1600(Landroid/net/wifi/WifiStateMachine;)I

    move-result v3

    if-lt v1, v3, :cond_0

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$8;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->endSafeChannel:I
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$1700(Landroid/net/wifi/WifiStateMachine;)I

    move-result v3

    if-le v1, v3, :cond_1

    .line 1091
    :cond_0
    const-string v3, "WifiStateMachine"

    const-string v4, "Operating on restricted channel! Restart SAP"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$8;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->restartSoftApIfOn()V
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$1800(Landroid/net/wifi/WifiStateMachine;)V

    .line 1097
    .end local v0    # "autochannel":I
    .end local v1    # "currentChannel":I
    .end local v2    # "state":I
    :cond_1
    return-void
.end method
