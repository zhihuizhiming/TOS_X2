.class Lcom/android/server/ConnectivityService$InternetDetection$InternetDetectThread;
.super Ljava/lang/Thread;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService$InternetDetection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InternetDetectThread"
.end annotation


# static fields
.field private static final SOCKET_TIMEOUT_MS:I = 0x2710


# instance fields
.field final mNetworkType:I

.field final mSeq:I

.field final mTraget:Ljava/lang/String;

.field final synthetic this$1:Lcom/android/server/ConnectivityService$InternetDetection;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService$InternetDetection;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p2, "threadName"    # Ljava/lang/String;
    .param p3, "networkType"    # I
    .param p4, "targetServer"    # Ljava/lang/String;
    .param p5, "seq"    # I

    .prologue
    .line 6032
    iput-object p1, p0, Lcom/android/server/ConnectivityService$InternetDetection$InternetDetectThread;->this$1:Lcom/android/server/ConnectivityService$InternetDetection;

    .line 6033
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 6034
    iput-object p4, p0, Lcom/android/server/ConnectivityService$InternetDetection$InternetDetectThread;->mTraget:Ljava/lang/String;

    .line 6035
    iput p3, p0, Lcom/android/server/ConnectivityService$InternetDetection$InternetDetectThread;->mNetworkType:I

    .line 6036
    iput p5, p0, Lcom/android/server/ConnectivityService$InternetDetection$InternetDetectThread;->mSeq:I

    .line 6037
    return-void
.end method

