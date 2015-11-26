.class public Lcom/android/server/location/GpsXtraDownloader;
.super Ljava/lang/Object;
.source "GpsXtraDownloader.java"


# static fields
.field static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "GpsXtraDownloader"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNextServerIndex:I

.field private mXtraServers:[Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/Properties;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "properties"    # Ljava/util/Properties;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/server/location/GpsXtraDownloader;->mContext:Landroid/content/Context;

    .line 60
    const/4 v0, 0x0

    .line 61
    .local v0, "count":I
    const-string v6, "XTRA_SERVER_1"

    invoke-virtual {p2, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 62
    .local v3, "server1":Ljava/lang/String;
    const-string v6, "XTRA_SERVER_2"

    invoke-virtual {p2, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 63
    .local v4, "server2":Ljava/lang/String;
    const-string v6, "XTRA_SERVER_3"

    invoke-virtual {p2, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 64
    .local v5, "server3":Ljava/lang/String;
    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 65
    :cond_0
    if-eqz v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 66
    :cond_1
    if-eqz v5, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 68
    :cond_2
    if-nez v0, :cond_3

    .line 69
    const-string v6, "GpsXtraDownloader"

    const-string v7, "No XTRA servers were specified in the GPS configuration"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :goto_0
    return-void

    .line 72
    :cond_3
    new-array v6, v0, [Ljava/lang/String;

    iput-object v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    .line 73
    const/4 v0, 0x0

    .line 74
    if-eqz v3, :cond_6

    iget-object v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "count":I
    .local v1, "count":I
    aput-object v3, v6, v0

    .line 75
    :goto_1
    if-eqz v4, :cond_4

    iget-object v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    aput-object v4, v6, v1

    move v1, v0

    .line 76
    .end local v0    # "count":I
    .restart local v1    # "count":I
    :cond_4
    if-eqz v5, :cond_5

    iget-object v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    aput-object v5, v6, v1

    .line 79
    :goto_2
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 80
    .local v2, "random":Ljava/util/Random;
    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    iput v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    goto :goto_0

    .end local v0    # "count":I
    .end local v2    # "random":Ljava/util/Random;
    .restart local v1    # "count":I
    :cond_5
    move v0, v1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_2

    :cond_6
    move v1, v0

    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_1
.end method

.method protected static doDownload(Ljava/lang/String;ZLjava/lang/String;I)[B
    .locals 16
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "isProxySet"    # Z
    .param p2, "proxyHost"    # Ljava/lang/String;
    .param p3, "proxyPort"    # I

    .prologue
    .line 115
    const/4 v3, 0x0

    .line 118
    .local v3, "client":Landroid/net/http/AndroidHttpClient;
    :try_start_0
    const-string v11, "Android"

    .line 119
    .local v11, "userAgent":Ljava/lang/String;
    const-string v12, "sprint"

    const-string v13, "ro.carrier"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 120
    invoke-static {v11}, Lcom/android/server/location/GpsXtraDownloader;->loadUserAgent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 122
    :cond_0
    invoke-static {v11}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v3

    .line 124
    new-instance v8, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 126
    .local v8, "req":Lorg/apache/http/client/methods/HttpUriRequest;
    if-eqz p1, :cond_1

    .line 127
    new-instance v7, Lorg/apache/http/HttpHost;

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v7, v0, v1}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 128
    .local v7, "proxy":Lorg/apache/http/HttpHost;
    invoke-interface {v8}, Lorg/apache/http/client/methods/HttpUriRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v12

    invoke-static {v12, v7}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    .line 131
    .end local v7    # "proxy":Lorg/apache/http/HttpHost;
    :cond_1
    const-string v12, "Accept"

    const-string v13, "*/*, application/vnd.wap.mms-message, application/vnd.wap.sic"

    invoke-interface {v8, v12, v13}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v12, "x-wap-profile"

    const-string v13, "http://www.openmobilealliance.org/tech/profiles/UAPROF/ccppschema-20021212#"

    invoke-interface {v8, v12, v13}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {v3, v8}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 140
    .local v9, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    .line 141
    .local v10, "status":Lorg/apache/http/StatusLine;
    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result v12

    const/16 v13, 0xc8

    if-eq v12, v13, :cond_3

    .line 143
    const/4 v2, 0x0

    .line 173
    if-eqz v3, :cond_2

    .line 174
    :goto_0
    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 177
    .end local v8    # "req":Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v9    # "response":Lorg/apache/http/HttpResponse;
    .end local v10    # "status":Lorg/apache/http/StatusLine;
    .end local v11    # "userAgent":Ljava/lang/String;
    :cond_2
    :goto_1
    return-object v2

    .line 146
    .restart local v8    # "req":Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v9    # "response":Lorg/apache/http/HttpResponse;
    .restart local v10    # "status":Lorg/apache/http/StatusLine;
    .restart local v11    # "userAgent":Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v6

    .line 147
    .local v6, "entity":Lorg/apache/http/HttpEntity;
    const/4 v2, 0x0

    .line 148
    .local v2, "body":[B
    if-eqz v6, :cond_5

    .line 150
    :try_start_2
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-lez v12, :cond_4

    .line 151
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v12

    long-to-int v12, v12

    new-array v2, v12, [B

    .line 152
    new-instance v4, Ljava/io/DataInputStream;

    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v4, v12}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 154
    .local v4, "dis":Ljava/io/DataInputStream;
    :try_start_3
    invoke-virtual {v4, v2}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 157
    :try_start_4
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 164
    .end local v4    # "dis":Ljava/io/DataInputStream;
    :cond_4
    :goto_2
    if-eqz v6, :cond_5

    .line 165
    :try_start_5
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 173
    :cond_5
    if-eqz v3, :cond_2

    goto :goto_0

    .line 156
    .restart local v4    # "dis":Ljava/io/DataInputStream;
    :catchall_0
    move-exception v12

    .line 157
    :try_start_6
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 156
    :goto_3
    :try_start_7
    throw v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 164
    .end local v4    # "dis":Ljava/io/DataInputStream;
    :catchall_1
    move-exception v12

    if-eqz v6, :cond_6

    .line 165
    :try_start_8
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 164
    :cond_6
    throw v12
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 170
    .end local v2    # "body":[B
    .end local v6    # "entity":Lorg/apache/http/HttpEntity;
    .end local v8    # "req":Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v9    # "response":Lorg/apache/http/HttpResponse;
    .end local v10    # "status":Lorg/apache/http/StatusLine;
    .end local v11    # "userAgent":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 173
    if-eqz v3, :cond_7

    .line 174
    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 177
    :cond_7
    const/4 v2, 0x0

    goto :goto_1

    .line 173
    :catchall_2
    move-exception v12

    if-eqz v3, :cond_8

    .line 174
    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 173
    :cond_8
    throw v12

    .line 158
    .restart local v2    # "body":[B
    .restart local v4    # "dis":Ljava/io/DataInputStream;
    .restart local v6    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v8    # "req":Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v9    # "response":Lorg/apache/http/HttpResponse;
    .restart local v10    # "status":Lorg/apache/http/StatusLine;
    .restart local v11    # "userAgent":Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 159
    .local v5, "e":Ljava/io/IOException;
    :try_start_9
    const-string v13, "GpsXtraDownloader"

    const-string v14, "Unexpected IOException."

    invoke-static {v13, v14, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 158
    .end local v5    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v5

    .line 159
    .restart local v5    # "e":Ljava/io/IOException;
    const-string v12, "GpsXtraDownloader"

    const-string v13, "Unexpected IOException."

    invoke-static {v12, v13, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_2
.end method

.method private static loadUserAgent(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "currentAgent"    # Ljava/lang/String;

    .prologue
    .line 185
    const-string v3, "persist.sprint.lbs.useragent"

    invoke-static {v3, p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, "userAgent":Ljava/lang/String;
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 191
    .end local p0    # "currentAgent":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 189
    .restart local p0    # "currentAgent":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy_MM_dd"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 190
    .local v1, "from":Ljava/text/SimpleDateFormat;
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "date":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method downloadXtraData()[B
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 85
    iget-object v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "proxyHost":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v1

    .line 87
    .local v1, "proxyPort":I
    if-eqz v0, :cond_0

    const/4 v6, -0x1

    if-eq v1, v6, :cond_0

    const/4 v4, 0x1

    .line 88
    .local v4, "useProxy":Z
    :goto_0
    const/4 v2, 0x0

    .line 89
    .local v2, "result":[B
    iget v3, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    .line 91
    .local v3, "startIndex":I
    iget-object v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    if-nez v6, :cond_1

    .line 92
    const/4 v5, 0x0

    .line 108
    :goto_1
    return-object v5

    .end local v2    # "result":[B
    .end local v3    # "startIndex":I
    .end local v4    # "useProxy":Z
    :cond_0
    move v4, v5

    .line 87
    goto :goto_0

    .line 96
    .restart local v2    # "result":[B
    .restart local v3    # "startIndex":I
    .restart local v4    # "useProxy":Z
    :cond_1
    if-nez v2, :cond_3

    .line 97
    iget-object v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    iget v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    aget-object v6, v6, v7

    invoke-static {v6, v4, v0, v1}, Lcom/android/server/location/GpsXtraDownloader;->doDownload(Ljava/lang/String;ZLjava/lang/String;I)[B

    move-result-object v2

    .line 100
    iget v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    .line 101
    iget v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    iget-object v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    array-length v7, v7

    if-ne v6, v7, :cond_2

    .line 102
    iput v5, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    .line 105
    :cond_2
    iget v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    if-ne v6, v3, :cond_1

    :cond_3
    move-object v5, v2

    .line 108
    goto :goto_1
.end method
