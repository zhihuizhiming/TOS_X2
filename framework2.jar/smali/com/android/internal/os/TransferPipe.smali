.class public final Lcom/android/internal/os/TransferPipe;
.super Ljava/lang/Object;
.source "TransferPipe.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/TransferPipe$Caller;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final DEFAULT_TIMEOUT:J = 0x1388L

.field static final TAG:Ljava/lang/String; = "TransferPipe"


# instance fields
.field mBufferPrefix:Ljava/lang/String;

.field mComplete:Z

.field mEndTime:J

.field mFailure:Ljava/lang/String;

.field final mFds:[Landroid/os/ParcelFileDescriptor;

.field mOutFd:Ljava/io/FileDescriptor;

.field final mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "TransferPipe"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/os/TransferPipe;->mThread:Ljava/lang/Thread;

    .line 58
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    .line 59
    return-void
.end method

.method static go(Lcom/android/internal/os/TransferPipe$Caller;Landroid/os/IInterface;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .param p0, "caller"    # Lcom/android/internal/os/TransferPipe$Caller;
    .param p1, "iface"    # Landroid/os/IInterface;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 75
    const-wide/16 v5, 0x1388

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lcom/android/internal/os/TransferPipe;->go(Lcom/android/internal/os/TransferPipe$Caller;Landroid/os/IInterface;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;J)V

    .line 76
    return-void
.end method

.method static go(Lcom/android/internal/os/TransferPipe$Caller;Landroid/os/IInterface;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;J)V
    .locals 2
    .param p0, "caller"    # Lcom/android/internal/os/TransferPipe$Caller;
    .param p1, "iface"    # Landroid/os/IInterface;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    instance-of v1, v1, Landroid/os/Binder;

    if-eqz v1, :cond_0

    .line 83
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/internal/os/TransferPipe$Caller;->go(Landroid/os/IInterface;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    return-void

    .line 89
    :cond_0
    new-instance v0, Lcom/android/internal/os/TransferPipe;

    invoke-direct {v0}, Lcom/android/internal/os/TransferPipe;-><init>()V

    .line 91
    .local v0, "tp":Lcom/android/internal/os/TransferPipe;
    :try_start_1
    invoke-virtual {v0}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-interface {p0, p1, v1, p3, p4}, Lcom/android/internal/os/TransferPipe$Caller;->go(Landroid/os/IInterface;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0, p2, p5, p6}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    invoke-virtual {v0}, Lcom/android/internal/os/TransferPipe;->kill()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/TransferPipe;->kill()V

    throw v1

    .line 84
    .end local v0    # "tp":Lcom/android/internal/os/TransferPipe;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static goDump(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 2
    .param p0, "binder"    # Landroid/os/IBinder;
    .param p1, "out"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 100
    const-wide/16 v0, 0x1388

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/internal/os/TransferPipe;->goDump(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;J)V

    .line 101
    return-void
.end method

.method static goDump(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;J)V
    .locals 2
    .param p0, "binder"    # Landroid/os/IBinder;
    .param p1, "out"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 105
    instance-of v1, p0, Landroid/os/Binder;

    if-eqz v1, :cond_0

    .line 108
    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    return-void

    .line 114
    :cond_0
    new-instance v0, Lcom/android/internal/os/TransferPipe;

    invoke-direct {v0}, Lcom/android/internal/os/TransferPipe;-><init>()V

    .line 116
    .local v0, "tp":Lcom/android/internal/os/TransferPipe;
    :try_start_1
    invoke-virtual {v0}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-interface {p0, v1, p2}, Landroid/os/IBinder;->dumpAsync(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 117
    invoke-virtual {v0, p1, p3, p4}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    invoke-virtual {v0}, Lcom/android/internal/os/TransferPipe;->kill()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/TransferPipe;->kill()V

    throw v1

    .line 109
    .end local v0    # "tp":Lcom/android/internal/os/TransferPipe;
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method closeFd(I)V
    .locals 2
    .param p1, "num"    # I

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/internal/os/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_0
    iget-object v0, p0, Lcom/android/internal/os/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 174
    :cond_0
    return-void

    .line 170
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method getReadFd()Landroid/os/ParcelFileDescriptor;
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/os/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getWriteFd()Landroid/os/ParcelFileDescriptor;
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/os/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public go(Ljava/io/FileDescriptor;)V
    .locals 2
    .param p1, "out"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V

    .line 125
    return-void
.end method

.method public go(Ljava/io/FileDescriptor;J)V
    .locals 6
    .param p1, "out"    # Ljava/io/FileDescriptor;
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 130
    :try_start_1
    iput-object p1, p0, Lcom/android/internal/os/TransferPipe;->mOutFd:Ljava/io/FileDescriptor;

    .line 131
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p2

    iput-wide v2, p0, Lcom/android/internal/os/TransferPipe;->mEndTime:J

    .line 137
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/internal/os/TransferPipe;->closeFd(I)V

    .line 139
    iget-object v2, p0, Lcom/android/internal/os/TransferPipe;->mThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 141
    :goto_0
    iget-object v2, p0, Lcom/android/internal/os/TransferPipe;->mFailure:Ljava/lang/String;

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/os/TransferPipe;->mComplete:Z

    if-nez v2, :cond_1

    .line 142
    iget-wide v2, p0, Lcom/android/internal/os/TransferPipe;->mEndTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 143
    .local v0, "waitTime":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 145
    iget-object v2, p0, Lcom/android/internal/os/TransferPipe;->mThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 146
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Timeout"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 159
    .end local v0    # "waitTime":J
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 161
    :catchall_1
    move-exception v2

    invoke-virtual {p0}, Lcom/android/internal/os/TransferPipe;->kill()V

    throw v2

    .line 150
    .restart local v0    # "waitTime":J
    :cond_0
    :try_start_3
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 151
    :catch_0
    move-exception v2

    goto :goto_0

    .line 156
    .end local v0    # "waitTime":J
    :cond_1
    :try_start_4
    iget-object v2, p0, Lcom/android/internal/os/TransferPipe;->mFailure:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 157
    new-instance v2, Ljava/io/IOException;

    iget-object v3, p0, Lcom/android/internal/os/TransferPipe;->mFailure:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 159
    :cond_2
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 161
    invoke-virtual {p0}, Lcom/android/internal/os/TransferPipe;->kill()V

    .line 163
    return-void
.end method

.method public kill()V
    .locals 2

    .prologue
    .line 178
    iget-object v1, p0, Lcom/android/internal/os/TransferPipe;->mThread:Ljava/lang/Thread;

    monitor-enter v1

    .line 179
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/internal/os/TransferPipe;->closeFd(I)V

    .line 180
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/os/TransferPipe;->closeFd(I)V

    .line 181
    monitor-exit v1

    .line 183
    return-void

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 12

    .prologue
    const/16 v11, 0xa

    .line 187
    const/16 v9, 0x400

    new-array v0, v9, [B

    .line 192
    .local v0, "buffer":[B
    iget-object v10, p0, Lcom/android/internal/os/TransferPipe;->mThread:Ljava/lang/Thread;

    monitor-enter v10

    .line 193
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/os/TransferPipe;->getReadFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v9

    if-nez v9, :cond_0

    .line 194
    const-string v9, "TransferPipe"

    const-string v11, "Pipe readFD return null"

    invoke-static {v9, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    monitor-exit v10

    .line 256
    :goto_0
    return-void

    .line 197
    :cond_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Lcom/android/internal/os/TransferPipe;->getReadFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 198
    .local v3, "fis":Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v9, p0, Lcom/android/internal/os/TransferPipe;->mOutFd:Ljava/io/FileDescriptor;

    invoke-direct {v4, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 199
    .local v4, "fos":Ljava/io/FileOutputStream;
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 203
    const/4 v1, 0x0

    .line 204
    .local v1, "bufferPrefix":[B
    const/4 v6, 0x1

    .line 205
    .local v6, "needPrefix":Z
    iget-object v9, p0, Lcom/android/internal/os/TransferPipe;->mBufferPrefix:Ljava/lang/String;

    if-eqz v9, :cond_1

    .line 206
    iget-object v9, p0, Lcom/android/internal/os/TransferPipe;->mBufferPrefix:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 211
    :cond_1
    :goto_1
    :try_start_1
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .local v7, "size":I
    if-lez v7, :cond_8

    .line 213
    if-nez v1, :cond_2

    .line 214
    const/4 v9, 0x0

    invoke-virtual {v4, v0, v9, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 244
    .end local v7    # "size":I
    :catch_0
    move-exception v2

    .line 245
    .local v2, "e":Ljava/io/IOException;
    monitor-enter p0

    .line 246
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/os/TransferPipe;->mFailure:Ljava/lang/String;

    .line 247
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 248
    monitor-exit p0

    goto :goto_0

    .line 249
    :catchall_0
    move-exception v9

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v9

    .line 199
    .end local v1    # "bufferPrefix":[B
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "needPrefix":Z
    :catchall_1
    move-exception v9

    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v9

    .line 216
    .restart local v1    # "bufferPrefix":[B
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "needPrefix":Z
    .restart local v7    # "size":I
    :cond_2
    const/4 v8, 0x0

    .line 217
    .local v8, "start":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v7, :cond_7

    .line 218
    :try_start_4
    aget-byte v9, v0, v5

    if-eq v9, v11, :cond_6

    .line 219
    if-le v5, v8, :cond_3

    .line 220
    sub-int v9, v5, v8

    invoke-virtual {v4, v0, v8, v9}, Ljava/io/FileOutputStream;->write([BII)V

    .line 222
    :cond_3
    move v8, v5

    .line 223
    if-eqz v6, :cond_4

    .line 224
    invoke-virtual {v4, v1}, Ljava/io/OutputStream;->write([B)V

    .line 225
    const/4 v6, 0x0

    .line 228
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 229
    if-ge v5, v7, :cond_5

    aget-byte v9, v0, v5

    if-ne v9, v11, :cond_4

    .line 230
    :cond_5
    if-ge v5, v7, :cond_6

    .line 231
    const/4 v6, 0x1

    .line 217
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 235
    :cond_7
    if-le v7, v8, :cond_1

    .line 236
    sub-int v9, v7, v8

    invoke-virtual {v4, v0, v8, v9}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_1

    .line 241
    .end local v5    # "i":I
    .end local v8    # "start":I
    :cond_8
    iget-object v9, p0, Lcom/android/internal/os/TransferPipe;->mThread:Ljava/lang/Thread;

    invoke-virtual {v9}, Ljava/lang/Thread;->isInterrupted()Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-result v9

    if-eqz v9, :cond_9

    .line 252
    :cond_9
    monitor-enter p0

    .line 253
    const/4 v9, 0x1

    :try_start_5
    iput-boolean v9, p0, Lcom/android/internal/os/TransferPipe;->mComplete:Z

    .line 254
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 255
    monitor-exit p0

    goto :goto_0

    :catchall_2
    move-exception v9

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v9
.end method

.method public setBufferPrefix(Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/internal/os/TransferPipe;->mBufferPrefix:Ljava/lang/String;

    .line 71
    return-void
.end method
