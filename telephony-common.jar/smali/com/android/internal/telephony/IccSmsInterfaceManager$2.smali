.class Lcom/android/internal/telephony/IccSmsInterfaceManager$2;
.super Lcom/android/internal/telephony/IccSmsInterfaceManager$BindServiceConnection;
.source "IccSmsInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/IccSmsInterfaceManager;-><init>(Lcom/android/internal/telephony/PhoneBase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/IccSmsInterfaceManager;Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Landroid/content/Intent;
    .param p4, "x2"    # I

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$2;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/telephony/IccSmsInterfaceManager$BindServiceConnection;-><init>(Landroid/content/Context;Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public postServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 165
    const-string v0, "ismsapp"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 166
    const-string v0, "ismsapp"

    invoke-static {v0, p2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 168
    :cond_0
    return-void
.end method
