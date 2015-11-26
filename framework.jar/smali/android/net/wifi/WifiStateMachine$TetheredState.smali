.class Landroid/net/wifi/WifiStateMachine$TetheredState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TetheredState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 5138
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 5141
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    move v1, v2

    .line 5161
    :cond_0
    :goto_0
    return v1

    .line 5143
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/WifiStateMachine$TetherStateChange;

    .line 5144
    .local v0, "stateChange":Landroid/net/wifi/WifiStateMachine$TetherStateChange;
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v4, v0, Landroid/net/wifi/WifiStateMachine$TetherStateChange;->active:Ljava/util/ArrayList;

    # invokes: Landroid/net/wifi/WifiStateMachine;->isWifiTethered(Ljava/util/ArrayList;)Z
    invoke-static {v3, v4}, Landroid/net/wifi/WifiStateMachine;->access$31100(Landroid/net/wifi/WifiStateMachine;Ljava/util/ArrayList;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5145
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v4, "Tethering reports wifi as untethered!, shut down soft Ap"

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/net/wifi/WifiStateMachine;->access$31800(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5146
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3, v5, v2}, Landroid/net/wifi/WifiStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 5147
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2, v5, v1}, Landroid/net/wifi/WifiStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    goto :goto_0

    .line 5151
    .end local v0    # "stateChange":Landroid/net/wifi/WifiStateMachine$TetherStateChange;
    :sswitch_1
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v3, "Untethering before stopping AP"

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$31900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5152
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/16 v3, 0xa

    # invokes: Landroid/net/wifi/WifiStateMachine;->setWifiApState(I)V
    invoke-static {v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$6700(Landroid/net/wifi/WifiStateMachine;I)V

    .line 5153
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->stopTethering()V
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$32000(Landroid/net/wifi/WifiStateMachine;)V

    .line 5154
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mUntetheringState:Lcom/android/internal/util/State;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$32100(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    # invokes: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$32200(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 5156
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Landroid/net/wifi/WifiStateMachine;->access$32300(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto :goto_0

    .line 5141
    :sswitch_data_0
    .sparse-switch
        0x20018 -> :sswitch_1
        0x2001d -> :sswitch_0
    .end sparse-switch
.end method
