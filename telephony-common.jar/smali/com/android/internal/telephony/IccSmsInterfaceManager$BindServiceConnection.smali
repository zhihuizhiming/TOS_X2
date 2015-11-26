.class abstract Lcom/android/internal/telephony/IccSmsInterfaceManager$BindServiceConnection;
.super Ljava/lang/Object;
.source "IccSmsInterfaceManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccSmsInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "BindServiceConnection"
.end annotation


# instance fields
.field private mDesc:Ljava/lang/String;

.field private mFlags:I

.field private mIntent:Landroid/content/Intent;

.field private mOwner:Landroid/content/Context;

.field private mService:Landroid/os/IBinder;

.field private mbIsBound:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 1
    .param p1, "ownerContext"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "flags"    # I

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$BindServiceConnection;->mbIsBound:Z

    .line 230
    iput-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$BindServiceConnection;->mOwner:Landroid/content/Context;

    .line 231
    iput-object p2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$BindServiceConnection;->mIntent:Landroid/content/Intent;

    .line 232
    iput p3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$BindServiceConnection;->mFlags:I

    .line 233
    return-void
.end method

.method private doBindService()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 268
    sget-boolean v2, Lcom/android/internal/telephony/IccSmsInterfaceManager;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "IccSmsInterfaceManager"

    const-string v3, " entry doBindService()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$BindServiceConnection;->mService:Landroid/os/IBinder;

    if-eqz v2, :cond_1

    .line 270
    const-string v2, "IccSmsInterfaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "warning! doBindService: not null value mService="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$BindServiceConnection;->mService:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_1
    const-string v0, "com.android.mms"

    .line 275
    .local v0, "pkgNativeMsgApp":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$BindServiceConnection;->mOwner:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 276
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 278
    invoke-virtual {v1, v0, v5, v5}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 284
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$BindServiceConnection;->mOwner:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$BindServiceConnection;->mIntent:Landroid/content/Intent;

    iget v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$BindServiceConnection;->mFlags:I

    invoke-virtual {v2, v3, p0, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$BindServiceConnection;->mbIsBound:Z

    .line 285
    sget-boolean v2, Lcom/android/internal/telephony/IccSmsInterfaceManager;->DBG:Z

    if-eqz v2, :cond_3

    const-string v2, "IccSmsInterfaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mbIsBound="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$BindServiceConnection;->mbIsBound:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_3
    iget-boolean v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$BindServiceConnection;->mbIsBound:Z

    if-nez v2, :cond_4

    .line 287
    const-string v2, "IccSmsInterfaceManager"

    const-string v3, "bindService failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_4
    return-void
.end method

.method private doUnbindService()V
    .locals 3

    .prologue
    .line 298
    sget-boolean v1, Lcom/android/internal/telephony/IccSmsInterfaceManager;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "IccSmsInterfaceManager"

    const-string v2, "entry: doUnbindService()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$BindServiceConnection;->mService:Landroid/os/IBinder;

    if-nez v1, :cond_1

    .line 300
    const-string v1, "IccSmsInterfaceManager"

    const-string v2, "warning! doUnbindService: mService is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$BindServiceConnection;->mOwner:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$BindServiceConnection;->mbIsBound:Z

    .line 309
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$BindServiceConnection;->mService:Landroid/os/IBinder;

    .line 310
    return-void

    .line 305
    :catch_0
    move-exception v0

    .line 306
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "IccSmsInterfaceManager"

    const-string v2, "exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public doBindServiceIfNecessary()V
    .locals 1

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManager$BindServiceConnection;->isUnbound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    invoke-direct {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManager$BindServiceConnection;->doBindService()V

    .line 295
    :cond_0
    return-void
.end method

.method public doUnbindServiceIfNecessary()V
    .locals 1

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManager$BindServiceConnection;->isBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    invoke-direct {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManager$BindServiceConnection;->doUnbindService()V

    .line 316
    :cond_0
    return-void
.end method

.method public getService()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$BindServiceConnection;->mService:Landroid/os/IBinder;

    return-object v0
.end method

.method public isBound()Z
    .locals 1

    .prologue
    .line 323
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$BindServiceConnection;->mbIsBound:Z

    return v0
.end method

.method public isUnbound()Z
    .locals 1

    .prologue
    .line 327
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$BindServiceConnection;->mbIsBound:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$BindServiceConnection;->mService:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 242
    const-string v0, "IccSmsInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "warning! onServiceConnected: not null value mService="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$BindServiceConnection;->mService:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", service="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_0
    sget-boolean v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->DBG:Z

    if-eqz v0, :cond_1

    .line 246
    const-string v0, "IccSmsInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$BindServiceConnection;->mDesc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " connected to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$BindServiceConnection;->mOwner:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", service="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_1
    iput-object p2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$BindServiceConnection;->mService:Landroid/os/IBinder;

    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$BindServiceConnection;->mbIsBound:Z

    .line 252
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager$BindServiceConnection;->postServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 253
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 259
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$BindServiceConnection;->mService:Landroid/os/IBinder;

    .line 260
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$BindServiceConnection;->mbIsBound:Z

    .line 262
    const-string v0, "IccSmsInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "warning! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$BindServiceConnection;->mDesc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " disconnected. we don\'t re-bind it here!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    return-void
.end method

.method public abstract postServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$BindServiceConnection;->mDesc:Ljava/lang/String;

    .line 237
    return-void
.end method
