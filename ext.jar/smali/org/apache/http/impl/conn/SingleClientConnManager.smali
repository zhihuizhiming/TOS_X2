.class public Lorg/apache/http/impl/conn/SingleClientConnManager;
.super Ljava/lang/Object;
.source "SingleClientConnManager.java"

# interfaces
.implements Lorg/apache/http/conn/ClientConnectionManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;,
        Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;
    }
.end annotation


# static fields
.field public static final MISUSE_MESSAGE:Ljava/lang/String; = "Invalid use of SingleClientConnManager: connection still allocated.\nMake sure to release the connection before allocating another one."


# instance fields
.field protected alwaysShutDown:Z

.field protected connOperator:Lorg/apache/http/conn/ClientConnectionOperator;

.field protected connectionExpiresTime:J

.field protected volatile isShutDown:Z

.field protected lastReleaseTime:J

.field private final log:Lorg/apache/commons/logging/Log;

.field protected managedConn:Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

.field protected schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

.field protected uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;


# direct methods
.method public constructor <init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V
    .locals 3
    .param p1, "params"    # Lorg/apache/http/params/HttpParams;
    .param p2, "schreg"    # Lorg/apache/http/conn/scheme/SchemeRegistry;

    .prologue
    const/4 v2, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->log:Lorg/apache/commons/logging/Log;

    .line 118
    if-nez p2, :cond_0

    .line 119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Scheme registry must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    iput-object p2, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

    .line 123
    invoke-virtual {p0, p2}, Lorg/apache/http/impl/conn/SingleClientConnManager;->createConnectionOperator(Lorg/apache/http/conn/scheme/SchemeRegistry;)Lorg/apache/http/conn/ClientConnectionOperator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->connOperator:Lorg/apache/http/conn/ClientConnectionOperator;

    .line 124
    new-instance v0, Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    invoke-direct {v0, p0}, Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;-><init>(Lorg/apache/http/impl/conn/SingleClientConnManager;)V

    iput-object v0, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->managedConn:Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    .line 126
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    .line 127
    iput-boolean v2, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->alwaysShutDown:Z

    .line 128
    iput-boolean v2, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->isShutDown:Z

    .line 130
    return-void
.end method


# virtual methods
.method protected final assertStillUp()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 185
    iget-boolean v0, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->isShutDown:Z

    if-eqz v0, :cond_0

    .line 186
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Manager is shut down."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_0
    return-void
.end method

.method public closeExpiredConnections()V
    .locals 4

    .prologue
    .line 348
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->connectionExpiresTime:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 349
    const-wide/16 v0, 0x0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/http/impl/conn/SingleClientConnManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V

    .line 351
    :cond_0
    return-void
.end method

