.class public Lcom/android/internal/policy/impl/PhoneWindowManagerWithPartialDisplay;
.super Lcom/android/internal/policy/impl/PhoneWindowManager;
.source "PhoneWindowManagerWithPartialDisplay.java"


# static fields
.field static final DEBUG:Z = true

.field static final TAG:Ljava/lang/String; = "PhoneWindowManagerWithPartialDisplay"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;-><init>()V

    return-void
.end method

.method private static getPartialDisplayService()Landroid/app/IPartialDisplayService;
    .locals 2

    .prologue
    .line 34
    const-string v1, "partial_display_service"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IPartialDisplayService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IPartialDisplayService;

    move-result-object v0

    .line 37
    .local v0, "partialDisplayService":Landroid/app/IPartialDisplayService;
    return-object v0
.end method


# virtual methods
.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "isScreenOn"    # Z

    .prologue
    .line 43
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I

    move-result v2

    .line 44
    .local v2, "result":I
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerWithPartialDisplay;->getPartialDisplayService()Landroid/app/IPartialDisplayService;

    move-result-object v1

    .line 45
    .local v1, "partialDisplayService":Landroid/app/IPartialDisplayService;
    if-nez p3, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x1a

    if-ne v3, v4, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    .line 50
    if-eqz v1, :cond_0

    .line 52
    :try_start_0
    invoke-interface {v1}, Landroid/app/IPartialDisplayService;->notifyPowerKeyWakeup()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerWithPartialDisplay;->mSystemBooted:Z

    if-eqz v3, :cond_1

    .line 59
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerWithPartialDisplay;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.motorola.intent.action.POWER_KEY_WAKE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 64
    :cond_1
    return v2

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "PhoneWindowManagerWithPartialDisplay"

    const-string v4, "remote exception for notifyPowerKeyWakeup"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
