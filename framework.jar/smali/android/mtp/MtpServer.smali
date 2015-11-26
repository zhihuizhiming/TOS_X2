.class public Landroid/mtp/MtpServer;
.super Ljava/lang/Object;
.source "MtpServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field mDatabase:Landroid/mtp/MtpDatabase;

.field private mNativeContext:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/mtp/MtpDatabase;Z)V
    .locals 1
    .param p1, "database"    # Landroid/mtp/MtpDatabase;
    .param p2, "usePtp"    # Z

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/mtp/MtpServer;->mDatabase:Landroid/mtp/MtpDatabase;

    .line 33
    iput-object p1, p0, Landroid/mtp/MtpServer;->mDatabase:Landroid/mtp/MtpDatabase;

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/mtp/MtpServer;->native_setup(Landroid/mtp/MtpDatabase;Z)V

    .line 35
    return-void
.end method

.method private final native native_add_storage(Landroid/mtp/MtpStorage;)V
.end method

.method private final native native_cleanup()V
.end method

.method private final native native_remove_storage(I)V
.end method

.method private final native native_run()V
.end method

.method private final native native_send_object_added(I)V
.end method

.method private final native native_send_object_removed(I)V
.end method

.method private final native native_setup(Landroid/mtp/MtpDatabase;Z)V
.end method


# virtual methods
.method public addStorage(Landroid/mtp/MtpStorage;)V
    .locals 0
    .param p1, "storage"    # Landroid/mtp/MtpStorage;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_add_storage(Landroid/mtp/MtpStorage;)V

    .line 59
    return-void
.end method

.method public removeStorage(Landroid/mtp/MtpStorage;)V
    .locals 1
    .param p1, "storage"    # Landroid/mtp/MtpStorage;

    .prologue
    .line 62
    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getStorageId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/mtp/MtpServer;->native_remove_storage(I)V

    .line 63
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/mtp/MtpServer;->native_run()V

    .line 45
    invoke-direct {p0}, Landroid/mtp/MtpServer;->native_cleanup()V

    .line 46
    iget-object v0, p0, Landroid/mtp/MtpServer;->mDatabase:Landroid/mtp/MtpDatabase;

    invoke-virtual {v0}, Landroid/mtp/MtpDatabase;->exit()V

    .line 47
    return-void
.end method

.method public sendObjectAdded(I)V
    .locals 0
    .param p1, "handle"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_send_object_added(I)V

    .line 51
    return-void
.end method

.method public sendObjectRemoved(I)V
    .locals 0
    .param p1, "handle"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_send_object_removed(I)V

    .line 55
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "MtpServer"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 39
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 40
    return-void
.end method