.method public closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V
    .locals 7
    .param p1, "idletime"    # J
    .param p3, "tunit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 356
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/SingleClientConnManager;->assertStillUp()V

    .line 359
    if-nez p3, :cond_0

    .line 360
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Time unit must not be null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 363
    :cond_0
    iget-object v3, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->managedConn:Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    iget-object v3, v3, Lorg/apache/http/impl/conn/AbstractPoolEntry;->connection:Lorg/apache/http/conn/OperatedClientConnection;

    invoke-interface {v3}, Lorg/apache/http/conn/OperatedClientConnection;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 364
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    sub-long v0, v3, v5

    .line 366
    .local v0, "cutoff":J
    iget-wide v3, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    cmp-long v3, v3, v0

    if-gtz v3, :cond_1

    .line 368
    :try_start_0
    iget-object v3, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    invoke-virtual {v3}, Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    .end local v0    # "cutoff":J
    :cond_1
    :goto_0
    return-void

    .line 369
    .restart local v0    # "cutoff":J
    :catch_0
    move-exception v2

    .line 371
    .local v2, "iox":Ljava/io/IOException;
    iget-object v3, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "Problem closing idle connection."

    invoke-interface {v3, v4, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected createConnectionOperator(Lorg/apache/http/conn/scheme/SchemeRegistry;)Lorg/apache/http/conn/ClientConnectionOperator;
    .locals 1
    .param p1, "schreg"    # Lorg/apache/http/conn/scheme/SchemeRegistry;

    .prologue
    .line 173
    new-instance v0, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;

    invoke-direct {v0, p1}, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;-><init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    return-object v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 135
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/SingleClientConnManager;->shutdown()V

    .line 136
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 137
    return-void
.end method

.method public getConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ManagedClientConnection;
    .locals 8
    .param p1, "route"    # Lorg/apache/http/conn/routing/HttpRoute;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 221
    if-nez p1, :cond_0

    .line 222
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Route may not be null."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 224
    :cond_0
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/SingleClientConnManager;->assertStillUp()V

    .line 226
    iget-object v5, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 227
    iget-object v5, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->log:Lorg/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Get connection for route "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 230
    :cond_1
    iget-object v5, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->managedConn:Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    if-eqz v5, :cond_2

    .line 231
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/SingleClientConnManager;->revokeConnection()V

    .line 234
    :cond_2
    const/4 v1, 0x0

    .line 235
    .local v1, "recreate":Z
    const/4 v2, 0x0

    .line 238
    .local v2, "shutdown":Z
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/SingleClientConnManager;->closeExpiredConnections()V

    .line 240
    iget-object v5, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    iget-object v5, v5, Lorg/apache/http/impl/conn/AbstractPoolEntry;->connection:Lorg/apache/http/conn/OperatedClientConnection;

    invoke-interface {v5}, Lorg/apache/http/conn/OperatedClientConnection;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 241
    iget-object v5, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    iget-object v4, v5, Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;->tracker:Lorg/apache/http/conn/routing/RouteTracker;

    .line 242
    .local v4, "tracker":Lorg/apache/http/conn/routing/RouteTracker;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lorg/apache/http/conn/routing/RouteTracker;->toRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v5

    invoke-virtual {v5, p1}, Lorg/apache/http/conn/routing/HttpRoute;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    :cond_3
    const/4 v2, 0x1

    .line 253
    .end local v4    # "tracker":Lorg/apache/http/conn/routing/RouteTracker;
    :goto_0
    if-eqz v2, :cond_4

    .line 254
    const/4 v1, 0x1

    .line 256
    :try_start_0
    iget-object v5, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    invoke-virtual {v5}, Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;->shutdown()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 263
    new-instance v5, Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    invoke-direct {v5, p0}, Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;-><init>(Lorg/apache/http/impl/conn/SingleClientConnManager;)V

    iput-object v5, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    .line 269
    :cond_5
    :try_start_1
    iget-object v5, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    iget-object v5, v5, Lorg/apache/http/impl/conn/AbstractPoolEntry;->connection:Lorg/apache/http/conn/OperatedClientConnection;

    invoke-interface {v5}, Lorg/apache/http/conn/OperatedClientConnection;->getSocket()Ljava/net/Socket;

    move-result-object v3

    .line 270
    .local v3, "socket":Ljava/net/Socket;
    if-eqz v3, :cond_6

    .line 271
    invoke-static {}, Ldalvik/system/SocketTagger;->get()Ldalvik/system/SocketTagger;

    move-result-object v5

    invoke-virtual {v5, v3}, Ldalvik/system/SocketTagger;->tag(Ljava/net/Socket;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 278
    .end local v3    # "socket":Ljava/net/Socket;
    :cond_6
    :goto_2
    new-instance v5, Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    iget-object v6, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    invoke-direct {v5, p0, v6, p1}, Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;-><init>(Lorg/apache/http/impl/conn/SingleClientConnManager;Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;Lorg/apache/http/conn/routing/HttpRoute;)V

    iput-object v5, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->managedConn:Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    .line 280
    iget-object v5, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->managedConn:Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    return-object v5

    .line 242
    .restart local v4    # "tracker":Lorg/apache/http/conn/routing/RouteTracker;
    :cond_7
    const/4 v2, 0x0

    goto :goto_0

    .line 250
    .end local v4    # "tracker":Lorg/apache/http/conn/routing/RouteTracker;
    :cond_8
    const/4 v1, 0x1

    goto :goto_0

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "iox":Ljava/io/IOException;
    iget-object v5, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->log:Lorg/apache/commons/logging/Log;

    const-string v6, "Problem shutting down connection."

    invoke-interface {v5, v6, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 273
    .end local v0    # "iox":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 274
    .restart local v0    # "iox":Ljava/io/IOException;
    iget-object v5, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->log:Lorg/apache/commons/logging/Log;

    const-string v6, "Problem tagging socket."

    invoke-interface {v5, v6, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

    return-object v0
.end method

.method public releaseConnection(Lorg/apache/http/conn/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V
    .locals 9
    .param p1, "conn"    # Lorg/apache/http/conn/ManagedClientConnection;
    .param p2, "validDuration"    # J
    .param p4, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 286
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/SingleClientConnManager;->assertStillUp()V

    .line 288
    instance-of v4, p1, Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    if-nez v4, :cond_0

    .line 289
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Connection class mismatch, connection not obtained from this manager."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 294
    :cond_0
    iget-object v4, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 295
    iget-object v4, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Releasing connection "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_1
    move-object v2, p1

    .line 298
    check-cast v2, Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    .line 299
    .local v2, "sca":Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;
    iget-object v4, v2, Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;->poolEntry:Lorg/apache/http/impl/conn/AbstractPoolEntry;

    if-nez v4, :cond_2

    .line 345
    :goto_0
    return-void

    .line 301
    :cond_2
    invoke-virtual {v2}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->getManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    .line 302
    .local v1, "manager":Lorg/apache/http/conn/ClientConnectionManager;
    if-eqz v1, :cond_3

    if-eq v1, p0, :cond_3

    .line 303
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Connection not obtained from this manager."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 311
    :cond_3
    :try_start_0
    iget-object v4, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    iget-object v4, v4, Lorg/apache/http/impl/conn/AbstractPoolEntry;->connection:Lorg/apache/http/conn/OperatedClientConnection;

    invoke-interface {v4}, Lorg/apache/http/conn/OperatedClientConnection;->getSocket()Ljava/net/Socket;

    move-result-object v3

    .line 312
    .local v3, "socket":Ljava/net/Socket;
    if-eqz v3, :cond_4

    .line 313
    invoke-static {}, Ldalvik/system/SocketTagger;->get()Ldalvik/system/SocketTagger;

    move-result-object v4

    invoke-virtual {v4, v3}, Ldalvik/system/SocketTagger;->untag(Ljava/net/Socket;)V

    .line 318
    :cond_4
    invoke-virtual {v2}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-boolean v4, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->alwaysShutDown:Z

    if-nez v4, :cond_5

    invoke-virtual {v2}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->isMarkedReusable()Z

    move-result v4

    if-nez v4, :cond_7

    .line 321
    :cond_5
    iget-object v4, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 322
    iget-object v4, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->log:Lorg/apache/commons/logging/Log;

    const-string v5, "Released connection open but not reusable."

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 329
    :cond_6
    invoke-virtual {v2}, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->shutdown()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    :cond_7
    invoke-virtual {v2}, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->detach()V

    .line 338
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->managedConn:Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    .line 339
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    .line 340
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-lez v4, :cond_8

    .line 341
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    iget-wide v6, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->connectionExpiresTime:J

    goto :goto_0

    .line 343
    :cond_8
    const-wide v4, 0x7fffffffffffffffL

    iput-wide v4, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->connectionExpiresTime:J

    goto :goto_0

    .line 331
    .end local v3    # "socket":Ljava/net/Socket;
    :catch_0
    move-exception v0

    .line 333
    .local v0, "iox":Ljava/io/IOException;
    :try_start_1
    iget-object v4, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 334
    iget-object v4, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->log:Lorg/apache/commons/logging/Log;

    const-string v5, "Exception shutting down released connection."

    invoke-interface {v4, v5, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 337
    :cond_9
    invoke-virtual {v2}, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->detach()V

    .line 338
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->managedConn:Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    .line 339
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    .line 340
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-lez v4, :cond_a

    .line 341
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    iget-wide v6, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->connectionExpiresTime:J

    goto/16 :goto_0

    .line 343
    :cond_a
    const-wide v4, 0x7fffffffffffffffL

    iput-wide v4, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->connectionExpiresTime:J

    goto/16 :goto_0

    .line 337
    .end local v0    # "iox":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->detach()V

    .line 338
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->managedConn:Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    .line 339
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    .line 340
    const-wide/16 v5, 0x0

    cmp-long v5, p2, v5

    if-lez v5, :cond_b

    .line 341
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    iget-wide v7, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    add-long/2addr v5, v7

    iput-wide v5, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->connectionExpiresTime:J

    .line 343
    :goto_1
    throw v4

    :cond_b
    const-wide v5, 0x7fffffffffffffffL

    iput-wide v5, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->connectionExpiresTime:J

    goto :goto_1
.end method

.method public final requestConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ClientConnectionRequest;
    .locals 1
    .param p1, "route"    # Lorg/apache/http/conn/routing/HttpRoute;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 194
    new-instance v0, Lorg/apache/http/impl/conn/SingleClientConnManager$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/http/impl/conn/SingleClientConnManager$1;-><init>(Lorg/apache/http/impl/conn/SingleClientConnManager;Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected revokeConnection()V
    .locals 3

    .prologue
    .line 403
    iget-object v1, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->managedConn:Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    if-nez v1, :cond_0

    .line 416
    :goto_0
    return-void

    .line 406
    :cond_0
    iget-object v1, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "Invalid use of SingleClientConnManager: connection still allocated.\nMake sure to release the connection before allocating another one."

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 408
    iget-object v1, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->managedConn:Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    invoke-virtual {v1}, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->detach()V

    .line 411
    :try_start_0
    iget-object v1, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    invoke-virtual {v1}, Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;->shutdown()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 412
    :catch_0
    move-exception v0

    .line 414
    .local v0, "iox":Ljava/io/IOException;
    iget-object v1, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "Problem while shutting down connection."

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setAlwaysShutDownFlag(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 154
    iput-boolean p1, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->alwaysShutDown:Z

    .line 155
    return-void
.end method

.method public shutdown()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 381
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->isShutDown:Z

    .line 383
    iget-object v1, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->managedConn:Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    if-eqz v1, :cond_0

    .line 384
    iget-object v1, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->managedConn:Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    invoke-virtual {v1}, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->detach()V

    .line 387
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    if-eqz v1, :cond_1

    .line 388
    iget-object v1, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    invoke-virtual {v1}, Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;->shutdown()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    :cond_1
    iput-object v3, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    .line 395
    :goto_0
    return-void

    .line 389
    :catch_0
    move-exception v0

    .line 391
    .local v0, "iox":Ljava/io/IOException;
    :try_start_1
    iget-object v1, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "Problem while shutting down manager."

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 393
    iput-object v3, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    goto :goto_0

    .end local v0    # "iox":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    iput-object v3, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    throw v1
.end method
