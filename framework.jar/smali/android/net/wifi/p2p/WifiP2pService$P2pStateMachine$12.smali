.class Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$12;
.super Ljava/lang/Object;
.source "WifiP2pService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->notifyP2pDisconnect(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

.field final synthetic val$msg:Landroid/os/Message;


# direct methods
.method constructor <init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 3790
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$12;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iput-object p2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$12;->val$msg:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 3794
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$12;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$12;->val$msg:Landroid/os/Message;

    const v2, 0x22008

    const/4 v3, 0x0

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    .line 3797
    return-void
.end method
