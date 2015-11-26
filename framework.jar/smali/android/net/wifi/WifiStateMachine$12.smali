.class Landroid/net/wifi/WifiStateMachine$12;
.super Ljava/lang/Object;
.source "WifiStateMachine.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/WifiStateMachine;->notifyDisconnectP2pConnection(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;

.field final synthetic val$msg:Landroid/os/Message;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 5276
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$12;->this$0:Landroid/net/wifi/WifiStateMachine;

    iput-object p2, p0, Landroid/net/wifi/WifiStateMachine$12;->val$msg:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 5278
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$12;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v1, "Remove p2p connection"

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$33000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5279
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$12;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$2300(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x22010

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 5280
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$12;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$12;->val$msg:Landroid/os/Message;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 5281
    return-void
.end method