.method private detectInternet(Ljava/net/InetAddress;)Lcom/android/server/ConnectivityService$InternetDetection$DetectionResult;
    .locals 13
    .param p1, "server"    # Ljava/net/InetAddress;

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 6092
    const/4 v8, 0x0

    .line 6093
    .local v8, "urlConnection":Ljava/net/HttpURLConnection;
    const-wide/16 v3, -0x1

    .line 6095
    .local v3, "requestTimestamp":J
    :try_start_0
    new-instance v7, Ljava/net/URL;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "http://"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, "/generate_204"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 6096
    .local v7, "url":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v8, v0

    .line 6097
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 6098
    const/16 v9, 0x2710

    invoke-virtual {v8, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 6099
    const/16 v9, 0x2710

    invoke-virtual {v8, v9}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 6100
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 6102
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    .line 6105
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 6106
    .local v6, "rspCode":I
    const/16 v9, 0xcc

    if-eq v6, v9, :cond_2

    move v2, v10

    .line 6107
    .local v2, "isCaptivePortal":Z
    :goto_0
    new-instance v5, Lcom/android/server/ConnectivityService$InternetDetection$DetectionResult;

    iget-object v9, p0, Lcom/android/server/ConnectivityService$InternetDetection$InternetDetectThread;->this$1:Lcom/android/server/ConnectivityService$InternetDetection;

    invoke-direct {v5, v9}, Lcom/android/server/ConnectivityService$InternetDetection$DetectionResult;-><init>(Lcom/android/server/ConnectivityService$InternetDetection;)V

    .line 6108
    .local v5, "result":Lcom/android/server/ConnectivityService$InternetDetection$DetectionResult;
    if-eqz v2, :cond_3

    move v9, v10

    :goto_1
    iput v9, v5, Lcom/android/server/ConnectivityService$InternetDetection$DetectionResult;->result:I

    .line 6111
    if-eqz v2, :cond_0

    .line 6112
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/ConnectivityService$InternetDetection$InternetDetectThread;->extractLocationFromHeaderFields(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lcom/android/server/ConnectivityService$InternetDetection$DetectionResult;->location:Ljava/lang/String;

    .line 6114
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "location="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Lcom/android/server/ConnectivityService$InternetDetection$DetectionResult;->location:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v9}, Lcom/android/server/ConnectivityService;->access$300(Ljava/lang/String;)V

    .line 6116
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isCaptivePortal: ret="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " rspCode="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v9}, Lcom/android/server/ConnectivityService;->access$300(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6122
    if-eqz v8, :cond_1

    .line 6123
    .end local v2    # "isCaptivePortal":Z
    .end local v5    # "result":Lcom/android/server/ConnectivityService$InternetDetection$DetectionResult;
    .end local v6    # "rspCode":I
    .end local v7    # "url":Ljava/net/URL;
    :goto_2
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 6120
    :cond_1
    return-object v5

    .restart local v6    # "rspCode":I
    .restart local v7    # "url":Ljava/net/URL;
    :cond_2
    move v2, v11

    .line 6106
    goto :goto_0

    .restart local v2    # "isCaptivePortal":Z
    .restart local v5    # "result":Lcom/android/server/ConnectivityService$InternetDetection$DetectionResult;
    :cond_3
    move v9, v11

    .line 6108
    goto :goto_1

    .line 6118
    .end local v2    # "isCaptivePortal":Z
    .end local v5    # "result":Lcom/android/server/ConnectivityService$InternetDetection$DetectionResult;
    .end local v6    # "rspCode":I
    .end local v7    # "url":Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 6119
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "detectCaptiveProtal: exception "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v9}, Lcom/android/server/ConnectivityService;->access$300(Ljava/lang/String;)V

    .line 6120
    new-instance v5, Lcom/android/server/ConnectivityService$InternetDetection$DetectionResult;

    iget-object v9, p0, Lcom/android/server/ConnectivityService$InternetDetection$InternetDetectThread;->this$1:Lcom/android/server/ConnectivityService$InternetDetection;

    invoke-direct {v5, v9}, Lcom/android/server/ConnectivityService$InternetDetection$DetectionResult;-><init>(Lcom/android/server/ConnectivityService$InternetDetection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6122
    if-eqz v8, :cond_1

    goto :goto_2

    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    if-eqz v8, :cond_4

    .line 6123
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 6122
    :cond_4
    throw v9
.end method

.method private lookupHost(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 8
    .param p1, "hostname"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 6075
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 6080
    .local v4, "inetAddress":[Ljava/net/InetAddress;
    move-object v1, v4

    .local v1, "arr$":[Ljava/net/InetAddress;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, v1, v3

    .line 6081
    .local v0, "a":Ljava/net/InetAddress;
    instance-of v7, v0, Ljava/net/Inet4Address;

    if-eqz v7, :cond_0

    .line 6084
    .end local v0    # "a":Ljava/net/InetAddress;
    .end local v1    # "arr$":[Ljava/net/InetAddress;
    .end local v3    # "i$":I
    .end local v4    # "inetAddress":[Ljava/net/InetAddress;
    .end local v5    # "len$":I
    :goto_1
    return-object v0

    .line 6076
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/net/UnknownHostException;
    move-object v0, v6

    .line 6077
    goto :goto_1

    .line 6080
    .end local v2    # "e":Ljava/net/UnknownHostException;
    .restart local v0    # "a":Ljava/net/InetAddress;
    .restart local v1    # "arr$":[Ljava/net/InetAddress;
    .restart local v3    # "i$":I
    .restart local v4    # "inetAddress":[Ljava/net/InetAddress;
    .restart local v5    # "len$":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0    # "a":Ljava/net/InetAddress;
    :cond_1
    move-object v0, v6

    .line 6084
    goto :goto_1
.end method


# virtual methods
.method extractLocationFromHeaderFields(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 6087
    .local p1, "fields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v1, "location"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 6088
    .local v0, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 6039
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "InternetDetectThread:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/ConnectivityService$InternetDetection$InternetDetectThread;->mSeq:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": server:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternetDetection$InternetDetectThread;->mTraget:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/ConnectivityService$InternetDetection$InternetDetectThread;->mNetworkType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->access$300(Ljava/lang/String;)V

    .line 6041
    new-instance v1, Lcom/android/server/ConnectivityService$InternetDetection$DetectionResult;

    iget-object v5, p0, Lcom/android/server/ConnectivityService$InternetDetection$InternetDetectThread;->this$1:Lcom/android/server/ConnectivityService$InternetDetection;

    invoke-direct {v1, v5}, Lcom/android/server/ConnectivityService$InternetDetection$DetectionResult;-><init>(Lcom/android/server/ConnectivityService$InternetDetection;)V

    .line 6042
    .local v1, "ret":Lcom/android/server/ConnectivityService$InternetDetection$DetectionResult;
    iget-object v5, p0, Lcom/android/server/ConnectivityService$InternetDetection$InternetDetectThread;->this$1:Lcom/android/server/ConnectivityService$InternetDetection;

    iget-object v5, v5, Lcom/android/server/ConnectivityService$InternetDetection;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v5}, Lcom/android/server/ConnectivityService;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 6043
    .local v0, "activeNetInf":Landroid/net/NetworkInfo;
    if-nez v0, :cond_0

    .line 6044
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InternetDetectThread:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/ConnectivityService$InternetDetection$InternetDetectThread;->mSeq:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": Not ActiveNetworkInfo"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->access$300(Ljava/lang/String;)V

    .line 6045
    iget-object v4, p0, Lcom/android/server/ConnectivityService$InternetDetection$InternetDetectThread;->this$1:Lcom/android/server/ConnectivityService$InternetDetection;

    iget v5, p0, Lcom/android/server/ConnectivityService$InternetDetection$InternetDetectThread;->mNetworkType:I

    iget v6, p0, Lcom/android/server/ConnectivityService$InternetDetection$InternetDetectThread;->mSeq:I

    invoke-virtual {v4, v5, v6, v1}, Lcom/android/server/ConnectivityService$InternetDetection;->setInternetDetectRet(IILcom/android/server/ConnectivityService$InternetDetection$DetectionResult;)V

    .line 6071
    :goto_0
    return-void

    .line 6048
    :cond_0
    iget-object v5, p0, Lcom/android/server/ConnectivityService$InternetDetection$InternetDetectThread;->mTraget:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/ConnectivityService$InternetDetection$InternetDetectThread;->lookupHost(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    .line 6049
    .local v2, "server":Ljava/net/InetAddress;
    if-eqz v2, :cond_2

    .line 6050
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    iget v5, p0, Lcom/android/server/ConnectivityService$InternetDetection$InternetDetectThread;->mNetworkType:I

    if-eq v4, v5, :cond_1

    .line 6051
    iget-object v4, p0, Lcom/android/server/ConnectivityService$InternetDetection$InternetDetectThread;->this$1:Lcom/android/server/ConnectivityService$InternetDetection;

    iget-object v4, v4, Lcom/android/server/ConnectivityService$InternetDetection;->this$0:Lcom/android/server/ConnectivityService;

    iget v5, p0, Lcom/android/server/ConnectivityService$InternetDetection$InternetDetectThread;->mNetworkType:I

    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/ConnectivityService;->requestRouteToHostAddress(I[BLjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 6053
    iget-object v4, p0, Lcom/android/server/ConnectivityService$InternetDetection$InternetDetectThread;->this$1:Lcom/android/server/ConnectivityService$InternetDetection;

    iget v5, p0, Lcom/android/server/ConnectivityService$InternetDetection$InternetDetectThread;->mNetworkType:I

    iget v6, p0, Lcom/android/server/ConnectivityService$InternetDetection$InternetDetectThread;->mSeq:I

    invoke-virtual {v4, v5, v6, v1}, Lcom/android/server/ConnectivityService$InternetDetection;->setInternetDetectRet(IILcom/android/server/ConnectivityService$InternetDetection$DetectionResult;)V

    goto :goto_0

    .line 6057
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InternetDetectThread:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/ConnectivityService$InternetDetection$InternetDetectThread;->mSeq:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": get server:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->access$300(Ljava/lang/String;)V

    .line 6059
    iget-object v4, p0, Lcom/android/server/ConnectivityService$InternetDetection$InternetDetectThread;->this$1:Lcom/android/server/ConnectivityService$InternetDetection;

    iget v5, p0, Lcom/android/server/ConnectivityService$InternetDetection$InternetDetectThread;->mNetworkType:I

    iget v6, p0, Lcom/android/server/ConnectivityService$InternetDetection$InternetDetectThread;->mSeq:I

    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService$InternetDetection$InternetDetectThread;->detectInternet(Ljava/net/InetAddress;)Lcom/android/server/ConnectivityService$InternetDetection$DetectionResult;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/ConnectivityService$InternetDetection;->setInternetDetectRet(IILcom/android/server/ConnectivityService$InternetDetection$DetectionResult;)V

    goto :goto_0

    .line 6061
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "InternetDetectThread:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/ConnectivityService$InternetDetection$InternetDetectThread;->mSeq:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": Not get server IP on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->access$300(Ljava/lang/String;)V

    .line 6063
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    iget v6, p0, Lcom/android/server/ConnectivityService$InternetDetection$InternetDetectThread;->mNetworkType:I

    if-ne v5, v6, :cond_4

    const/4 v3, 0x1

    .line 6064
    .local v3, "targetNetworkError":Z
    :goto_1
    if-nez v3, :cond_3

    .line 6065
    iput v4, v1, Lcom/android/server/ConnectivityService$InternetDetection$DetectionResult;->result:I

    .line 6067
    :cond_3
    iget-object v4, p0, Lcom/android/server/ConnectivityService$InternetDetection$InternetDetectThread;->this$1:Lcom/android/server/ConnectivityService$InternetDetection;

    iget v5, p0, Lcom/android/server/ConnectivityService$InternetDetection$InternetDetectThread;->mNetworkType:I

    iget v6, p0, Lcom/android/server/ConnectivityService$InternetDetection$InternetDetectThread;->mSeq:I

    invoke-virtual {v4, v5, v6, v1}, Lcom/android/server/ConnectivityService$InternetDetection;->setInternetDetectRet(IILcom/android/server/ConnectivityService$InternetDetection$DetectionResult;)V

    goto/16 :goto_0

    .end local v3    # "targetNetworkError":Z
    :cond_4
    move v3, v4

    .line 6063
    goto :goto_1
.end method
