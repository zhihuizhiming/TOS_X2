.class Lcom/android/internal/policy/impl/PhoneWindowManager$10;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0

    .prologue
    .line 2251
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$10;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 2253
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$10;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlimpseLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$800(Lcom/android/internal/policy/impl/PhoneWindowManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2254
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$10;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v2, 0x0

    # setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlimpseService:Landroid/os/IBinder;
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$902(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 2255
    monitor-exit v1

    .line 2256
    return-void

    .line 2255
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
